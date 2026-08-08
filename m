Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626D53A783B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786177234; cv=none; b=CcOm/fA776LpDHSrnne0oLUfAdvnxWtpDBYea7Mkd32sO1VGAfeKe3OjngUBnfwm4a4/NnRQJsJYggDQt0z++jUFNKWtnVYc//boAVwm9UowNNC8Q9e//1HSp1fEwh3eKcrPZAdW2BU4jMYtMxBq7b28D/YHg1lmCfeM9+tADw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786177234; c=relaxed/simple;
	bh=WsNOC10aA/MR8+ytmSgQ21T0V2+shntNW/l3D0xB1Ic=;
	h=To:Subject:From:Message-Id:Date; b=YioaqNImSE5HMTbP4ucV/XLCZPys3/RAJiODNegpW10XWwBIGXoWbDreRmktpyl58ax8Cgb1ebnLQJHssdZko7JKufFj09JiRHpxZ5nBKalnzG311gRINDrXzYfvld2drrBQE9z5xb/+gy8nm6FPflqngbV+qSNazLdUNBWNOoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMITLVRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMITLVRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7684C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786177233;
	bh=WsNOC10aA/MR8+ytmSgQ21T0V2+shntNW/l3D0xB1Ic=;
	h=To:Subject:From:Date:From;
	b=hMITLVRHTkuQdYr0yX+Ot9SIbo4A/1zmlMWP2teZcHn6+LlWa/0HVsqQLxaK+YaJv
	 JhTbH7UAwMqD5HIW9lhzpwEy8bgBXWOpcClXGM4FEJ643SYd4XqtlePiudGjYhAwt3
	 RyUwlmF4bgFZBYkrNSLDoh48BRboIksRagKUmH7HQmJC3Y39tLaySK5UNBYCh43MIq
	 XbUEwxyKXAvl9PaVYOvbhtDUlzD1iklMIK020x3TDweui5IaZ3Q2LajD4YPD6+TpEI
	 i+KzsapWof3GWpD8rKMCFynu/1ARu5Fa9F5sTu83+Xm6046zhL2eRS6WEDjkhcZv1a
	 L0m1sy9vWCTEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12DEC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617723370.28469.5606872708231052001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c071d955029d328066a43720cb768644e4fcf90331884e29f74dbd16b5db9e9
Date: Sat, 08 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786177233
