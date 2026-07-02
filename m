Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479054252AA
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782980314; cv=none; b=QY4UjzSQXGDS4INLWbcqQ9X9TaHThXNWdXLy0fzQDNtiswu70B+ab7OBi6FQSYkFPuctqoKdDqZyapkN4YgVlaZQXtq9uV2sbgXQtOOePOXsxeN3UCpbm1aOP/LNb2TSyICiqduux+edx8/lGzTwahA51A0PRzjKPsi3Spc7T38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782980314; c=relaxed/simple;
	bh=J8rbbrIT+dIHH12y7YAnb3nI8k2ErR8q6XTvuXEuEMQ=;
	h=To:Subject:From:Message-Id:Date; b=DqZrCn6AjWEGPCgef42/9ygSg6KN9QudeEnGlKVEp8NIHUFSANdAoFMiWcp1J4AGNSwsRQoZl1lVQo+925w5c9EpklJcCuuy7Cex/kYe4DDC1X3W7jfzCllHq2Zr3LOOqBWrIkPawlwbhuJmkuWlyjxQas58nmts8lgJdIYYrR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3PNhJMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3PNhJMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CC7C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782980313;
	bh=J8rbbrIT+dIHH12y7YAnb3nI8k2ErR8q6XTvuXEuEMQ=;
	h=To:Subject:From:Date:From;
	b=C3PNhJMoWYUQsk3lf9XX9alqriU/THfoDdXbfFZIjotOIo2Bsdpu/El4sQLty4BqY
	 PUlzptDjC64MylgcCRiIWWG+VzOXNryeBGvCnt5bMNnq8nL82k89Y+/cS4iZOfddOH
	 aIZxNEOP4RKDIOAvNH7r0GB9kRDyz4o5pqUh9/vCxjy4NE8jV5FclIRfzxzuNZfbTL
	 bZYafoIH934pq7D/LXaVv1P+zW7CjDe+e/KoO4CD/FnJTVzz8G3lnHwacn3kmDtVcA
	 dVDOE5PTfb3hq9JR7gsYAAoHhj3AQ7BTMtofL2JnWTz6a++ckMUejf1LvPcUFDubhJ
	 DCg3OTmV2zorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9615C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298031368.23309.10280102480843418941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7105a3ebcae95666326a0656685f078767276984c73b751854c9e2c6866fd370
Date: Thu, 02 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782980313
