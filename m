Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C96437472
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784714914; cv=none; b=fmKFwSvzTMYvOjGUnyJInmTpC0gDD526cdURDnIiuSwJXEvg2luHHgO9+/uJc5DD/Yr1bVFhRTuuhW+GpyW+KhYUXGMcaC7ePFJs4FycUlELghjVJOjusiAS2Hg/jS8QDlNxyDPMJX7iTsxS2wRo/lmbpXM1z18a7zDCmgIWVOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784714914; c=relaxed/simple;
	bh=s6T5mAxoA4vQ9qoWmb2SfN+OtF/OTTdJKqXxaOgYUAk=;
	h=To:Subject:From:Message-Id:Date; b=CvcsmDhUp6IShrgJhOfz4CfgooJ3V6KqM7mxS8hg5UHAuKpmb1iF1pqydNhddLgBFuCLudIMs80PIJuTaNmkrF/jXDT/AQiU/cLp94mGewwOo8qya5JpXwsSoqd7sqDu8HY53qqZvr8g0DpB++JwlgE7bdG+y0+RCknmFHTDPYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aldiu+ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aldiu+ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40AD8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784714914;
	bh=s6T5mAxoA4vQ9qoWmb2SfN+OtF/OTTdJKqXxaOgYUAk=;
	h=To:Subject:From:Date:From;
	b=aldiu+uaQJxDroPQMC5mq2YUVeLqEA9nWB9J+5kVDyc46q+r/jVBFBA8XCKcbX9qZ
	 qCMny5gAWDRgyZ29fHZIbZS366VuOLY03lU65yznC3qETe3DRtqsbjAtbrG59IhU66
	 wAbz3Xzi017aYAmOmdVwnMd3z2zMoCQZCX1wI3osfwQER8mwWKW7Gqw8izCwLXZOEw
	 hBa9BVY2HCg+FcOmudniupNaws53JsJDvna9Aww8RFSI514gWgeBcttvskkPPUaIn/
	 zypZizYRkypsnicxptSb+2dJrVugKyhPWNoAcwgtGonylPpFXIideRP9PtsSXQGNjK
	 FVz+tAC2atNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD613C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471491381.7963.4853966234549033326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fe58e13dca017e08c27d7d5fdf2d9b9ff7acec5e8a6c13b1071298376efce3
Date: Wed, 22 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784714913
