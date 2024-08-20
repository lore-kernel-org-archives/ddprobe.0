Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3107A18E37E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724186154; cv=none; b=ZQTCWtMKFSEwTDZCPHbUD+SULES0PyUvYEs5lgztnpEApjxUZNcKLsVwBd42V2h1Ba++O+w4/Mmf/EN+pgrjtfKkbp5mi8BuqGF8NxSlD5laWm4Q41FbrgKy2ER0Zj75RF3i/z+WBWfMuWsfC0QdE+8kcBz7mHJTW/ok/ks8tPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724186154; c=relaxed/simple;
	bh=gR3gV5PeFJ89mZy+CxDKYJnXKgvW5yxgpuhNmcqHB1U=;
	h=To:Subject:From:Message-Id:Date; b=oBLzrWaqcbgS0kicNwMgg4dW4cz5Sw4DRnGogKxMxRHI74SsZmh+60ntddsLyTsyM1VmP66kBCqH60LCd8Cs5WS3NCfBxGQ8/n0D2Tr02aM6x6racFcCCf4FJ7Hy3Pmmb6Jm6H1a2zFdEfJ6XR8QTubDD42q0AUvMVSl6vnBzbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWvCZGHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWvCZGHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF723C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724186153;
	bh=gR3gV5PeFJ89mZy+CxDKYJnXKgvW5yxgpuhNmcqHB1U=;
	h=To:Subject:From:Date:From;
	b=NWvCZGHqV960IDaSeW2VwTHXq7MfKgjRrNXW6qfbQVeNI2hopHcC/11qQwTUXQ9zR
	 P15Rea1YXkLyzqgW/+77k4r1+NbrBkwK5ubTq+QBY66aUbv+D1RNMTnCQhfNUmIgkz
	 +ZWM0sWVf2S/3TJfaiGDchX2P5tXkr2ZSQTSmtYvIiu6BkEDKFKkq/BxsIpQxk4Fkr
	 dwyYQp1FQSY2HYdmz4/0xyXBQCpv6OWWc+bXMbCcOzws65g7PKwcxNKlAxnDUqJXfu
	 LoIrlA2cqVkuC4B5Is4PvuC5fL6eBVi2C+VB/rBy7jNdJdtORYogfE6hO5EfgvwEXv
	 H/daXmE51OV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2EC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172418615359.30957.7145534823857515976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b15fd9f66e1de5e620e5b29cb67dd75b41fee3d380d649c51bc2870d257ff96
Date: Tue, 20 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724186153
