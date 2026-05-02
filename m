Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226D31FC7
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777751254; cv=none; b=qoUaAdpMOLTDttmMWGKjaO/zLqhU/qNfFvKrbqe40pdqr1LIhGrFg8gQSXkK42s1nBJsT7G83J4m6fdVnS/lF67uF+41uf77/QySf1OnlBZQV1aPfgpKWGTtII0PXspKdoh8SqEqtfmRDp7mriSWcZ9GoZtu5C3A0DQeBIqMJBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777751254; c=relaxed/simple;
	bh=hC6Eqgons+zURqrvhrRihgpCyw1C4/NxBihDSC+b7wU=;
	h=To:Subject:From:Message-Id:Date; b=hWdFToIpOmP28qfX7ry7T4xP8Ev87L01N1oJvBcHzb7gi/CURJIEB/AmqMmThr1EjY9DzQ69TkDBTg7GK7C+2ASCt3shxNa/OBCBv6q/D8T3kycd0CkAfwcg0Cm6I1IFupEqsaDH2rMy5hQ0u6Pf1vdhDIZqyR2bRs/7ICkK3Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ngq49ZLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ngq49ZLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1775C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777751253;
	bh=hC6Eqgons+zURqrvhrRihgpCyw1C4/NxBihDSC+b7wU=;
	h=To:Subject:From:Date:From;
	b=Ngq49ZLYxb5ASc1sgFytjsyuBBS82vDDP11N+LLXNLErdCVXEqmX8BF0ckJIByJAn
	 j/5uuoNqayKMnT0qsc18NSPCHSCqSqHhfq/gkt3fqHv2cb5//ti+p2TksKEGq2CH2c
	 5u83ErZmacntCq6oxkMpMyg9+DMi5kAj5ovdFjpTRYLGMuvV1hfG72sKJxzdihwthD
	 4MOHAITYs1L4RX2Hl2IpioW3mx31INSZFdA0G9YUXKDNb4C5OZEPs5sDgfggW66HZb
	 xttRS6vRiKntLrmAPTYpRg/u3PrY4stRRIMbugqm2dIPmlrpG3FCD7YImWoAdl2W77
	 Ru4XvTK9oqI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F1CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775125368.14194.18411087313080272878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7bd6365173479e4e21d65ca618b968bdcdfa339b48c2921945c71a6c348ece8
Date: Sat, 02 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777751253
