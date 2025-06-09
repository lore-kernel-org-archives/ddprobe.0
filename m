Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEB72A1B2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749431394; cv=none; b=euHkd17dxkcgh9Kle+toN2XOLgIaTJvTGI7wkZGwBSBvFSIFRKXjf20ztWj09ycc7By8Be50VmtUtVIBmhblMQLck3f2Pcfwc/sb70/m/AtoWVEpSm8dxMPh5AxrAN5tDljxWzRAC1VLDOWpNGmwnMf22HQEJcnC+ipDiNJPgV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749431394; c=relaxed/simple;
	bh=qSGbNb/ivdBi1ojAO9mHfZDyrjBMx6hZtkwpY9ViX3Y=;
	h=To:Subject:From:Message-Id:Date; b=Zvyll8fnJGa/1e/TX4QI1T8dckGoMju6JOSmNdb450HAPxQ7bWaDi5zdnW4u9brJNXETzdvFIQJpQdllTqAquBtsyCNkSeJoKB+GaNr6EvqaCgN+84qrhnATd/FcFG9yLoQphdcjZO9orAHKQ0pP8OZfDcJkiud44ZbEqwnvfsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etirAbYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etirAbYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E23C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749431393;
	bh=qSGbNb/ivdBi1ojAO9mHfZDyrjBMx6hZtkwpY9ViX3Y=;
	h=To:Subject:From:Date:From;
	b=etirAbYEj8Z/nR0g5p7SU7ixB840AR8Ez7MSVl1sYYTocg8JVsOSN0WHUlC4Tahav
	 InFCihnbL1j27MDFGUj5iq0UBOFT5byloo6ErVCZE0uaVz42OI9h9NHyA7BOzG4KnR
	 Y91wrZArjGPl2eCUATcJWEq48qOoyliVbA8jB7cdGScxrl+uRQQjPgmyhnrTdWN5A4
	 32CtAD5TJU7vXXpAgufwcCErJOe2zcgyeNb6R888lbyeu/xTNECfHtSWAiwEL8r+XG
	 WkenP+2UQR9lcbcnbcGfFOD8mudoeF/NRFxzOWg/ARTwSABMmYz7fjZyMZD7vQrhQR
	 Gc2pIaZPGX2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E812C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943139357.10074.16504416464778623430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23766d0875e1b545a64b68b07d6d6d3b8c43634001af87bb81f50b172d557647
Date: Mon, 09 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749431393
