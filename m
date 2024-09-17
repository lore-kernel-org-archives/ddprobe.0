Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133103A8D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726548954; cv=none; b=mdxP8nBcwg2zmvt/cH0Iw2CVB/i/urrdWtVDGiAsT9ss6BSD1BwxyIqHNLrmbRkq3HQqtbsrv32MIfhxHxPMWemXjYKv84BncDtEALmsD+DMUb2IrjXqpnslYdR0+QIFkPuTUsfjhDGGBXxnIMIzNnbr6/RnpaoBXdQ1RdxbF1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726548954; c=relaxed/simple;
	bh=03TfI2xQp/w+mGpOMbncuZmUvEzdzz8YTDajPefLB1w=;
	h=To:Subject:From:Message-Id:Date; b=LSizLXFP1gyQlnn0z2p9JF3PaQ6KcUqQhxE+kRkm/2uw3BldVIY2fqQyBbREsurLypiZqMAQNECRsyhbCdDQiuvb8MHLfRX+UiD344bT+30OwLN3+0kN8Dr/053XdGtji8vQ8bAwuBV31Bcryw6Cx2yFXLMQ18iv6CB3u3ahTL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq5M/psU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq5M/psU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56D4C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726548953;
	bh=03TfI2xQp/w+mGpOMbncuZmUvEzdzz8YTDajPefLB1w=;
	h=To:Subject:From:Date:From;
	b=pq5M/psUIa8bwxxSakAWz7GtTrboxgOC5IP2xS/XMTvwUGz6K6Vx5/hLdIrWS2s1R
	 j9SsFTUcgnZmqYAx7vq/Xj4tCovdGC7yglgjofKZpr/CtALn0lKJV43Ij9mPVKq1kl
	 LqIzdu4VO/P6fI76rRYybJJm0qIHjE93J0sKBm9zrmyUnmTwkIK2CwEbbNXeWmBr0L
	 3YYEC5c5LeM0ouvZ2S4NwLhv/YlGElTbcKSYZwyu81KQVFwiKDdtTK9KFzvQZHbUcm
	 y9W1Z6wfBjX3mLgyzL7wdtrfPdqlSCjC1ycPBlHgw7Zw5/v1Y0sXHLjgKV7oJ+wrXO
	 90ZWyVI3IHQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92097C3ABD5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654895358.8062.1170857653116634581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee57b51fa0e02eda19712e36f8022fc3ce7cd542dedb298953f3cc1eb9f452ff
Date: Tue, 17 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726548953
