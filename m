Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252C2BDC03
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763298654; cv=none; b=JXKcqrZmQkgaMJDxBhEBwVNMYZrNyF7g1YagLV+pjSFz2vOf1i7RXg/P0cQtx3NKpo1N8ehiHKS37BM1gB6p22Ie7OLJV3uWqbct5rJhEofs3AbLps980nMuZ0dnhFR3M1JY91D6+Gqqz/Y7dstqIoE4WHqPC1NPzgx0b0ShUHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763298654; c=relaxed/simple;
	bh=ebPYAQBz/++0t+ethlKtBC4NZp/axSjJsSDsnm0lrCI=;
	h=To:Subject:From:Message-Id:Date; b=CkTUmkqT7sVzo5sQ0/6Bxu61zcdOFOOP+yrYEm2h8iHZ5yZ78/RoIVxGd3Xre1kLUfMgqEMPp/gQeoGf5uXlUSX+wB9hXqnH5Zy0kfgimTgL0cieCBtSjs9VrYLr3NnzfJD6WrZH7agl36I5fke76HqwdE/zt4IQjsbGpsRNtXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc/B6kh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc/B6kh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B406BC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763298653;
	bh=ebPYAQBz/++0t+ethlKtBC4NZp/axSjJsSDsnm0lrCI=;
	h=To:Subject:From:Date:From;
	b=oc/B6kh2E/wX3UdBtwekIGBv5ax6+3tfpxwOio9FuoKR0bZFebaOlREXqUhBZqXtV
	 ZjZfed5p+6GcUGkEeTXSa3e5o1edykWCTUf7jtu+RQuFxSs5mh4H0OIlp2CFxBwoLx
	 y0EVzOQkVYIA5Y4Xvmi9zEprKNF23HA9StTSNbmHtdlR6KGhaiyTZalnIJ7SGaSrp0
	 e3YuJCyLiUrleP7LMJTe9e03epifuvClvLd7GeQM/9N0f8vFChbTUURQLixjM3UKF+
	 DKBSIGB2ugxREODVndH0hCUaHTB08Iw4eVd7WUNZw350ldBOIprzhKgad8FJbT8DAZ
	 ytsJ7m2gZ90yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB7FCEACEF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329865362.18337.5040937084775713721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1107f181a5dde4e30a87271ac62fa82ad5126859ac4152a188a06f31aea1617f
Date: Sun, 16 Nov 2025 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763298653
