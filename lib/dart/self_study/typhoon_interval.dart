// ⭐ 태풍의 간격
// 당신은 기상청 데이터 분석가로써 태풍 상륙 간격에 대해 데이터를 만들어야 한다.
// 샘플로 5개의 태풍 상륙일 정보가 주어지면, 다음 태풍이 몇 일 간격으로 발생했는지 일수를 구하는 프로그램을 작성하시오.
// 입력
// 입력은 다음 형식을 따릅니다
// d_1
// d_2
// d_3
// d_4
// d_5
// 5개의 태풍 상륙일을 5행으로 입력 받고 입력의 끝에는 개행이 포함됩니다
// 출력
// 각 태풍의 직전 태풍과의 간격일수를 다음 형식으로 표시합니다.
// g_1
// g_2
// g_3
// g_4
// 출력은 4행입니다.
// 마지막 줄은 개행을 포함하고, 이외의 불필요한 공백이나 개행은 포함하지 않습니다. 입력 예1
// 5
// 8
// 19
// 25
// 31
// 출력 예1

// 3
// 11
// 6
// 6
// 입력 예2
// 2
// 3
// 7
// 9
// 28
// 출력 예2
// 1
// 4
// 2
// 19

import 'dart:io';

void main() {
  List<int> typhoonDays = [];

  for (int i = 0; i < 5; i++) {
    int typhoonDay = int.parse(stdin.readLineSync());
    typhoonDays.add(typhoonDay);
  }

  typhoonInterval(typhoonDays);
}

void typhoonInterval(List<int> days) {
  for (int i = 0; i < days.length-1; i++) {
    int dayInterval = days[i] - days[i + 1];
    print(dayInterval.abs());
  }
}

// import 'dart:convert';
// import 'dart:io';
//
// void main() {
//   String a = stdin.readLineSync(encoding: utf8);
//   String b = stdin.readLineSync(encoding: utf8);
//   String c = stdin.readLineSync(encoding: utf8);
//   String d = stdin.readLineSync(encoding: utf8);
//   String e = stdin.readLineSync(encoding: utf8);
//
//   int anumber = int.parse(a);
//   int bnumber = int.parse(b);
//   int cnumber = int.parse(c);
//   int dnumber = int.parse(d);
//   int enumber = int.parse(e);
//
//   List<int> net = [anumber, bnumber, cnumber, dnumber, enumber];
//   net.sort();
//
//
//   Cal cal = Cal();
//   print(cal.subtract(net));
// }
//
// class Cal {
//   int subtract(List<int> net) {
//     int result = 0;
//     for (int i = 0; i < 4; i++) {
//       result = net[i + 1] - net[i];
//     }
//     return result;
//   }
// }