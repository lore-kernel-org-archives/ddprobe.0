Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD5A215F42
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743084595; cv=none; b=ZAWV+0f5vtCGcJyK+TWoCNS0yzu1R0eoyE/POypZrUceBOdRzzTEVNRJB0lcB2efwvhkx1Za9N17gjpOg1nq/bnTyDJ86FokvNv9yrX+1oDc6Q8GM6pl51dAtHvRjbmCZt8yE8VIlwwqt1JUOlNSjUK19sMMqOQw+8YNB4X+mzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743084595; c=relaxed/simple;
	bh=cd5KRFviPAEWcTbaHbdgdZ+zGmfeI+IJmtEURMFXJVY=;
	h=To:Subject:From:Message-Id:Date; b=u3Ylav1ZvvgV7DfXK1Dzay96BAKKc9sbhBhr8wBtfGDw5WStPn+MTgQ/sz4sE9u3nOIbeQ3b7OT3ZhGkP/lKAWG1yeUuPHeeVB/J+2QFNYiHFbLXGoIVeykXu5nQpAKjcLdAPhXfoCLSSp9bC6IzpcXXOL2VEXaEX60jNM+llhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGC0gfsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGC0gfsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF2CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743084593;
	bh=cd5KRFviPAEWcTbaHbdgdZ+zGmfeI+IJmtEURMFXJVY=;
	h=To:Subject:From:Date:From;
	b=dGC0gfsBBxvUFMeKlcwuPiqZc+jvY+MSizJFmKKD4RuWDaPd5rqC/O9MGsUp4+HKL
	 /87A6HZVAByJIiYtgLv31xNP5CbqdfjMAz3ixsrnOsTxEXn1fxMuMY9lOcUH+CR8xc
	 kCD5RVhMlQGPQ99iYv5fmcBe2xBGlVVhLUFsdXmyBjAkrMISwy/YvtAd0kCbyQgRcG
	 svlcPSbf/M7gqF7UrVtzPPqwhQZBIX9Co8AGqhlP6Ve+EuKVGJCmXov2D3/Oxe+hQ6
	 mDjczZWAZTm+OIqfxT+c42Wj1ndcYy7RmTJAKiLe41smhI6PymIFGNJ8X8Oj/Wavw6
	 KlsrfbXF+KADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE23C36010
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308459363.27528.16044941116382680847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7f9ea69d6e37db0bcdcb3a6af4e7fecd98383efab4b28a594af139b3f5d6bd
Date: Thu, 27 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743084593
