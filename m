Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174DB222560
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767273234; cv=none; b=QVYO1ZepbgJqDuEC0jkOV3THMC2+m7Mmdu7d1xkeXxgaW9L/ADfUDXsH3srsGgFzenY8t8N4eQPeaZxoNMUaibvDVATcEEFaMMtT7n7tzczYHaDKFB6QnwHCgAjbbuodDEZZmqv2K+C73U9/98LokRGlJHWGLfUFtoNtynVPvvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767273234; c=relaxed/simple;
	bh=bBsbhkTL7Awok+ZZY+kmcRbVxdzqqLUwrWmA83dtxQ8=;
	h=To:Subject:From:Message-Id:Date; b=p8YBkOQszUbwqEmPxEvtVN2X0qfXPtkt8bji96qgg7ENGQYBibhrKJngL0QPWFOgZSlQttNHxFkEqg2L/SDF2IRLS172ixfagt4rXEwZz+zdhMaASM4WH4LnkKjA8n/Rj54ugfBz7NUObOyezyjo+NKLtsTSWVA+3WajBOSeOJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaoEBP8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaoEBP8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767273233;
	bh=bBsbhkTL7Awok+ZZY+kmcRbVxdzqqLUwrWmA83dtxQ8=;
	h=To:Subject:From:Date:From;
	b=HaoEBP8lAJrsVxs/8R7tpqdjnI8DLO14DSwCRMNGqOCzPYQMoMbI2P2DNXwvjeGTW
	 pTh3WyD+KD3qhsfhcgE6XtXta02NWBKXRHaEPoYFOi0ARQXX1JPI1l+8YcR0C+R1eh
	 CWwCEeF4nTPwwCDOdofQzm/91ZDb2DcyoLR7YvFsEskOlNO3IDv5bzXmHwozfszwoN
	 Nl9vv5hQoNFII/V/Pr5+dvJCVlf6YrB3ZACx7yNHVAHiGyemyP6k1OM9Y9BgKoaIH2
	 Sfa7GHHww9kNWDEilWPqIlsP3A5j+gG/dKRi4KtWaou5dqxOwlr/UMwkMeW+MvK0yV
	 O79mo6UgtkT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC7EED603
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727323357.24255.13808228851655107439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c1711839e3d229051d6cdbffcf8d22bdf9f94518e64c2e6dbec469213d2642
Date: Thu, 01 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767273233
