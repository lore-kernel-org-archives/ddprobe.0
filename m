Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB0C389454
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769139835; cv=none; b=UGrMAVcVPjF9SO/UdFY9yxJJV47Z3i1r8AFK1udB7Eu0CFp7xAHFxvCOlFPmM1gAGEWUhCCqnjftvqNPEcdd1wDctzk6GnigrdMMUAhAQpClUCh4bNZSVtFoSkeoRcgRghjac2zgjy2Ndkqf4tdIf7XWDj1SMdiidL9mPsa7L1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769139835; c=relaxed/simple;
	bh=jX4uyRXDjVwsKODy2KWZKdmnIVbNGDdIDACFOP8ukDc=;
	h=To:Subject:From:Message-Id:Date; b=OZxbHv26O23BbwmkmthsxfshmfVJn76juj2TlLu+KNjpTtLaSV7l7gmL6sb5oTnp83txAc8548DFcTMkfwGJJYod9QK1Aw319Y+o52ccAQDkSYrI+sK7HyzVyDe13FfmxQp2S0TsUGCte2+PgwOt0zXCfAQbYbOthVMup935Ico=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUIKoFbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUIKoFbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B0C19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769139833;
	bh=jX4uyRXDjVwsKODy2KWZKdmnIVbNGDdIDACFOP8ukDc=;
	h=To:Subject:From:Date:From;
	b=VUIKoFbQy9alOuOsxMskmfRwZ2k9bBCiDQv6VaR8yLKN9iqawITcR1dTZ1o34FejA
	 785IQtcn8vBrnFwr1ftZAHPTM6F4OUerVCcOV4olSKLEMeL3uzayYRmURE7ZadnSaF
	 co9zJOpAW/sRG4EojnHfzvoYF8y6PYuNsjjKrU3nk09/bYIsuhqESXYs6K4pRbodiP
	 KizkO45cB14+9r8pjkc22Xrr+iCS1ptxItoYGVZFe5UMdDqYjwvvc5atGOcOnTdmJg
	 V7BIgVAstFbQkEYSYd7hyrvWel9oWTRSD1jSCSpEjlAKjs73o4cwBzhhpzg2iVJr2f
	 vqdL+0ZsRZDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF08D6CFBD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913983358.24115.951361438590920230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a69f2504cd8c4d4ea273d493215bd18c47e1931c07b2c45d90ecde5c371f99
Date: Fri, 23 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769139833
