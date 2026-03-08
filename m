Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115E717A2EA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772955294; cv=none; b=lHSbzocVjV9T+LekEXcEFaCS1PQ73eM4aFDepTuGjyRWps5N+5ULZcynNea/l1t7TNxlK66tz5NQ/MyeDhXWA73zGQYmz3kyIk09O/+c4N4Beip9XYH2O38PN1Rv9NocRyvMdaPfoAzQI3UypWclvdRJg+Xp2ULlZMhgL19z8KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772955294; c=relaxed/simple;
	bh=uQUx++N6N2YSoOwYNjJphKGFOt1PpcEJHu0m/KOrsYU=;
	h=To:Subject:From:Message-Id:Date; b=MDGffHRRdL6+Wb7U3yiGrU9IeTcvoGP5+RzueJkPRHQrTcjGibItEEvoPPUAT6bNfno1ILRSPaNtPxjpu6PsoDYrsPjTt3Fu8OgQZsj894C6B/wyQ3CsO2wF7S7Yo4N87mzVuS9c6LOc/5TN7qibhMzmAOT4mBtX3W7fme81GoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khSsbRNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khSsbRNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A762DC2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772955293;
	bh=uQUx++N6N2YSoOwYNjJphKGFOt1PpcEJHu0m/KOrsYU=;
	h=To:Subject:From:Date:From;
	b=khSsbRNcNt2FP7GdiLCN5pD6OKbC0bhmSUYzyvvD493qAx4tiuwpCLT93PqWOZiQY
	 Zr9Gt0pV8LQojn+GBNjESmCgGArqp9Keum5DIic4w3CDDtskdckjU7yv2LE6vYSYkD
	 7zB6mdLifWrMhF3BSvQ0BOmQpOCyQ9pRpZpQMIGFO/yNMWMQyEZuKC1p4S33spPKYT
	 1F2wAoi3HOAbfcSPkDAzlvEW3UYXJVao1v0nnNWQOZp8ureyZhP+fvbQJ2mZbnMKdi
	 FJQhHn+W6NjiCn0E+maoDjzfSlRykpVW+moMiUnr+cFHRykgNlSixkhV8191r84p6I
	 X8G5GMVBY1zjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9519EF55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295529357.30969.13807960071962054113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75474ae90a4b999eefcc134c91d5865a7dcb1f33141e4e8c81febea0826ca157
Date: Sun, 08 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772955293
