Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A80433E9E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785433234; cv=none; b=raw90PZlsoIpZeoS0/HDcUF4G8U9cJtDJIbxic0RQRLKl3/uRyczwtwzvL0arAqg93ffTWLvYYchw1LAkKhi3qsDeHumBpV9CMJGX5sQaKBFqcbWQv0EZMww4TrrzVUwWyjMQlVko2tM/6o8zJ+AEdwOb2OZrelPYMSXfDwo5VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785433234; c=relaxed/simple;
	bh=qpPwBCHHfXf2Rkvm6Cx4+YYKrrjIGrS+9GA6gGw6ZGo=;
	h=To:Subject:From:Message-Id:Date; b=CypmqUfrTQH2NLi8aHIfRYLOEKDPNAVc3+gwoLF+T+Nm9NaAtU6/k+zscdYB6Qr867aOMrWSB1fhKd1A6k9PnVd0vi26P8BLhesnwFB5bet9zm0gZoOxj0ISCgFcazg33OOTEreEFnni8DIOb7jaqK3Rdu1J45xisVtuBTxcczg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0qPSZTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0qPSZTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3ECC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785433233;
	bh=qpPwBCHHfXf2Rkvm6Cx4+YYKrrjIGrS+9GA6gGw6ZGo=;
	h=To:Subject:From:Date:From;
	b=R0qPSZTz7XQlpK4xGQNFAJpnwFeYEvgnV46IK+l8aM58YxLOxAJ5l8O0NXSok0XvD
	 pfkD3rR0y6Q9dLAHs4LU+r5DQmO5bhf3gG4n/k7IinzRPQAgN2zpC76HQvv6sXimiR
	 tkvcl4BYU9lgSTAhjii2i56BTByZPTjVDGFT4BeMhzfzdoHBTZE8hb4BaDERWzDJzy
	 zfbiQ3Pr0jkug5jfiMmIAabEGMtJe6SKdgOWRNPq7RtLIJVifOR3Bw7XPAHHh6vRC5
	 kK33Ct4Uxk3VP6ovZhpE3X2406AuZNUk25zixl1SRFmt8szg+JMlhnMmXpCdEHbWWG
	 Qt7AiVu7yEhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51EC5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543323368.30175.2099780506803731613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d80408db898902042fa82a3495cb484d955eadb3489a951610184ed80db2eb
Date: Thu, 30 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785433233
