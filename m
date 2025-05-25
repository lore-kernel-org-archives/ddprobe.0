Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA6157A48
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748177994; cv=none; b=FqZKOKe0LzkyGd9SbQ8lBcKMtnwbExZBXDFFu3oqY9yJcoKuQkC6wh5AfFXXgsU8Hjc4ZD2KUz5+uh0Nt7Jxh2mWiC2aehP50eqgE8FLnZNgtumSe952Yg4WJ189FJ8hoBeb2PKwetOXkwDuAZTXhBseJgpMbhkp0Rga20CXgv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748177994; c=relaxed/simple;
	bh=cyVGxUbtRG7sd57uK7ibpxV7ii8h3Ss6PvT/bDihlWU=;
	h=To:Subject:From:Message-Id:Date; b=Nie8F0pOCdHsPF3mrpTEN92rhOlihR3NYQtkrsSvH/TMXCy/ETY1onRT5hEo0IWAqYWkSejGh4fRtoLZJ1OTWcNSKnr4leef1IRisRKhSnOEiJVFIZkONQ0LctwEdANRhCwYK4mpJH6bgBuFFPtBUJRbMAiqoGQNOhTJknXYMGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjQwWwey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjQwWwey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079FC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748177993;
	bh=cyVGxUbtRG7sd57uK7ibpxV7ii8h3Ss6PvT/bDihlWU=;
	h=To:Subject:From:Date:From;
	b=BjQwWwey57xcM1A/k3EIUqHOfEDr6BqB3Ja0DjKMJD4dcYcKp4ApQuLWRbQt9FmWC
	 owBNo2LV3Ui7So72EZXdbBFCy4hNfxO/my3er1mqrWCya7hhLOG9WXenRW/zWNY4Nx
	 WwrabCFpcOmRG4XX/OP40IAvcQ/mgVWYJ0Ma+Ay+KCxBu3+BkW+8PU5XQyilZDQSyW
	 /wSHNEIWuSNvBurErmmf2kBEywuDswsH/UjxIZNGrg0l4QXsJB7g8XnfKV0c/pDh3K
	 pX5hsxNSl2I+ZxVlOf4Valnmv0ukgI2875O78UU7qaWSLEMbtzv+yM646l5XVdh4eX
	 z07X7ho1MD/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF2FC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817799357.30254.8277403708839771568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9f45fd04b7ec9876ce44e792716a8112e6e986610e626baf4e69613761629f
Date: Sun, 25 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748177993
