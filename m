Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B2C1A9B46
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753238994; cv=none; b=pr4BuFSqoNLevFjdR9x+e+ukAVgh3uVgTGLBIOmJPvs/m1bWW08YxfcPUDr7HTXWgbi8ytfECeP2lTXFyCpBPm4ddpzEWPqOi7RCfcOeYxDdqWY5aHpvNDNYCYBlfDlmg8kTtrqESTSaouXBDOYxNVi7AT0aWhx6bCwLXpR4kYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753238994; c=relaxed/simple;
	bh=X+lCOBq0ftqHnpaFba7u0doQ9Mow3jQyNvLxRb5j8NU=;
	h=To:Subject:From:Message-Id:Date; b=OCxIVRyBwaNeBFZl1CfmjHmPBwTQDeCEGhnctd8vK6JqWejXqfkgIc5KXAscwq6AQVZKU461DEmQ3jJ7AseAdv4TLaHkjemZo2gHST/KIkI2MPKyiYb69OWP1mMWf0mIqJVese37KE7dtMW6t3Pj6v+ZxQENWoeNbczqyBJ4tqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcHQ0Sxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcHQ0Sxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 970CBC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753238993;
	bh=X+lCOBq0ftqHnpaFba7u0doQ9Mow3jQyNvLxRb5j8NU=;
	h=To:Subject:From:Date:From;
	b=LcHQ0Sxzwp8s3F423X/ahY6w2Lfofp2q16FEfi06zLLGC8FJWXky5UndLTtAAfPC5
	 VWaXKWWEraXgR5fgiNM/la81fnbaIvOmu18AUlAGzGiC/P4dXjkdjbK3/TZWo9xfZc
	 4uFnW/1b5Z5lssKz7Ud1EqtyXXAV/iOASqy7gkTwHKrLXRGfU+uhUfy8fk55Hv7s/Q
	 PZtmhkNMFHsXl18Y2aPpUfjWmQmdXOyECkyxhSj/acEct1tWssqafgQpEBMrFEq38S
	 RvDfHpIYj0pfaVfKYGBSJNy42M8WYImdgzQBpzXupt7msgNiscA1TRXH3KWRFWDw11
	 D+7ahB9qw2DMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE22C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323899357.13153.3719215137470283166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8361439c7eccd66d82ebd5e1ff3d6da5cb904ad8efc78bbad1801833a4c964f7
Date: Wed, 23 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753238993
