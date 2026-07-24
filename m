Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B504543F0AC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784909434; cv=none; b=lt8NjpoxlleItIVuP9lX1iYvCcKt2gy9IoISKUgiFWl1Tp6RPx1in6f7o9APQX5yWRDIiclV+ow2Qxfw4zCVOWgVJSdMHNprL2vCCbabmSzWfLnFuTtXSqpFfZlP/aEJuoOpPp1yhww8UNTIQ9y1VmiEirszISmbQNu+F9wYPxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784909434; c=relaxed/simple;
	bh=7aE32R1LyhqbmWe8X/pQkt0mx+yVZ0kjx+Wuu6CdQjI=;
	h=To:Subject:From:Message-Id:Date; b=ZyCtQG4Wc7PfsPBMAo5nhEhY/OkonV4KuQbJCH18P+F7uiwr/dnn5wyKO0qKHTLHujMMKflLnRTLS9Eaon9dkBLu3UmPiMNBIEzuwagx1HM+/yv5k+Jh1/iOvf/c7Twgt46PGEnfkTjSUe3jkaOdCMQ1inOS0hdyhScY/z135Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGI7ezza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGI7ezza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEB2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784909433;
	bh=7aE32R1LyhqbmWe8X/pQkt0mx+yVZ0kjx+Wuu6CdQjI=;
	h=To:Subject:From:Date:From;
	b=vGI7ezzawgFdiz1qS0Kv6EDtDJ+nl8fOVVaMoFogXTabehvvVcTIccqzBiC5t4YVi
	 mxyyN+Og0AxzhLH9O7aC76obvSBwEByCZe5HPYpu1cT9M0FK0ZRqbSAzFap98Ft4cK
	 9nfRMDW0VP3dWiRa7E74FHcJ6Vp12i+K+CVM+jYAz7FWKWK6sSfSRbqoOFqj/oGxch
	 pAQa9gCmHbxSSJggwk4Rq/GqcZw9dEXbwqo4yCp5bi5AcGQg24fcS2uIjaWfrgcWOM
	 pTm39oM8ssZqUQjkkiA0ELSFzUxPdCRpSrRxbKHYXpM7c41lWISBfM3m6sLZIexYZY
	 4/xJkvxA8bGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8944C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490943368.9753.18412794728592242774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2097971fbeeb06b2a49b6a2cfd8ac06a2e96d62d8d15d171c89618750d3238
Date: Fri, 24 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784909433
