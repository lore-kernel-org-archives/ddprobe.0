Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26B1547C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724924154; cv=none; b=TTZqCcBgrPsBVkzhpTZ320PgEX0Wldj/c0dtyvygSzF9vUZgrh76uszBjoK0gYVMQ+pnmdPoGVIWWUCWltzt72IPmijZYGsF9ynGPbHHmEm3hx7ZTMR4x2V456To9LRaeFSU6Yc9PswiD8Ipnk1F2FfWqY7lZKPv6WZp7+DenAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724924154; c=relaxed/simple;
	bh=MBxdYm0ayOyx9uulsRklU21qhkFvodKPHIl3eusQcXs=;
	h=To:Subject:From:Message-Id:Date; b=FPQ10ysbFBk9BXzS9O+yf+NLUZ5NNXpJ/LK/GH/AgOeQDetJYgh43lrbai59Ga3M/LUnp0ES3DjzLoAEY3TTPYAUFRgVYVCKTRgpuqTVfJV8VQxNLcidFPRyUJmCTAncTfyF7WAUhufYn4S2EOuDRvHYD9nsESeZK3Dc4aA8EGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRz5XJiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRz5XJiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01BCC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724924153;
	bh=MBxdYm0ayOyx9uulsRklU21qhkFvodKPHIl3eusQcXs=;
	h=To:Subject:From:Date:From;
	b=fRz5XJivhSN9L0RToECl8Bo31UnUGMbI34SmFE5buFUuAAyzkgPP+934Y4rnw0JKs
	 AOahod6DtbWykPScZl83r/3mEc5l32Zw84mFcakMZx8ka24zoXv9KeO4gGMx/w9ISn
	 +4+AapiCkyr1KtJEeq5bipjAqTW7DiHqxLpSFbhqB0H4+T1jxxSwOb6Tp+Yzcj43H6
	 tlCrjtNYRWoe1RNp5GnDXtI777QApzTjyijdoP+Sp7ZCmgo6cI1qjf8rBYdnfET1Qn
	 r+Ac5SUv2YO1InLJ3l6DVxqPpESmzQtUg5H6j/ttOAuXaHUqWus3qUqJ5wfeQ8N2yk
	 VOf8Ia6x/vh9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7FAC83013
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492415361.30203.13492183943611993389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d43c646547e9208b7f437a8509a177eff61039930a62f66561bbad1e5979a5
Date: Thu, 29 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724924153
