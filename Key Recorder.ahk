#SingleInstance Force

SetBatchLines, -1

+>Ins::

ToolTip, Gravação iniciada...

replayLigado := true
fimGravacao := true
fimTecla := false
teclas := []

SetTimer, key, 0
return

key:
Input, tecla, V L1, {Space}{BackSpace}{Tab}{Enter}{Delete}
envia := InStr(ErrorLevel, "EndKey") ? RegExReplace(ErrorLevel, "EndKey:(.*)", "$1") : tecla
if (!fimTecla)
{
	ToolTip % envia
	teclas.Push("{" . envia . "}")
}
return

#if fimGravacao = true

+>Home::
fimTecla := true
fimGravacao = false
MsgBox, 64, Sucesso, Gravação concluída!
SetTimer, key, Off
ToolTip
return

#if replayLigado = true

+>PgUp::
InputBox, repeticao, Replay, Número de repetições,, 200, 130
if (!ErrorLevel)
{
	if repeticao is Integer
	{
		ToolTip, Reproduzindo gravação...
		Loop % repeticao
		{
			Loop % teclas.Length()
			{
				Send % teclas[A_Index]
				;Sleep, 100
			}
		}
	}
	else
	{
		Loop % teclas.Length()
		{
			Send % teclas[A_Index]
			;Sleep, 100
		}
	}
}
ToolTip
return

#if fimGravacao = true

~$F1::
ToolTip, F1
teclas.Push("{F1}")
return

~$F2::
ToolTip, F2
teclas.Push("{F2}")
return

~$F3::
ToolTip, F3
teclas.Push("{F3}")
return

~$F4::
ToolTip, F4
teclas.Push("{F4}")
return

~$F5::
ToolTip, F5
teclas.Push("{F5}")
return

~$F6::
ToolTip, F6
teclas.Push("{F6}")
return

~$F7::
ToolTip, F7
teclas.Push("{F7}")
return

~$F8::
ToolTip, F8
teclas.Push("{F8}")
return

~$F9::
ToolTip, F9
teclas.Push("{F9}")
return

~$F10::
ToolTip, F10
teclas.Push("{F10}")
return

~$F11::
ToolTip, F11
teclas.Push("{F11}")
return

~$F12::
ToolTip, F12
teclas.Push("{F12}")
return

~$Home::
ToolTip, Home
teclas.Push("{Home}")
return

~$End::
ToolTip, End
teclas.Push("{End}")
return

~$Up::
ToolTip, Up
teclas.Push("{Up}")
return

~$Down::
ToolTip, Down
teclas.Push("{Down}")
return

~$Left::
ToolTip, Left
teclas.Push("{Left}")
return

~$Right::
ToolTip, Right
teclas.Push("{Right}")
return

~Shift & ~Up::
ToolTip, Shift + Up
teclas.Push("{Shift Down}{Up}{ShiftUp}")
return

~Shift & ~Down::
ToolTip, Shift + Down
teclas.Push("{Shift Down}{Down}{ShiftUp}")
return

~+~Left::
ToolTip, Shift + Left
teclas.Push("{Shift Down}{Left}{Shift Up}")
return

~+~Right::
ToolTip, Shift + Right
teclas.Push("{Shift Down}{Right}{Shift Up}")
return

~Ctrl & ~a::
ToolTip, Ctrl + A
teclas.Push("{Ctrl Down}{a}{Ctrl Up}")
return

~Ctrl & ~c::
ToolTip, Ctrl + C
teclas.Push("{Ctrl Down}{c}{Ctrl Up}")
return

~Ctrl & ~v::
ToolTip, Ctrl + V
teclas.Push("{Ctrl Down}{v}{Ctrl Up}")
return

~Ctrl & ~x::
ToolTip, Ctrl + X
teclas.Push("{Ctrl Down}{x}{Ctrl Up}")
return

~^~Left::
ToolTip, Ctrl + Left
teclas.Push("{Ctrl Down}{Left}{Ctrl Up}")
return

~^~Right::
ToolTip, Ctrl + Right
teclas.Push("{Ctrl Down}{Right}{Ctrl Up}")
return

#if fimGravacao = true && GetKeyState("Ctrl", "P") && GetKeyState("Shift", "P")

~$*Left::
ToolTip, Ctrl + Shift + Left
teclas.Push("{Ctrl Down}{Shift Down}{Left}{Ctrl Up}{Shift Up}")
return

~$*Right::
ToolTip, Ctrl + Shift + Right
teclas.Push("{Ctrl Down}{Shift Down}{Right}{Ctrl Up}{Shift Up}")
return

~$*F1::
ToolTip, F1
teclas.Push("{F1}")
return

~$*F2::
ToolTip, F2
teclas.Push("{F2}")
return

~$*F3::
ToolTip, F3
teclas.Push("{F3}")
return

~$*F4::
ToolTip, F4
teclas.Push("{F4}")
return

~$*F5::
ToolTip, F5
teclas.Push("{F5}")
return

~$*F6::
ToolTip, F6
teclas.Push("{F6}")
return

~$*F7::
ToolTip, F7
teclas.Push("{F7}")
return

~$*F8::
ToolTip, F8
teclas.Push("{F8}")
return

~$*F9::
ToolTip, F9
teclas.Push("{F9}")
return

~$*F10::
ToolTip, F10
teclas.Push("{F10}")
return

~$*F11::
ToolTip, F11
teclas.Push("{F11}")
return

~$*F12::
ToolTip, F12
teclas.Push("{F12}")
return

~$*Home::
ToolTip, Ctrl + Shift + Home
teclas.Push("{Ctrl Down}{Shift Down}{Home}{Ctrl Up}{Shift Up}")
return

~$*End::
ToolTip, Ctrl + Shift + End
teclas.Push("{Ctrl Down}{Shift Down}{End}{Ctrl Up}{Shift Up}")
return
