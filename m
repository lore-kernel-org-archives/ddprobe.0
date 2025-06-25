Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1315E2C15A6
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750850994; cv=none; b=dlibT+pKms3+INy2vMEgF9RTDDFadckHt/3PPPkbcAUn+C3iNQkyzE5HOt/c9gJSysf81OZAGjvN6fAphlpSukIxnZcsz3UEIZ0RWaCFbTdJnHEPiwywo/wDBOPrXWJZZQFuBGUe0o8GH7KAoS4b0qWlWM9Hl9JPLh+Bf7cDzaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750850994; c=relaxed/simple;
	bh=Mv+t6x8TnHw6y/3+ANQckRH/Bg8nTlaGhgBLerQixzQ=;
	h=To:Subject:From:Message-Id:Date; b=vFIgKuzJzOnujYRB4KM/gOsUZIE1/KW/k/Glmk/e1ZCB2iGsVs8BP8Rc3ttdd7sKLWN4VWCjRqB0jyqWZr/hlgn2NlxcGbVGCxscfR4Z32P4XC4YosGYGfVdQAx2PVRQ2OxV8/NKN2pxR955UkOgu14h92hZlCoju1XiZuf6SVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlDVGb6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlDVGb6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE6DC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750850993;
	bh=Mv+t6x8TnHw6y/3+ANQckRH/Bg8nTlaGhgBLerQixzQ=;
	h=To:Subject:From:Date:From;
	b=IlDVGb6qWPSM6RLbhXpiCPpqgJIE2Sy2b2hr1EEnza9oWE7Yl1bH0+by8ekFTtaf7
	 ZviI4zFnMfKLlp1vvNchGaFBgqPf5kZcZyVsyzf95c4w7ZbYBuM4Sp4Fx6ydveW8A9
	 PoyuH/QxLYSDklTJM7Fy+wOCVcPRS6MASC23WYB1HFeRmnA2mqiCMWwQNHmW2SjPkH
	 yth9l2tPOzFI5mq+dhjD8ylIHn968AcOj9v021IW5l+R0uuf0H2JBEcKBVpiP6WCkq
	 j/+8EtaVWpKDo0EpAInmywyZFEqfQIHWFa7XS/ZVbemUuUYl4e5PxWAmQJwXisXWoJ
	 sB/CN0xmR2mCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA13C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085099357.31952.7175009236525592787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fb039e31db092961b4f5f7ae21dbd08085acb8318bc62b3e29e085dc340ec4
Date: Wed, 25 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750850993
