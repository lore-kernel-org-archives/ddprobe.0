Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1089C395AF8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780647274; cv=none; b=ET+rja6PpyetbqdpvzdPKJhtO4uJJaM5rxtKdcJ6kEgAr4DVqBvUb286i0V42tgXwKCg7WY4JpWK7cGMRZUvZ9jIE1dRhAskzj+yc+e/DTA6cVDmMDhXYFGGxlnGAeqXtSLVPheb5DJB7Ut5eUSX0Cb2ZrlumshgDld7cY50r98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780647274; c=relaxed/simple;
	bh=FnkBSeG4OHu6iQsYGNXOqGMQVjbT5lcoDMwp9ot6KTA=;
	h=To:Subject:From:Message-Id:Date; b=l2p2a42/eJQ8dbOkDdt/kfGPJIFb1JB/4jvjG1/hRtQVe7nrMUAMtEndxvloJ6hcfSRKbydygUIUMSlvav3ASxyIS8QFMBVukkxQSvrQ5bus+y8NpStQT+lL5wYrqKm00+xkw1uekXZqsM+poZcEl6WlSbJvAtMUQ+KUyAx+Y0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbKkWvjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbKkWvjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC406C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780647273;
	bh=FnkBSeG4OHu6iQsYGNXOqGMQVjbT5lcoDMwp9ot6KTA=;
	h=To:Subject:From:Date:From;
	b=EbKkWvjyfPLQRTIOSboH4oN4APMXTF0Xi75RAfoCfVfg7NIsmYgKOfBzJasoitD0L
	 7JgluzRhA3CbomzMvy30eMMQF7nKMSmAdtPaO2wem/Yn4xZgllQPU8Wxb+YUJBouOB
	 NM0lxsvWWMAy8KcmS2d5ykzjU8dWSPvJC7vLYx+vXAhPOcIHDJc2Y8ZmJmblJfGpA8
	 VQgeuJAf7cidSP/7ZV7wAxlIIOA/CnZAHK+4EBTDHDQ8q3Qr2l7T0l1f38k8s4UZu0
	 +1/6TCRsmhXNrJLilvOmKIoz2w7roLqN89jDIDKfosfVytmuyQfL9Xr4bVpnY/cong
	 TE0WCZpQAWgJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFF2CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064727370.22416.6800822620310158576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e5f2a21f5482c2cea3f963f8e4d6eb1bedf442df066d4c88b54d85b50cac2e
Date: Fri, 05 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780647273
