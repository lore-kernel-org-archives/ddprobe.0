Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0616526AE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708186097; cv=none; b=ELu0Zk0lzuirO3AW4+EVzOudKRuFjFyeDnn+XLkqBWW60XnwkbyPNBEpLt+bbsC2TvEOMv8POLk5pmNVp2FgrYphA2FbiT4XqQ8ssUc+F+KZ1L2WqFv9k6RBZ+APMgG6HB0Il9Fu4xd/YEq5Nr3JAgCAMaSk+fTR0jdZzWxj9zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708186097; c=relaxed/simple;
	bh=wVLLpgX6drL2IOOqXNbU0lGtL0IYuorQtBu2cINL0Os=;
	h=To:Subject:From:Message-Id:Date; b=RTW18kguKJ11JFGkNRfPL/DsN/Fu1LU0+enqwPhgtBrqe4b9bUFB3QxlmKX4IJQ4N5S3xqKd3z3GSKl7ev60bRIhnasBe7V5VoyQia4spnuzoaftQnCZHBOgQxPUlnKmBqWuC1grUlbg6Eq0OfoAt7Ej/LKilTJNC4K1BxyPn7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNtii+Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNtii+Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A12C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708186096;
	bh=wVLLpgX6drL2IOOqXNbU0lGtL0IYuorQtBu2cINL0Os=;
	h=To:Subject:From:Date:From;
	b=ZNtii+JdVgvFCLrzhMRKFJUlQPRLjzLAkr9t22/I7TSZspqOynbfH6ye/n9G5O3hA
	 +rzeRnVTXfRtAMUxW5oJU08kx48XDU7BT/XriDs6tIY0xlyBB2SKGmB0w24yfK6ZeM
	 Ls4QleWbX7NMapqRPxV1uZojnB+r4VUeBMBSutqIfFdTzc37rLGp5hjODAEbSBMu2a
	 zbgwC4R42WE88UfYW8EFHhRznYGcaP2p1JTPdvIxFwD/lmEUUb2zntOoBVtqGTjGYP
	 ruHe2Cxb4Klw6xHprK2M2zvLvz7zv+WIJbqzRsF0SOJghsFshzp9rOpuOCfJUkUCPn
	 ztf3C3/+T25aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62511C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170818609637.26431.6908822526444790576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323af9359eecdcc9c705184822620bcffde0121ba7f0ced6b963ea00d3d1cffe
Date: Sat, 17 Feb 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708186096
