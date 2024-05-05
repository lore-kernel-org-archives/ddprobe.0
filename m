Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FD8184D
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714889543; cv=none; b=X46IAh7fTAZMKtn93qClMj6hPiKx0wJwBdumrd+MJdv2NuxAG0cXDDgGbiN1MDMHm/kPKqHK2JKoak0j8SENRbVlQgqHCgpTDp1f394ZpElTT+3EJkDDOKfmz8DHJynQ9A2XZ8it/3Acn49P/UErTSiht0lHDwEeu3a2dsfaNNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714889543; c=relaxed/simple;
	bh=j8q13F3jiZrE9CckjpTuIAAl9gFSBarZKOhNo8MTyG8=;
	h=To:Subject:From:Message-Id:Date; b=WVjx1mVgFsV79clBY6CUnFyx5ofTfyycFczzCC1mY55X0EFvXrGfaOxxDrxQnfNNrVN/z+MZq2rNVC9D4omjH1bMBq1x8iNpSLjKjRWK7aXpDiRb1IPtBd7gkAJ7vecEHTkcYmchnGmcR7hEBqbfMjVk5SY7wECjqjbAurpsA2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIoIl6/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIoIl6/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE607C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714889542;
	bh=j8q13F3jiZrE9CckjpTuIAAl9gFSBarZKOhNo8MTyG8=;
	h=To:Subject:From:Date:From;
	b=WIoIl6/wSqQ+3hqYkryBHg2cYgUCtvXb0EvLwD22ToxwAv9MuFGIVCB02UGM4g9RW
	 ek3Cf/OKn11GbOOtQk+dJ03MN5HxQVjohZgrJNdAMWK3W7WZNAQzE/FyGQfIjRFuOm
	 s0kl0L1qN0HLjf0Uc0D458/4nMGK2wNjtoWCXARt1UlIZQlJgJYHCqwOLEdoxucB9J
	 yoOi6KZ+rJijZPoHh8LM91qUWKO8Unxc26nO9dUcdPb8neFssn5nibLOTRZ11YZnJp
	 JC7odYy6QSB05v5lAfzQBTEf+5jkoJfXaDgrvM10QRemD5yU0vnVAF4hfAfZnC7cfW
	 Jq0vpqqmo7LaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C591CC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171488954275.25993.13550881845253061282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232f026e533a218dd2a84081ad8c560051045d0151aa301282f1222afbcac9cd
Date: Sun, 05 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714889542
