
\version "2.20.0"
\language "italiano"

\include "roman_numeral_analysis_tool.ily"

% FORMAT FOR A4 and US Letter / FORMAT MIXTE ADAPTÉ POUR A4 ET LETTER US
\paper {
 %paper-height = 279\mm
 %paper-width = 210\mm
 line-width = 180\mm
 between-system-padding = #0.5
 between-system-spacing = #0.5
}

\header {
 title = \markup { \fontsize #1.5 "An die Musik" }
 subtitle = \markup { \fontsize #0.1 \bold "Piano voice" }
}


% PIANO UPPER
pianoHautNoteIntro = \relative do' {
% 1
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>[ <la re la'> <la re la'> <la re la'>] <la dod sol'>[ <la dod sol'> <sol la dod mi> <sol la dod mi>]
}

pianoHautNoteCorps = \relative do {
 \repeat volta 2 {
 
% 3 23
 <fad la re>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]

% 4 24
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <fad re' fad>[ <fad re' fad> <si re fad> <si re fad>]
 r8 <la re fad>[ <la re fad> <la re fad>] r <la dod sol'>[ <la dod sol'> <la dod sol'>]
 r8 <la re fad>[ <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>8[ <la re la'> <la re la'> <la re la'>] <si re si'>[ <si re si'> <si re si'> <si re si'>] \clef bass
 
% 8 28
 r8 <mi, sol dod>[ <mi sol dod> <mi sol dod>] r <re fad re'>[ <re fad re'> <re fad re'>] \clef treble
 r8 <sol la mi'>[ <sol la mi'> <sol la mi'>] r <fad la fad'>[ <fad la fad'> <fad la fad'>]
 <la dod mi>8[ <la dod mi> <la dod la'> <la dod la'>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]

% 12 32
 <re fad la>8[ <re fad la> <dod mi la> <dod mi la>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]
 r8 <la, re fad>[ <la re fad> <la re fad>] <la dod sol'>[ <la dod sol'> <do re la'> <do re la'>]
 r8 <si re si'>[ <si re si'> <si re si'>] r <re fa si>[ <re fa si> <re fa si>]
 
% 16 36
 r8 <re fad! la>[ <re fad la> <re fad la>] r <mi fad dod'>[ <mi fad dod'> <mi sol dod>]
 r8 <re fad re'>[ <re fad re'> <re fad re'>] r <re fa si>[ <re fa si> <re fa si>]
 r8 <re fad! la>[ <re fad la> <re fad la>] r <sol, la dod>[ <sol la dod> <sol la dod>]
 <fad la re>8[ <re' fad re'> <re fad re'> <re fad re'>] <re fad re'>[ <re fad re'> <mi sol dod> <fad la re>]
 
% 20 40
 << { <la dod>8^>[ ^(<sol si>) <re sol si>^. <re sol si>^.] <re sol si>[ <si sol' si> <re sol si> <mi sol si>] } \\
    { re4 } >>
 <sol si>8[( <la, fad' la>) <la fad' la>_. <la fad' la>_.] <la fad' la>[ <la fad' la> <dod fad la> <re fad la>]
 << { <red fad la>8^>[ ^(<mi sol>) <si mi sol>^. <si mi sol>^.] <dod mi sol>^>[ _(<sol la dod mi>) <sol la dod mi>_. <sol la dod mi>_.] } \\
    { si4 } >>
 } % end repeat
}

pianoHautNotePart = {
 \clef treble
 \time 2/2
 \key re \major
%  \set autoBeaming = ##f
 \pianoHautNoteIntro \pianoHautNoteCorps
}

% PIANO BASS
pianoBasNoteIntro = \relative do {

% 1
 r4 la( re) re^.
 fad,2 la4-. la,-.
}

pianoBasNoteCorps = \relative do, {
 \repeat volta 2 {

% 3 23
 re4 r r2

% 4 24
 r4 fad( si) sold-.
 la4 r la r
 re4^. la( re) re^.
 fad,2(sol)

% 8 28
 la4( lad si2)
 dod( re)
 la4( la' sold sol)
 fad4( re dod la)

% 12 32
 re4( la8[ la'] sold4 sol)
 fad4(re dod4. la8)
 re2( mi4 fad)
 sol2( sold)

% 16 36
 la2( lad)
 si2( sold)
 la2( la,)
 re4 r r2

% 20 40
 <sol,, sol'>2 r8 sol'-.[ si-. dod-.]
 <re, re'>2 r8 re'^.[ mi^. fad^.]
 <sol, sol'>2 la
 } % end repeat
}


pianoBasNotePart = {
 \clef bass
 \time 2/2
 \key re \major
 \set autoBeaming = ##f
%  \pianoBasNoteIntro \pianoBasNoteCorps \pianoBasNoteFin
 \pianoBasNoteIntro \pianoBasNoteCorps
}


analysis = \lyricmode {
  \override LyricText.self-alignment-X = #-0.6
  % \offset StanzaNumber.X-offset #-3
  \set stanza  = #"D:"
  % For bare Roman numerals, \rN simply outputs the string.
  Ic
  ""
  ""
  ""
  ""
  ""
  ""
  ""
  Ib
  ""
  ""
  ""
  \markup \rN { V 7 }
  ""
  \markup \rN { V 7 }
  ""
  I
  Ic
  ""
  ""
  ""
  ""
  ""
  ""
  ""
  ""
  ""
  ""
  vi
  ""
  \markup \rN { vii o 7 / V }
  ""
  Ic
  ""
  ""
  \markup \rN { V 7 }
  ""
  ""
  Ic
  ""
  ""
  ""
  ""
  ""
  ""
  Ib
  ""
  ""
  ""
  IV
  ""
  ""
  ""
  \markup \rN { viib o }
  \markup \rN { vii o / vi }
  ""
  ""
  \markup \rN { V 7 / V }
  ""
  \markup \rN { Vd 7 }
  ""
  ""
  I % ?
  ""
  ""
  V
  ""
  V
  ""
  "-"
  ""
  \markup \rN { Vd 7 }
  ""
  Ib
  ""
  I
  ""
  \markup \rN { Vb 7 }
  ""
  \markup \rN { V 7 }
  ""
  I
  ""
  V
  ""
  "-"
  ""
  "-"
  ""
  Ib
  I
  ""
  ""
  \markup \rN { Vb 7 }
  \markup \rN { Vc 7 }
  ""
  \markup \rN { V 7 }
  ""
  ""
  ""
  ""
  ""
  ""
  ""
  IV
  ""
  ""
  \markup \rN { ic o 7 }
  ""
  ""
  Ic
  ""
  ""
  \markup \rN { Vb 7 / vi }
  % \markup \rN { IV 6 }
  % \markup \rN { ii h 4 3 }
  % \markup \rN { Fr +6 }
  % \markup \rN { I 6 4 }
  % \markup \rN { vii o 7 / vi }
}

\score {
 <<
  % \new Voice = "mel" << \meloNotePart >>
  % \new Lyrics \lyricsto "mel" \poemeUn
  % \new Lyrics \lyricsto "mel" \poemeDeux
  \new PianoStaff <<
    \override Score.BarNumber.break-visibility = ##(#f #t #t)
	  \new Voice = "up" << \pianoHautNotePart >>
    \new Lyrics \with {
    } \lyricsto "up" { \analysis }
      
  %  \new Dynamics = "dynamics" \pianoDynPart
   \new Staff = "down" << \pianoBasNotePart >>
  >>
 >>
}


  % \new Staff <<
  %   \new Voice = "bass" { \bassline }
  %   \new Lyrics \with {
  %     % to control distance of analysis from staff
  %     \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 6.5))
  %   } \lyricsto "bass" { \analysis }
  % >>


