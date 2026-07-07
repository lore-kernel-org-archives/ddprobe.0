Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A363F6C5F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783456714; cv=none; b=nod+EVygim6jhj23oRpJsl6zl0JaouTYLUsBlCJRAnvdRkQwMR/saNn/XTXepeYLy17IjWkjobwvUtfDyhYIA05ldRFChZwkdO63WinhPpmx6cO/qfLFl4lYgAcBsydfEbe69mSnhay3bCsmVJDWH+a/zEaUgJtDAdpkWBYbvu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783456714; c=relaxed/simple;
	bh=YvE2p1t+20vtsjgS9Y941/XLPxUAxjnj7XtxdTwXtKc=;
	h=To:Subject:From:Message-Id:Date; b=Iig67e/7/g8jRzL6nA2YP08laJxRjvF9LBuR5z17hVCcdGLcFO4AnsbwBTJtiGkexZOf/j/2CDy8JoJYU6FQHZwrqCdFp0cLQ9Or5//b+7oAyPAGtrCjP7MFr+csp5jL3m2wCNeS12qCB9ArDOH1FxmV6VOPJ6bt8F2QiDjj/nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE8PHSBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE8PHSBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CEDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783456713;
	bh=YvE2p1t+20vtsjgS9Y941/XLPxUAxjnj7XtxdTwXtKc=;
	h=To:Subject:From:Date:From;
	b=gE8PHSBEPdgFN8qL2Bv4LUj5MxY1XiLYnFyMumnLLc4zrNyCUjr+E10yp6nTTPB88
	 3zs4hZnlHaxrzpHGM3zXRd3BQYK40LwHHlHY6gq1gHN9rTZsCMK+ovC1OBDP6SrUu8
	 t6CPulOZhSXIZa71XMNFMQWkx7mrJ2j4tvqJjoAUNRZv3tKkr8BVCCg/ChRpLZ8G1a
	 BD91JhE01yr3r4tWsQghiurYkIImdq0mXuN2aXiv8ZCHQcQphDplOENkyxMkMKqr2A
	 2oAK+NhzmJv+UhYdE1X4WgoiK/z1EPTdUZI3fewcrFVobmUYfsGGbIW66D1WNnf49q
	 rAYeWSk2R7YYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A939FC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345671368.32309.424205379218547471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5969976743c700af3ebb3f7b6f3cdabc5c2a8e89bfdeea2e041b27db5331321
Date: Tue, 07 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783456713
