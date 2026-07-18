Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AC316CD33
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784363314; cv=none; b=eAnrSijZqzeQhpIvRVEjJsDFrHkqveEhV0Na3W+FgyBUyaYtQEs1H/H36xRG/eP5AZnxMPplidU62v8BEiUXtLwuBuCIMe4OdK8Dn+mGkImbOk5oUB4kwfVG1NtXt3kmXV6FEXE2O9Hn1bAXaDzlEiLKueQ+C3tMttEsWmaLGY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784363314; c=relaxed/simple;
	bh=OswyjueWTkAKom5drbcB+xKhn1IOwKJhF2i7HwsYFlM=;
	h=To:Subject:From:Message-Id:Date; b=p2jsKdRfRpe3Qn6bvLYzB1vtjhF9In28vF7gKmo95xxkO3qMlMzvkHdxAc7Fi4UBhJ7LMttEFgOOkI/aqdIi+uBMmu7LvO4hSNT1oW8aZZ6Gmke788H8BR+mIyV6Ydkx1nOoowslSz+UaruF8SYT2Pr8HJUgcUqRzSAbCkYay5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAIF8wu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAIF8wu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA01C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784363313;
	bh=OswyjueWTkAKom5drbcB+xKhn1IOwKJhF2i7HwsYFlM=;
	h=To:Subject:From:Date:From;
	b=bAIF8wu78pbdNIfTFay9nbgL0r1dHmxH3WE7X3DJwMw/5Xzbe8iB6MGSns9SZC+OS
	 HTRF1J5zGpZdzrUHC6N/MjguWWWNDk3UALS+hYZNqEuOGyitbwNSLDeafruEgs69bn
	 7UmwJrqXfRdslQAeSkBTcqU5jXebk4DFhzB2ZPsUY67BErs6OqoE6PFnWdDW12DPgu
	 aqbmoMTpbjW/jw9PQ9ZgJ3AIW8W6eoCKVJNcAu51+RB/7zcnz9RQY04QEVpTtXOQu7
	 kW4xYRHEaYxWT0loU1f3wybgg4mmzhZOon2pHLoRigfS5wZD+isZjkNKK7njjchtol
	 8hEK/b6ZNhfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87CFC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436331368.2401.8742932188050544859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7db11e7ef5bdca8a211441f600613cd8ecf79aec1d430edd5b30996cfd3b157
Date: Sat, 18 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784363313
