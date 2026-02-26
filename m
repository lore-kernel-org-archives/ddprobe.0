Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D803B3314DC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772108093; cv=none; b=k1F7OcNVozc7IdF8zN/wzGK7GRd58ZTd0M22RxpRopLoh0sxEe6PisRpIByN0KwPBjiGWyHRU0dwKxBsum6CM2Jz/94wlJhy5g6BEHeIN8BOUjl1T2j/WILE3rq3XqwYl/2XFMTvkiOMwIdAZoEDODz0VxxmxGdMyLu0YO+iq9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772108093; c=relaxed/simple;
	bh=RjGcTWafC1lx87odTnjpIp6JoCHh9ac1G4Qk5ckLWz8=;
	h=To:Subject:From:Message-Id:Date; b=r5dujGGbBGgsXmYmiFuQ1LqfFCxVARWRCTPfQB4xrHUrX2M0wXYNkax7G6JODdavCJoHhZQEqijPP/IEzawzIxzFAlcMu/T+rsGnB3PdquOr4IWrp/zbzu8jMN2525bpLTUHYlNST3bLqARZ2XhLszKGVB4rTXgfSSJnBRbN72o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL+YkoRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL+YkoRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF99C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772108093;
	bh=RjGcTWafC1lx87odTnjpIp6JoCHh9ac1G4Qk5ckLWz8=;
	h=To:Subject:From:Date:From;
	b=fL+YkoRsIWX6A9WFs1H19L/uvbYiR03RoXw/GxX7TWemjOfvTlvxmGCc8ntQD4cUy
	 yrrYtDRKXXGXCFiVW1p5GeYryntvYKRwhFhNhTDfyF740dHtEu8EEMJIhS6XTOv5Ad
	 e9jgG7JTK5lTYwqkjxlJQAIevoIUmRHvvxxFuK0WbRqsGOO/wGRmLVr3HMPNcc3bWJ
	 S7c0WE6yPvdMLXsDh7v5nv9GjuNRV9sUkiLC5bGcRv1/a0cj0gmmPUE1/ubgosxZxj
	 bUjn00JFUI9KgcxBgxjm1/jiTk4+t7OWilCElACh5rcfXLyfZvSz5hnn30O8mLTjHd
	 rw2vvQi5RrMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A30FC5915
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210809361.15738.6887987173756745387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e69c7bcbdce3e4847e9703c543965188375630db58dcde555a604ec25fa57a5
Date: Thu, 26 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772108093
