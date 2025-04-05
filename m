Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564FE2E62A3
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743824394; cv=none; b=BAT6IwPcHNnwXmQSoaXX1OqN8oAtj8hmnHq9sR7cBe+BX27YR2w+ZNecXs8tF3wZjSH/sacLmrCgeYfT729E/PFucz798kpLzojm9LHxFZGcruqObf7gTfNYPdj4FKJZNavDvuzH/Qv/3MSb4+ZHqOt2cCyDwomdEJ6XWRqNw5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743824394; c=relaxed/simple;
	bh=rNmj/YHNEvnfipdvOBaGqf1+owVpBCOIJ0cBP87gPMM=;
	h=To:Subject:From:Message-Id:Date; b=LLWf8JCxKtL3nSazDgUcoqZWAhu68biN2rARaVk4fbUWhcBF6CbWrnsV+ak8ubC0NBHB/rrnZSQcnThtf7zjgF6+LGT3jzqS+wveqVJQW+tUWiztCossjNa0WUnqSPZzxYRH2f7NgLVqUM8oBMROZe3dgq7+zt91S0NuLnp5ToQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oilgUSN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oilgUSN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B714DC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743824393;
	bh=rNmj/YHNEvnfipdvOBaGqf1+owVpBCOIJ0cBP87gPMM=;
	h=To:Subject:From:Date:From;
	b=oilgUSN1KToR7JwZBBjITtr2EnK4QHRmD9l5BiKUOmkFjHi81+Kg7VV02h/dAk5/L
	 nWiCTK5HC9AOGs3Gk9kpndHOYNpLHLhmVTa72ox1vKTkTY/ThU1L43CGHqCWlIjhpj
	 9Qs2lBGIFW97zYzAYbSuq3QHWsr/YDgeB4SXOyDLtLs5FooHMqM120tsF1Nv4wNkAc
	 S/B+hMibmjswkdBkerWHwBJvYnadRqV7nV/pKr/zTjvWMNk6SzCZKa1r6Xwv1MKjou
	 krq92Pj80lVPP6uwnR6osk0JbSW14pwXvHP8KF010WAX+kwfGXUV6wGzdUMhQzIvkm
	 xmhI4ZySfLFLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9820FC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382439359.20038.3781424061898885408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5a72f095eb92c21a0a71d504f3b865c597435999969095b6f21b578ad22b88
Date: Sat, 05 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743824393
