Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2178D8634F
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765746174; cv=none; b=VbOrB0b2Ai+jlyifngkWCN0kEwf6/61DTze342TheTsv1pSmpGH8HtWTjwm3Tibm3kx1KY5oE1O8db5Pn0U9XYZrkN3vRViBgnX43JXy0CFox1c/ZSo9CAf7Z7ktPhb8KO3E8wjiPVahHmwvgg0w1jsDk4E/nQZf8w0n6zqX11o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765746174; c=relaxed/simple;
	bh=83m0OvdQAxm5s9bMHEyOf9L5qGo3GWhZENMNzh5y81g=;
	h=To:Subject:From:Message-Id:Date; b=q401fyqNqnPWZsAvHyMVaSeLMLTxmcGV5mRcxla1xDbXVXnfBL/6zUJP4DrETIyLkzgmcMDIqAv36L1551u32RnXaKXciN4v7lR71OMLye5vnireJmE2MzRaRdtLvMQl1NkluB5PdSBeAx8yvdp3l3JhWBRzJQb1rsDk2saZLHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8cdI60k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8cdI60k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2448C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765746173;
	bh=83m0OvdQAxm5s9bMHEyOf9L5qGo3GWhZENMNzh5y81g=;
	h=To:Subject:From:Date:From;
	b=H8cdI60kHLccBKSj2fTBmT1/ZC0teG3BgB/7O5B+ibNUAiohenRu0eKJ2eJzWt90f
	 yl8Gz872sovz3ELjHOFhQbC4aKAKrh3nND2TrKXrhbLk/ZFOq/QjjxlYbMAiFGC3M6
	 nfbiIGeXMxScL33bmFaFm3YkVXbJDeTG2DmNR3zpLncT2l8hSVE7eQINYwXlo8U35F
	 JP43B59xOzOrjXUibnatFrd+6WNyciBjdfAH+jJNWJAnyHntfdXJfWLlIpj6nGn2y2
	 q3P9mhW3AhauV3qhI9SNdwAiyhd5pX5f4TXmmb6DICoU7g2asaKoL9s1vNaUDDAEDt
	 A+yXciZ+F+AAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D6D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574617361.21389.17618790727325191241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b461636394f0f9bddb023b5135351b3082bb9eebb42c8ab4e05608b78efeaf
Date: Sun, 14 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765746173
