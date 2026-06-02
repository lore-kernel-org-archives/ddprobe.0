Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E203E6DD3
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780407274; cv=none; b=OentXU0MlLwR1YTfQXfAKqtyty8+xbitRwfLbi6mwQOOFhakW3OLhEs5b5pRjFABsZE2Bq5bY04ThJCjZ/LmO52xL1dUrXm1yuVqD3Uypc0xpiOgEZ/8A/iHUtyscMK9nxlqsKj5hVKktZuxpQxjgmlIxhjXRWkPofKh8qvwobU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780407274; c=relaxed/simple;
	bh=mpXf8HtEaw+FFppItonc/PFwike15SlLJQQjW1vBuHo=;
	h=To:Subject:From:Message-Id:Date; b=C46SeqSY1UZ2E9gJi2UAX52myU8LHfQmWhGq9OIKwCU00e6iBPQODvf/gVdG5KtXn8yfBTHdtRtHQ/J1Nyj81FTpLE7GE56LkvAp1D/9XSSGCgYkJBpyO47o/SkSkp6DKPG5ThznInrBjKFefa17mEKJs+EdFWjmnNLq/ilkcvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuE68FKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuE68FKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D1EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780407273;
	bh=mpXf8HtEaw+FFppItonc/PFwike15SlLJQQjW1vBuHo=;
	h=To:Subject:From:Date:From;
	b=cuE68FKGnjwj25VpFxwbAJx9tCnrxPezD7CPU5/PsyprI53qvCsjD+1XHbDDJg+bE
	 8Dfz8RACcC+Km3kWBaEwgQRFT7PffE9cKfwJpdMZYQFN3l48k7zTI1YqYmN24H+OUd
	 MF535pwWCiieQxoaciFYiPxF1VKUePIRV+aARhiQKLjp51TtJGyrOmMjMJWe5TUHuY
	 JkLTy5lImWMMQj4wHgig9JKTuxDBvH/Yjluah+gMnXpyohkPpk1swh9ZFbl9cKY+46
	 tGXdq90OLbou4UWTmAF9ruP3KZBVLHe3Pyv/IGmPVru8e/Y4eqHdb6+fqZT92ZMnPJ
	 NWR9gbmpaDu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D2CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040727369.15146.15770906672349968618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286160a7554ef99d0d9f224e19e524654fd35704fd4eff8f04a72444313e0c6f
Date: Tue, 02 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780407273
