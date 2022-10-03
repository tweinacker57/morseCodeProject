//Create a morse code converter to decode seret messages

var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

//Create Morse Code Dictionary

var lettersToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]

var morseText = ""

for element in englishText {
  if let morseChar = lettersToMorse["\(element)"] {
    morseText += morseChar + " "
  }else {
    morseText += "   "
  }
}
print(morseText)

//Add empty strings and empty arrays
var decodedMessage = ""

var morseCodeArray = [String]()

var currMorse = ""

//Create a loop to iterate through morse code and add to morseCodeArray

for char in secretMessage{
  if char != " " {
    currMorse.append(char)
  }else {
    switch currMorse {
      case "":
        currMorse += " "
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}
morseCodeArray.append(currMorse)

//Create empty dictionary to store morse code to letter
var morseToLetter: [String: String] = [:]

//Create loop to loop through empty dictionary
for (letter, morseChar) in morseToLetter {
  morseToLetter[morseChar] = letter
}
// Go through each element in morseCodeArray and find the text value via the morseToLetter dictionary
for morseValue in morseCodeArray {
    if let letterChar = morseToLetter[morseValue]{
        decodedMessage += letterChar
    }
    else {
        decodedMessage += " "
    }
}
print (decodedMessage)

