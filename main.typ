#import "style.typ": zihao, ziti
#import "utils.typ": *
#import "@preview/cuti:0.2.1": show-cn-fakebold
#import "@preview/numbly:0.1.0": numbly
#import "@preview/itemize:0.1.2" as el

#set heading(
  numbering: numbly(
    "{1}、",
    "{1}.{2} ",
    "{1}.{2}.{3} ",
    "{1}.{2}.{3}.{4} ",
  ),
)
#set heading(hanging-indent: 1.5em)
#show heading: it => {
  show h.where(amount: 0.3em): none
  it
}
#show heading.where(level: 1): set block(above: 2.5em, below: 1.5em)
#show heading.where(level: 2): set block(above: 2em, below: 1.5em)
#show heading.where(level: 3): set block(above: 1.75em, below: 1.5em)
#show heading.where(level: 4): set block(above: 1.5em, below: 1.5em)
#show heading.where(level: 1): set text(font: ziti.fangsong, weight: "bold", size: zihao.xiaosi, top-edge: 3pt)
#show heading.where(level: 2): set text(font: ziti.kaiti, weight: "bold", size: zihao.xiaosi)
#set page(margin: (x: 2.8cm, y: 2.5cm))
#set text(hyphenate: false, font: ziti.songti)
#set par(leading: 1em)
#show: el.default-enum-list
#set enum(body-indent: 1em)
#show: show-cn-fakebold
#show bibliography: set par(hanging-indent: 0em)
#let uline(width, body) = box(body, width: width, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))

#let report-date = datetime(year: 2024, month: 12, day: 30)
#let defense-date = datetime(year: 2025, month: 1, day: 2)
#let info = (
  student_id: "012345678910",
  name: "张三",
  degree: "专业型硕士生 Professional Master Student",
  study_mode: "全日制 Full-time",
  supervisor: "李四",
  title: "一个很长很长的题目",
  school: "上海交通大学",
  major: "电子信息",
  report-date: report-date.display("[year]年[month]月[day]日"),
  defense-date: defense-date.display("[year]年[month]月[day]日"),
  venue: "电院3-326A",
)

#align(
  center,
  image(
    "figures/sjtu-logo.png",
    width: 10cm,
  ),
)

#align(
  center,
  text(
    "研究生学位论文开题报告",
    font: ziti.songti,
    size: zihao.yihao,
    weight: "bold",
  ),
)

#align(
  center,
  text(
    "Graduate Thesis/Dissertation Proposal",
    size: zihao.xiaosan,
    weight: "bold",
  ),
)

#v(38pt)

#set table(stroke: (x, y) => if x == 1 {
  (bottom: 0.5pt + black)
})

#let info-key(zh, en) = (
  text(
    zh,
    font: ziti.kaiti,
    size: zihao.sihao,
    weight: "black",
  )
    + h(0.5em)
    + text(
      en,
      size: zihao.xiaosi,
      weight: "bold",
    )
)

#let info-value(v) = (
  text(
    v,
    font: ziti.fangsong,
    size: zihao.xiaosi,
  )
)

