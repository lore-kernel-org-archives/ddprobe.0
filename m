Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C26E2C11DE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770524634; cv=none; b=fNlgD8ctSKQwUZJxu2ByzHbZlIEeZlvZjbaVXk7dxwbhLRsV6zNo4/U5JRCw9cETaWUaHZEdPtP9yWuykIAko1YwbASMKVkmDA+vq9sP9sTk9T+V8UTd0dWGU9xLD+DR6TSHT93ODiMXVivBdzU20/XNsBwOBhXbTA3UETB1y9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770524634; c=relaxed/simple;
	bh=9stZQRca8OOkMy1Jo/zyecA/AYkgLJIDrtjC0pSzNKc=;
	h=To:Subject:From:Message-Id:Date; b=FV/R9DEFhQssKDnrkQl/P3ztjRWoInvzv7fPbq/DiSGMl3tNtNyZhD+JPvN35j8vzX3Zi9Cl81Tlb1/6e52EValeC8yay+EX/sh+UMiWKbyVJUaqwIeWApDTc5xBPh/xybgGZ//pBe3UxKmBFWmwUQiUwhBBKj6PT0ipeHX55KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4TzB0Cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4TzB0Cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A96C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770524633;
	bh=9stZQRca8OOkMy1Jo/zyecA/AYkgLJIDrtjC0pSzNKc=;
	h=To:Subject:From:Date:From;
	b=I4TzB0ClfiKDxNnZnsiQRcvDuf/KhCDz3WL87mDPZmoWBmOFX7YGcSMakPK8miPAd
	 CsxopP7PuydfMUVo7B0iLRv5Rn4YJafIhfa01/iAGhu2cIPfs83281iZhkHYT9WCZ4
	 +zmkGaBeAgyGAh8S1hV8MGKU5F96EnKm5TuY/GzwQ2x2PE2u7RTYBr0OBYE95obfgy
	 MGwQRUY31Yyivt03pW58w8V7hFHpOAPFpnwJ+ye+acGEYFx5YxEG8774Rkphb0Bpn0
	 RETkwZwLwS+BvcK4zbh0/hHlGbDBaHTZ8PF99QEKyp4cC99w/pZREuZeLCTJhz6iKw
	 PupzZK9cUNRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A634BEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052463362.5086.7876653946125447832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dcf367f65af377558b02d47a6b16b0e3156a4104e4e6ec463b3b85bee90223
Date: Sun, 08 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770524633
