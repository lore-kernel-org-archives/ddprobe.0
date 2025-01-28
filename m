Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555A317A586
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738058154; cv=none; b=uXLeaOicLACLLaBHneOtyl3IqltP+tqbzwbQzNvtX42X1EGe2oUHCcMt7v7KEbeknYw+YD1RucCyT6X7dK9q0DEmcpObSLO/P0vzxSwJPhcqPmMY+qqEAlGgr0QspgE04Vt9LBJkSPdo9GC5rmwXLP4t3Qe0vFLDcuvrmaMuvdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738058154; c=relaxed/simple;
	bh=D8NEKbV6nwrAp8LZJpE1uvJfB24X+vya2yn1XegsQK0=;
	h=To:Subject:From:Message-Id:Date; b=N7W9bHIrVrxXZOrPKKJ2jFP+osP/cX8abfaqfNT+xr8rSGIFtxRLrAOpSvl+nRwCuwOs5HDXnM4elwQMDJ0QtlZcH/ns26/GjsjS5llhPJBw6nfMOvxXEJNsL4ijM1f4DoKsxdfbQy01PEgxtFpxnOdAA3F6ki0wNd0QDZIQx+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTCT4t4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTCT4t4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C200AC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738058153;
	bh=D8NEKbV6nwrAp8LZJpE1uvJfB24X+vya2yn1XegsQK0=;
	h=To:Subject:From:Date:From;
	b=HTCT4t4zQpdSP0+EwUfxWwyRCgeVDMb+lxsuPOM0R3T3UBP9VafosaMSQoIpogRn6
	 Gig5Tj8Uqkka0WXANd6lTI3r613p9fuUxBs9b17WVD6UQGcJ7Hkixks49k/STH4jZX
	 jv5AcTicKqMnosWDkIUc9RHhzAWZUwAD+03xBnpwJXHDK1ZjZNJqCT9RK1C7MFuMlO
	 uV+4L7ATYSwUtudRfAxxXIven5otz8SwRd50nCfLNYqw9tKJ/fE0+r0HfD5lc21Voi
	 GLxd/j1WGgDujMYhdKu7eEeW1xTzdbJaAGAEgRLlHKSFbe6nzxN8UhJDvyTg/WNu/s
	 KGScCFsxZ2lRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C78C02191
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805815367.31701.16492790991677485727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595d431151a8e2d2719a2604e096607211528c2fbaa45e98c5d9cdf4df2e0511
Date: Tue, 28 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738058153
