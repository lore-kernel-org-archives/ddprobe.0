Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1016F4314F
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774164294; cv=none; b=nKzJhW5lNauYVvz6rkO0w0+E8A7j/3Qy/hVx53+6IfCwo37zKHaLLJPPMSQDmZF4dO1x+WHAJSsCr+COPXFVFqgVlnInweqHScImqftLAkd6GYqLyQBQS4oiPzxH13pCg8dLCq94xMLwz+Zt4GAFmvWar4XqdpLL0dugWLkSW/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774164294; c=relaxed/simple;
	bh=o9/PoRbUKWmC12H4EeoNEC5hEPZITrUC0wKjHokBj4Y=;
	h=To:Subject:From:Message-Id:Date; b=Jz+o/caz2mXjwHRpSuM3eJYQlA/e38C2BOSxlcvXf8KH0Lu/1p7h4kqXy81yQgo2AL1MeI2ZVkHb1At6y0w2oupJMSO/Tl6/PSQ7NpPPFUl+ZE2/8gGazZBYPuC1VPGl9cJPYUjmPvUpYRm0RiArmcjYhiBVAkb4NV4FGk+5Sdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mi6KD8fK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi6KD8fK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F76C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774164293;
	bh=o9/PoRbUKWmC12H4EeoNEC5hEPZITrUC0wKjHokBj4Y=;
	h=To:Subject:From:Date:From;
	b=mi6KD8fKkXN30SaPCnHaOOj39Jek1yOrqnmZto4GOv66m6TTUDJ5+B9yRfjPEt/dH
	 GAqp+9YhPRstoTRDw0uut6gGNeSkl8KNCveP4JhuIYp+Ioc0y/+vIjeGeZkB7adi6a
	 NGKrOQAgrp/aPn33GQPWnX2ftpeQkrP8ajQfuqPlbSi6C9IaMTTOrqzWeNfHKDh9Ap
	 0nthnuuN2/VgbrM2IdQGMEDh4woXpD2eREM6f5FZy76R71klJq3pGYpnZtQmhHO8YN
	 BapZ0daYpoBGGcgtsBedBOfpVYP48qtZuBSyMtrUzs9+dGB7389DRGuRsAQnqqOy1c
	 tWxtgfE1by2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91531FC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416429357.30657.2568274648766559322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74b9ca9f257be56cbe0d3af8b6c787512eef1ad3b4d01a51c019ee561d60d3a
Date: Sun, 22 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774164293
