Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A7215F53
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750346394; cv=none; b=XYKAL497BVtdm8PNuLDZbY1uprB15U+APE1XeAchHKfB8B5Z2Y3bwW/yvWtjhpLQCnmNHjPscO1hk3W0HtYJ4ezxM5Xu2a2G50g9lAFYXO/kb+AijYKEfLXdyIkH4DJ7NjYg1yrP8xyWy+ee6/1D/Jrv5ilMKutMqK9ruyops2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750346394; c=relaxed/simple;
	bh=P2Gk7tVO+jkXpBEzMit2cpTedHfx2MwSrbRXC4pAZqM=;
	h=To:Subject:From:Message-Id:Date; b=DPmG48knUyxUy9A6Wr1zioE1gCr3lp/N8P3+vUo20Z6UXCrM6a2KHrVu3BS4O0G3PioK3N7/cFFYS5lr7FG/5b5VppwoP9DH4nKP/HN0kvbxSkjkbAv+0w5M6OZXxOMHk85hpA7Yrq5Jr3GOPFMyxSmeU0dbP6ZmuFi8FFIGLr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scVz7GZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scVz7GZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3232C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750346393;
	bh=P2Gk7tVO+jkXpBEzMit2cpTedHfx2MwSrbRXC4pAZqM=;
	h=To:Subject:From:Date:From;
	b=scVz7GZoPeVAp7Y+tmgMjJcKxNMHteTuBfNlWp6YIS71UN3Pmat7AV0VnnvEfNWWW
	 Diq33uyE1T3wAeBLs2Nq27RnWQzg4Nt95u6Y9BqOtd1dJ10P9lXvHDvlHpwg+U00I0
	 6CfnWY66iEsoj27AZ0lVFfY+Rvb00Epp/ptR2CxRP3/z45/W4BLer4yFLxzI+J3AcR
	 PNcD9k+48zIb9A0Rwa8WIn+wVZTwP0EfGljFIko0FGnJB2HL6lZGaqwdwKQZSL9dv1
	 yoLiO7STdS9dlD52SEbC8x2Q2qhn1hJMm2lM84d9rZ40QCZ6h36+ekzxnKYlzm/bEF
	 4r5oW5nTGuSow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CCC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034639358.7063.15888893487616174467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2c40dfc841d0f2685d10ebef9980f3670f1e9145f2071960afa9091c9a5361
Date: Thu, 19 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750346393
