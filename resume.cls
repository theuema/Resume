% Intro Options
\ProvidesClass{resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
% geometry & Margin
\usepackage[hmargin=1cm, vmargin=0.75cm, rmargin=1cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
% Is for creating a Title with Name and Contact Data
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\textwidth}{0.4pt}}
\vspace{-15pt}
}

% Title Command
% Is for creating a Title with Picture, Name and Contact Data
\usepackage[export]{adjustbox}
\newcommand{\titlesection}[4]{
\begin{minipage}[t]{0.33\textwidth} 
	\begin{adjustbox}{valign=c}
		\centering
		\noindent\includegraphics[width=3cm]{#3}
	\end{adjustbox}
\end{minipage}\quad %for a bigger space between minipages
\begin{minipage}[t]{0.66\textwidth} 
	%\centering{
	\fontsize{40pt}{60pt}
	\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
	\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
	%} \\ [10pt]
	\\ [10pt]
	%\centering{
	\color{headings}
	\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #4
	%}
	\vspace{15pt}
\end{minipage}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
%\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\section}{0pt}{0pt}{11pt} %plus 2pt minus 2pt}
%\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{5pt plus 2pt minus 2pt}
\newcommand{\sectionsep}{\vspace{11pt}}
\newcommand{\medsep}{\vspace{4pt}}
\newcommand{\smallsep}{\vspace{2pt}}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}
%todo: \scshape no sc shape for lato?

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\uppercase}{}{0em}{}
%todo: \bfseries no bold shape for lato?
\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\uppercase {#1} \normalfont}
%todo: \bfseries no bold shape for lato?

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\ } \normalfont}%todo: \scshape no sc shape for lato?

% sheader command
\newcommand{\sheader}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1 \\ \smallsep} \normalfont}

% Bullet Lists 
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep2pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% graphics
%\usepackage{graphicx}
