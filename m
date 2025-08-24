Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF27A19343B
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756042193; cv=none; b=j9Ooh6Gpjs5UGZ/LkDA+5jbFIepHz2FzL/hS5Gz5/kNaIsoPTfGZD8oV8Ik1NXSvmYN0eqqAiSCAF0ZaGlPauXbuee5CNre4xItSc7C2jpSSIocFd6C14HSDm4iaOEs4w7JlO7m74sjToS/vpdNnlz5L//CNwwggOUmEirdE+Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756042193; c=relaxed/simple;
	bh=3T1kZD/XG3dLKvWMT+sgU2B4EI2mTRq8PAmCM5BrGIw=;
	h=To:Subject:From:Message-Id:Date; b=Iyu8XdVYv3tRNivEfuDURy6GYDAKdkQS6LtLSKXT0f9nrxLfkfRmWirKpI+bNPXn9smlkSqzGghrNxksV1bcmDx6tDIq3+7e/er5vzDhtKgSixVtUPlOChhTEWKYJlPJG4xmTeQ181/HKDsf/gGvopaBoqW0InFCFxzAGezxrQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdWYabIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdWYabIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD56C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756042193;
	bh=3T1kZD/XG3dLKvWMT+sgU2B4EI2mTRq8PAmCM5BrGIw=;
	h=To:Subject:From:Date:From;
	b=BdWYabIGkGJ41a6BM2xBnyDWMmlfnZWlae9UrMOmEo5a5k1cJfq3LiZy0snTuAwLw
	 Aq0wJImvgvr0fG+g4EF3ocPtjJvTUnJEeOPG6XELuJMvinPuAU0zbXWSVKS65P2M1m
	 OUQBfuV8clUNJw106B0I+1Kp6PuQC9nzpPSKWz+Q6iKQF5IYmLusbFVzyZZRLGF5VT
	 MqIm54mJOI+pxR5JCusjgbLKMeIPsT10UzTiYgfdPa8oOJAynUUm/qq+w6bZTmU2jD
	 qaJEi1bXinvpXUvf0P+f9klyK60rHlPELH0pcLN6u1CnTt38u5MkMJZxdL9jMDqETg
	 PJ6RztQ8YC4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBBCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604219357.28622.3797384706614146844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03edacbfc8d4ea49cdfd113f66d477dd0db81bf6ee70fe0105e33b5a2e9b8d7a
Date: Sun, 24 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756042193
