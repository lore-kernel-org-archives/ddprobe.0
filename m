Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDC13594F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736910954; cv=none; b=A0ygxohQBswKgf5XdIcw2YaYTuQ9tlJV52FVN+7xzohWTkn4zBA2l/rq6qKcwsSlwlrwmvuQ/k37PjjT19Vu5EbwkLqxq/WxCZzuTyurmmgcDxoBcpgheZxNF1ttLdvKAPaY+aFggiub6BKWKIv9LI8GZ1fhx1uEm1+r6+fZcHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736910954; c=relaxed/simple;
	bh=fDj3P4Q51Op/yEe/uNw4GdF1UthgFk3sIudbGe7GMA4=;
	h=To:Subject:From:Message-Id:Date; b=CQ0yPk50cOQgM0fvMQzaJ6DIVVnKHjJXRNIbsT+BPHVGsW3PXnWiBRi/l8IXXqlxnfviPzoYHe9IqcQ7Ud+QAPzKBBJauIQRMktCXPTGYIAyJzi0H2Ux51FzfiUJ5qA7zOMRqiHImmGthHpW2Vq5HZp+Zlv2EJqMRiC7je/01Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTqpGtie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTqpGtie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736910953;
	bh=fDj3P4Q51Op/yEe/uNw4GdF1UthgFk3sIudbGe7GMA4=;
	h=To:Subject:From:Date:From;
	b=lTqpGtiegcvD49sSljaoAY6mjErb49YLQV7g1iH55qrzfiJSpQvUWSalwh0bRPIzM
	 FErteepK8kCAszjQwPc104QAI9sbYy/LFIHWdLh3P9NszxrVnR3k1ws9v0q1CtEJFi
	 jqMfPUlWo+nplUWN4Nj9uU06INDT65VJZxWM1gF+Ne6xsRbro4W+/l2FM/SFRnib3f
	 5zRcz4iv1hBVlYM++1bGKW6XAf4e1t9hXZGWDTTo5ksj06tlfIjjAhAKIG+ixp20XV
	 FshC0r8JpHOfwQyTAHGS1xK3LSflnQNezos95YEPyALI2IOGAmWtFH9sPRId4fq5vv
	 C1ulapxSrg2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB89C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691095358.18182.10201873890815655872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d3a3ddd5930b2c02981b01cca9a0c14479680c464108dc724030a5f18534d6
Date: Wed, 15 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736910953
