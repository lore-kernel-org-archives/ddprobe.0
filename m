Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5065927702
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726383954; cv=none; b=Zo0k2yqYB8XTNQgdCemMgG9vzQ1QLjCsrdllf0G2/4CWZvvlXGa2+McoIcIPZaMjtrWskTG6bPrCogbgiSp6LiLbKK5E/OAY/pNA7Nu5gX4o6Q1FRy83ubNK6xnc9Md9IjxESaSGGP6wTe6Q6h8gFG4/gzHhS3xcviG6Q/bru0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726383954; c=relaxed/simple;
	bh=Y9HhdOZPF3S4v/sFhDEU4w8Czq/FYdncn+jjR6RkSU0=;
	h=To:Subject:From:Message-Id:Date; b=iEV1OdJebe4W3GolbpWVWcz0Ir53b+qjrSLNffEBF9VaMtQeoukeG309jD8klxClTEQLw9BZFGwvWtEP4GEhbO5nqDp72/jWejzSnf2jy5U3c+djLcmuLw5RY5R+hgHYUndb3UEFT9MUzTFyAiZsdLpisV+bj52ZirjwFNoaX30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTWxdDsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTWxdDsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79C5C4CEC4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726383953;
	bh=Y9HhdOZPF3S4v/sFhDEU4w8Czq/FYdncn+jjR6RkSU0=;
	h=To:Subject:From:Date:From;
	b=XTWxdDslIvYJ+Q13RF/I8kfhnrAKGahwL5Sct1LD8G/dBpiDtBqetIAhcLhh6m5nK
	 Wx3PNbadKtQBvKEioqvNMryBkvvhRQxjZK+pBES5jFa8t+PLTu3Wl691ZSX1q7Sjgj
	 Kpo8P2WsDluIOHl1uXSNxERZGjj38b0Ra52OkgRjg8DF2EclFNM1OZPo0rwic4Qg/2
	 watioq8wSOhiBdR7iFR/uAkEApH81ZIWSRG2RPGhUhGbjSbn/z5MW/M52v5b/lc9qS
	 W8kXLNYsCQja170SIoUuAggZoGn9cMIF7O74aDLM4QvHYBfsMPAkjMZKxGieakNMkm
	 ZWAnJ7Fl6liKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2664C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638395363.2126.16266462229954871097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cf812eefc7d946aa1aa4d2c157a51be2eb1a8ee952e8ce7ac9501947b025a1
Date: Sun, 15 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726383953
