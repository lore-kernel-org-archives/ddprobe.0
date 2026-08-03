Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE432C032E
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785746434; cv=none; b=chkfG6Sx71dIPF0ww8PFIDmxoIpUMefT1I2dFJqHY8An7CEHRrUnxwgDK/a/lLtJx6TIu0PLROOP70yCFq47v2pf1jzb1yGSF20G1LY2FlL0fonIonVo4nFn6nyZpP5CNBG4MoC6L7uk6Kw7wUgLvijfIt2gxPWGv2co6Xm9gms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785746434; c=relaxed/simple;
	bh=QLzfkWlNVZsU1/zWC4efW9yftMibEiarsAPLvGmFcEk=;
	h=To:Subject:From:Message-Id:Date; b=s75pNEVPFbTtc+XCpoqs4ll7GpcQoQ0h1jVHbtfTXJ/trw8apQVSVqZd9yD1eYePgq/yFCj1OzO2RGNotNDPeagDRcg/7nIoxK39ZEv4x+Z8NytGXuWKTioDbrewLULn1gCjP6IaZ4nrwMGs+Lb1HU2x/loJPQVNxAiGutInkqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+aAmf5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+aAmf5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA10C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785746433;
	bh=QLzfkWlNVZsU1/zWC4efW9yftMibEiarsAPLvGmFcEk=;
	h=To:Subject:From:Date:From;
	b=I+aAmf5fM3q2geodwat9r8kK8eX9K0NOBgWfB2UEnWmNl9ghS1156fKrX5zXVk2TM
	 eD//q4iBuDX0Lsm/yfvcrrBUmtsK7anW7GMj/KfbUanJCSHEdjPuWN6M4Bk54m/Kn5
	 4taIpQb36iFTnC2kU9iVtdf2f1cTjeZ0Nq1zfwNRIWW/RpT6a+0Av1tGwy2xiNAkXQ
	 EVAkqEls46C3Hk1+neM2fVX7lPKSvFzcZZRuALvxUoIZODLsQrNZkbquCHCekYc7cL
	 Zyxg2cbC+CBLqFLU82ltQ0m2t7jbN1c9g/D2AWB9+He3kgXCkcDM5kvssXn9a7l6N5
	 h7rFhBz8rYeNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13E5C55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574643369.3923.15215063745788950390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9969aff8ea1cfc91657c34e0969861133d2e511eacd3c1a3bc2426e4e93a4e0
Date: Mon, 03 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785746433
