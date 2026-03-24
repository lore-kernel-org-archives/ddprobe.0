Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E4930EF68
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774395294; cv=none; b=jpWaN0BcaVFyqLbkVaexAGCMHapR61UULClz0vhqCg9eh3Fzv1yGfoDM8RjabjhfliFcQdFuDiH60wIG5Y1nJBLGk54bwDe5WZ/KaB66jBgeRIEN6Nij1p5pdgGK8XHBqgIiXPkqXkzvvS7tO228zBNpDs/wF8zoPLYJRSsca/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774395294; c=relaxed/simple;
	bh=GFRuBFsAkLMz4jDF+yyN/8ivSE0CCGEiL8GAqQ3y+qY=;
	h=To:Subject:From:Message-Id:Date; b=JrJfeUB3OrTX/1PX/pvfs9EnHWTvtRDf0rdhgnmY7q6R+TjM358aqNFH9PxJakaZy/ewIzE5YNeXsSDqfwenob2jNYNztoGEji9AKWPPZjoZa4WGV7Kpr83rX7NHGVfoHqCNnXSABINjkZCpr3UmIMMCPixufph4jCB+zkVEOWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERgCcTci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERgCcTci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF9C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774395293;
	bh=GFRuBFsAkLMz4jDF+yyN/8ivSE0CCGEiL8GAqQ3y+qY=;
	h=To:Subject:From:Date:From;
	b=ERgCcTciG92t4cuE/7g2aQdFGqtc9e6sMliB04vSsI4ZW5GGgOjHzuTqFJK9EOJmu
	 5+VaZnwmPoNBku9z5OxPvpWzPA2Adnprb+45iJEmk35HpgSykLEtcQgSQa/At1TbeT
	 ug0Wuns0oBYGVt6vt70B/iofIg6jMYDvT3gnZzzKsQt6Z32uioVM/pH9o6SZ6DaJDx
	 9zv60o55dOugNiu8lXyWOyhFWNzNW2vW/KewG+79WocQA9tRhIRunSzlP8RXofT4K+
	 +W1z2Ep4QdD3KuRGge6nsEzc9N1zsFhfqNONzD0o40K1btdblneGbOVrH96mFFOCb2
	 0ycKDrx8wewLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC6FC72D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439529358.28521.13020111784691216127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf5c396bc584c626467f18fce43089d0f5040e442c35edf473fa64714b5ff20
Date: Tue, 24 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774395293
