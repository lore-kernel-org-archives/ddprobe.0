Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1AF17837A
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726162554; cv=none; b=MtAbrpduojchpgMCDOcumO+GHsmV4gNCzk/mfRY2cJN8lqD2gsTPMK3R1p/Tj7inwaBLQxHh0+ORBka4R6C2rErPTQX/IjTEN0/tPedXtCs1sHg2BYiOVVEvZ64bZeLSYSPFISZuL1zt/xXqeFs+sqGpWQTIYONVXn0FsfgpVlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726162554; c=relaxed/simple;
	bh=A/M2Ud3AUa70kK7K5ierNyBmAlLNL+ByBeNEvcs+LK8=;
	h=To:Subject:From:Message-Id:Date; b=XpwzGTgsgw3vDKcbsmZQsGI1DUyIcAf2VLSGIZ56DTWT0Aeo9F1lD90mQ2rPY1H6KGE58E+Ouqi/3KiK7FLfByW/SYYipC1/h01g26rqO72eAoVFPDQCrM8X3f04JAf8iGZyzt+naAYMy4QJSGnRornvsQHgRMx/UpbOHC9xKW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBVJ1E/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBVJ1E/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB45AC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726162553;
	bh=A/M2Ud3AUa70kK7K5ierNyBmAlLNL+ByBeNEvcs+LK8=;
	h=To:Subject:From:Date:From;
	b=TBVJ1E/xFvAfPoFIFHd2lm+aAFbLAoOn4vLuuzjN5jbQnot4yB1UE8gJ/rOhsvBHm
	 MKAoWad0eEGY9ICal9oieOS2Oei2oCeIooHjExYzEfC4AnL4jyNgrtVJAKULGyX98+
	 l4XF6n4HnzMex+bQxjC0AZQ5eRCzQstWYqsIng3Ni3EpJehlT6EgTkCgAqqr3SSOSV
	 86PGWYejEsvkkzYMQyFrYjq3msiToS4Ir6lvI/6y2++Uo27uWMbhAPI6uG0gN/9uE8
	 PdyUjuf19lEaqGaxrU6NLM7mzf0e/ABUvfJlb+lB5EFYH86EKP8B6VBgm/+Ctjws90
	 6AXhVSA+Syihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69F2EED630
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172616255363.16992.2463950184465321192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38a1247e4f83a7ed1f463df61053ea4886e7053e4d81eed3657119a02eb2e14
Date: Thu, 12 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726162553
