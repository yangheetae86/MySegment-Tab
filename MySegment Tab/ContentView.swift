//
//  ContentView.swift
//  MySegment Tab
//
//  Created by JU HAN LEE on 2020/04/27.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var index = 1
    @State var offset : CGFloat = 0
    
    var body: some View {
        VStack(spacing: 0) {
            AppBar(index: self.$index, offset: self.$offset)
            First()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct AppBar : View {
    
    @Binding var index : Int
    @Binding var offset : CGFloat //yh
    
    var body: some View {
        
        VStack(alignment: .leading, content: {
            Text("Home")
                .font(.title)
                .foregroundColor(.white)
                .padding(.leading)
                .padding(.bottom)
            
            HStack {
                Button(action: {
                    
                    self.index = 1
                }) {
                    VStack(spacing: 8) {
                        HStack(spacing: 8) {
                            Image("Home")
                                .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.6))
                            Text("Home")
                                .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.6))
                        }
                        Capsule()
                            .fill(self.index == 1 ? Color.white : Color.clear)
                            .frame(height: 4)
                        
                    }
                }
                
                Button(action: {
                    
                    self.index = 2
                }) {
                    VStack(spacing: 8) {
                        HStack(spacing: 12) {
                            Image("Search")
                                .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.6))
                            Text("Search")
                                .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.6))
                        }
                        Capsule()
                            .fill(self.index == 2 ? Color.white : Color.clear)
                            .frame(height: 4)
                        
                    }
                }
                
                Button(action: {
                        
                    self.index = 3
                }) {
                    VStack(spacing: 8) {
                        HStack(spacing: 12) {
                            Image("Profile")
                                .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.6))
                            Text("Account")
                                .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.6))
                        }
                        Capsule()
                            .fill(self.index == 3 ? Color.white : Color.clear)
                            .frame(height: 4)
                        
                    }
                }
            }
        })
        
        .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)//yh
        .padding(.horizontal)
        .padding(.bottom, 10)
        .background(Color.red)
    }
}

struct First : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing:0) {
                ForEach(1..<6, id: \.self) {i in
                    Image("p\(i)")
                    .resizable()
                    .frame(height: 250)
                    .cornerRadius(15)
                    .padding(.top)
                    .padding(.horizontal)
                }
            }
        }
        .padding(.bottom, 18)
    }
}

struct Scnd : View 	{
    var body: some View {
        GeometryReader {_ in
            
            VStack {
                Text("Scnd View")
            }
        }
        .background(Color.white)
    }
}

struct Third : View {
    var body: some View {
        GeometryReader {_ in
            VStack {
                Text("Third View")
            }
        }
        .background(Color.white)
    }
}
