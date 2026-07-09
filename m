Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD802F49FD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783568914; cv=none; b=dq9W0AUMeK7C3x/mRXGDnkmPCmEIjw3lxG64hc3RztdN41xfao0J49Q4zCiji3Lru7+biXWnZmiqNMwRWKTkikZ1h/HsybOkqkSIKso5IhwXJc3kvJB/mKHlX7F344AbzEdnlV9nbpFj53eYZnfhNe441YA2IoaevSSK70aXycc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783568914; c=relaxed/simple;
	bh=iZFmabrvY2eL9Xk0R1QjpyaSN2fV4bn0P/3LtOihVCg=;
	h=To:Subject:From:Message-Id:Date; b=pzerThinRSrLpnQsSeA2gWcQjkkhJUv7OK4wZRCuhLl3p2j9iFtdWgSdp7/nOkFJhRnLIizc8hykhTUhC/124ypMR0g0l05GEWvHjOExieMrVUhdWA3HNI+RG3FvJ+GY7tdGoww74aRqDiuCteaQN2g4gkkKS6gCmYusqC6cQdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6i4/iXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6i4/iXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5E9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783568913;
	bh=iZFmabrvY2eL9Xk0R1QjpyaSN2fV4bn0P/3LtOihVCg=;
	h=To:Subject:From:Date:From;
	b=e6i4/iXgLNpanEHkacMRslYvbCYm1u67kBRoxLHlaGXKcKgdqZnBTiFo3t272Njl7
	 Gh6XhmwnFekIFuY7SChcXZmemLeS3sEdLb5sS4TD2o9/4Y5DUwleYAJGUxi+LDSwFE
	 vUqtl9OMAULje40+wic9mLFty1xp+E0aQYubJxHW1pgEcwrEnwxpa0W8Ws5O2haZXK
	 JrSMZE1dyes3Xm/PWVC1Lchl2h+S0H6+rJT5onD4UU88MRsvud3S7euaTpQNuQBttw
	 giLv9/co0xCWallriUftQSmqQ6bqri3QJ/h84d02CoKwZP+jFGEMzEcoAJFwQenfXp
	 lCyx/M6QcohGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8116C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356891368.12892.9878348282950223720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b7fb5a5311e79f39f489973755694559472e37e03f7856188e9c830d53e5a1
Date: Thu, 09 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783568913