#table(
  align: left,
  columns: (38%, 1fr),
  row-gutter: 1em,
  [#info-key("学号", "Student ID")], [#info-value(info.student_id)],
  [#info-key("姓名", "Name")], [#info-value(info.name)],
  [#info-key("学生类别", "Degree Program")], [#info-value(info.degree)],
  [#info-key("学习形式", "Study Mode")], [#info-value(info.study_mode)],
  [#info-key("导师", "Supervisor(s)")], [#info-value(info.supervisor)],
  [#info-key("论文题目", "Thesis Title")], [#info-value(info.title)],
  [#info-key("学院", "School")], [#info-value(info.school)],
  [#info-key("专业", "Major")], [#info-value(info.major)],
  [#info-key("开题日期", "Date")], [#info-value(info.defense-date)],
  [#info-key("开题地点", "Venue")], [#info-value(info.venue)],
)

#pagebreak()

#align(
  center,
  text(
    "填    报    说    明",
    font: ziti.heiti,
    size: zihao.xiaosan,
    weight: "bold",
  ),
)

#v(1em)

#align(
  center,
  text(
    "Instruction",
    size: zihao.xiaosan,
    weight: "bold",
  ),
)

#v(1em)

#set text(font: ziti.fangsong, size: zihao.xiaosi)
#set par(justify: true)
#let mysjtu-link(it) = {
  underline(text(rgb(0, 0, 255), link("http://my.sjtu.edu.cn/")[#it]))
}

1. 校本部研究生的开题报告应通过#mysjtu-link[数字交大]在线提交申请，填写本表并上传系统。特殊情况下经研究生院事先同意，可不上传系统，并使用《上海交通大学研究生论文开题评审表》完成评审。
  #v(0.2em)
  The application for thesis/dissertation proposal should be submitted online through #mysjtu-link[My SJTU]. The student shall fill this form and upload it in the system. Under special circumstance, this form does not need to be uploaded and the review can be proceeded with the review form with prior consent from the graduate school.
  #v(0.1em)

2. 开题报告为A4大小，于左侧装订成册。各栏空格不够时，请自行加页。考核前提前一周送交导师、评审专家审阅。
  #v(0.2em)
  This form should be printed with A4 papers and bound together on the left. If the space left is not enough, please feel free to add extra pages.The print version shall be sent to the supervisor, and the review committee members for review at least one week before the oral presentation.
  #v(0.1em)

3. 博士生导师可以根据博士生学位论文选题情况自行确定是否进行开题查新，博士学位论文开题查新报告应由查新工作站提供。
  #v(0.2em)
  The supervisor should decide, based on the proposed topics, whether a novelty assessment report is needed or not, which should be conducted by an authorized novelty assessment department.
  #v(0.1em)

4. 开题报告通过后，定稿版开题报告由研究生、导师各存档一份，无需上传系统。
  #v(0.2em)
  Upon passing the proposal, the final version of this report shall be archived by the graduate student and his/her supervisors for future reference.
  #v(0.1em)

5. 医学院研究生如果以函评形式开题，开题地点请填写“函评”，专家组组长签名由导师签名。
  #v(0.2em)
  For students in the School of Medicine, if the dissertation proposal is conducted via peer review, the “Proposal venue” shall be filled with “peer review” and the “Signature of Committee Chair” shall be signed by the supervisor.
  #v(0.1em)

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
#set par(justify: false)

#align(
  center,
  table(
    align: left + horizon,
    columns: (22%, 1fr),
    stroke: 0.5pt + black,
    inset: (y: 10pt),
    [论文题目 Proposed Title], [#info.title],
    [研究课题来源 Source of Research Project],
    [
      请在合适选项前画 $checkmark$ Please select proper options by $checkmark$.

      $square$ 国家自然科学基金课题 NSFC Research Grants

      $square$ 国家社会科学基金 National Social Science Fund of China

      $square$ 国家重大科研专项 National Key Research Projects

      $square$ 其它纵向科研课题 Other Governmental Research Grants

      #checkbox 企业横向课题 R&D Projects from Industry

      $square$ 自拟课题 Self-proposed Project

      $square$ 其它 Other $med$ #uline(17em)[$med$ 在此处填写内容]
    ],
  ),
)

#set text(font: ziti.kaiti, size: zihao.xiaosi)
#show heading: set par(leading: 1em)
#set par(
  leading: 1.25em,
  first-line-indent: (amount: 3.5em, all: true),
  spacing: 1.25em,
  hanging-indent: 1.5em,
  justify: true,
)
#set enum(indent: 1.75em)
#show enum: set par(hanging-indent: 0em)
#set list(indent: 2.65em)
#show list: set par(hanging-indent: 0em)

= 请综述课题国内外研究进展、现状、挑战与意义，可分节描述。博士生不少于10,000汉字，硕士生不少于5,000汉字。请在文中标注参考文献。 Please review the frontier, current status, challenges and significance of the research topic. The citations should be marked in the context and listed in order at the end of this section. No less than 8,000 words for doctoral students and 4,000 words for master students if written in English.

让我来综述一下课题国内外研究进展、现状、挑战与意义。这里要写好多好多字，博士生要写一万字，硕士生要写五千字，所以我们要多引用一些文献来达到字数要求。让我们写一点数学公式 $c^2 = a^2 + b^2$。

== 国内外研究进展

有一些进展。@pourreza_dts-sql_2024

== 现状

现状不乐观。@liu_survey_2024

== 挑战

挑战很严峻。

== 意义

非常有意义。

#bibliography("ref.bib", title: h(1.5em) + "参考文献 Reference：", style: "gb-7714-2015-numeric")

= 课题研究目标、主要研究内容和拟解决的关键问题。Research objectives, main contents and key issues to be solved.

目标很明确，研究内容很丰富，关键问题很关键。

= 拟采取的研究方法、研究方案及其可行性分析。Research methods and research scheme to be adopted and feasibility analysis.

研究方法很复杂，可行性很可行。

= 课题的创新点 Novelties of the proposed topic

太创新了。

= 计划进度、预期成果 Research schedule, and expected outcomes

计划进度很紧凑，预期成果很丰硕。

= 与本课题有关的工作积累、已有的研究工作成绩。Prior experience and accomplished achievements related to the proposed topic.

无。


#set text(font: ziti.fangsong, size: zihao.xiaosi, weight: "bold", top-edge: 3pt)
#set par(leading: 1em, hanging-indent: 0em, first-line-indent: 0em)

#v(5em)

本人承诺：开题报告中的内容真实无误，若有不实，愿承担相应的责任和后果。I hereby declare and confirm that the details provided in this Form are valid and accurate. If anything untruthful found, I will bear the corresponding liabilities and consequences.

#linebreak()

#table(
  columns: (60%, 1fr),
  stroke: none,
  inset: 0em,
  [
    #grid(
      columns: (70%, 1fr),
      [学生签字/Signature of Student：], place(dx: -20pt, dy: -22pt, image("figures/student-sign.png", height: 2.5em)),
    )
  ],
  [日期/Date：#report-date.display()],
)
