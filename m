Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4A833E377
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775815655; cv=none; b=Z3BnFnG+S/unZbBwEwfmnQZlZsd53L3B4eVdO4llmhWofgVjgfHhzuoplnPzp1T1NV81TTDab9O+Q/zNuoSKVkK1o5Q0JlMqQxdus7PL8FR2H6YGms6gZx15Lym3JinOFl3qrbT9g2o6o/hQY2p11MRm+C7Z+oDHhMJTd+CqFIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775815655; c=relaxed/simple;
	bh=CJya9mc33wNB5c6IA1GF5440HR5WAWzpPkcgvZrt+4s=;
	h=To:Subject:From:Message-Id:Date; b=KjuGawhqX79SSfbkvexoyqhZqpF74QQfgkJkG55XYAwPrwTtcOSqQjssDPhlDJdjTBKqQ1mrKn1qv6XIuggvBBCiDDUcokKs5CueUyVhgm7bVYDKIfKai1EVWXXwV8sk6ZAtoEc52XS5EIqJjcfEPjrQN2xR0zuo1wtRx8pByE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0F6Nf9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0F6Nf9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A6CC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775815654;
	bh=CJya9mc33wNB5c6IA1GF5440HR5WAWzpPkcgvZrt+4s=;
	h=To:Subject:From:Date:From;
	b=V0F6Nf9OoKc7vYpJu/T+sIU2PupYUclBcM7yWxXZQk/yHObctjzzn9Hz354XKP+Dx
	 iudS/QCM1VrFclvzgh/TKrhPT1TcbTLW1K0wMEIoH3escrqVSdNBbhc4lKLrTIT8Ck
	 rdHLmhAyxHHjggZzAlX5HS+zzGQ4x3IIfy1+JXD0p6DMKn5RQNAVy86dOY0R0Q8adu
	 mRVWoQ6zbn8/WyAstzKr/FqBxBI55QjUsLP+tyMY63oMJLX0sEx7wYKBOms0+ZAbmC
	 Sf4scVXaV07nWjMzutu8ZmLh/7Dd4BgChX00xT2ryQK7BbmowsfwqyBQPW3GiuGFPe
	 idPISUqI1ulgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31DE99071
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581565368.28393.16399350799022534771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feac73d601166299d48819652a30d94665b490e5a3528163ad50f130c98449d3
Date: Fri, 10 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775815653
