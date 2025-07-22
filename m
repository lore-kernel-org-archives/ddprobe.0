Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24918136658
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753159194; cv=none; b=vDOObVgkieU6bOjJfZL1apjtHmOWsIv4oMrwuVsrnFkNXSyew/676gcv0LErkRqrHaKUHfcrRXOixUzS8BWXNF7yhyW0psRNur3j5gj79bbvu4Sgu8rmdB0yt+qp+Y+0Q5gSU9OSGq+JvQrbYCbQWMam7ysFjY3tA3VmKn72L08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753159194; c=relaxed/simple;
	bh=UXmu0PQP1J6aG8rAuAJF7/fFoQ9zJWExfWW3z0VYeYY=;
	h=To:Subject:From:Message-Id:Date; b=JF13WXx919js3h5VhI+HpvH/B/aFOHlq/4LNCB6c27TIKIhkudphTuhEJdazEaRHHDEJrfoAJlZpc0+TEtEohfkqNI4DloWFfFDh3LGS6LLYMPE0pKPllpIXOdwl/43+ylnKLHCm8T/meexMGNmCyeBFpZgHXVHmuJgC/NI8ZtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvbR+FF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvbR+FF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A405FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753159193;
	bh=UXmu0PQP1J6aG8rAuAJF7/fFoQ9zJWExfWW3z0VYeYY=;
	h=To:Subject:From:Date:From;
	b=mvbR+FF8B+Lav/gaGIoQOplpxHjExciRCSCtj94yDRfGkxQUHfXhB/a9jw4pgBmxF
	 a13HLzuvu5rWlGrTHNFJiNVbMDmFR82H3nXuWGkcKgkPC0tl6gW6lR0KtHsGjKb56e
	 QedYdq63NU9brqgj//TD4JPTHHa9x0Mgibkz0lAnAaExAbJYvOv7c+WdgFXwuYpqBu
	 WRV9gjrIaakwuaqt+dVAqhfLTHVurECXa2l0tPQ4Z8Oa+dq3wEZL6LFjI2abBjDAcM
	 09TxePyFoFKCWoxQmo65xQIjCw6X6Xxd/NUkGLzy7RKe9M0ax2i2t27RqCWEctmIfh
	 kT6bvUhnTLj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B32C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315919358.14787.2185464339615214838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580b03c8d14670b5375206ee3376105745e151adc14146e35957ac104a2c7eb1
Date: Tue, 22 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753159193
