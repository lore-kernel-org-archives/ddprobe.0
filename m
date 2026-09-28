Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469C83515DE
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790571034; cv=none; b=RH8Vto6PWaYQDmXkgXN/tjiEXnLBVkpVayWY/dC2fEerqAY0CLRgbBlTiKSHkhpz0PI5zS5VkjkE7UFTiAEVjVn1uEFgcKOaLPBFV6fejbNr00mj2OD6nT/m25u44PeYwRaLI9H4s3eyY09kB6FJZQnwUc/1s7d78x1VrQZVWKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790571034; c=relaxed/simple;
	bh=EY1xJFopHL49J0hd62Y1ebtNpO0egt2tqr7Rj7NFC8w=;
	h=To:Subject:From:Message-Id:Date; b=ETgLKE9vjEAC3l7MWsveMn0aaK8wB7qWbCVCQBITSham74Rzj5M53ij1wcxyXwoIK/QBr2oM8BpFtLoKYPWjaJYrD96AVwGYb+gT7JbKyr5j3QcD2697jEAIb7T6qvEnw/sgPTNyho4Ca0k1aJP90oKBH2OhJoAOJ00+C74w8z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoE3AP4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoE3AP4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9081C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790571033;
	bh=EY1xJFopHL49J0hd62Y1ebtNpO0egt2tqr7Rj7NFC8w=;
	h=To:Subject:From:Date:From;
	b=BoE3AP4ths6Q/MUgCIT0xu5KL/uRZirU7+IaYf9ZJmU6CrsPGhaAqRtmV+LRPs7Gy
	 lQxyjlPhE/laJ/qpGx5mpvuBqiBBEgKmZ/XPjRZD7ZZfaJE1UtlZqufpAvILDs9J2s
	 XdTX9s1YnIGXEi7P0sho0GQpD3mcRhpfgHQvIoEpPYsGQ//PfuV5pXWgnDhqPrA5IT
	 MTh5b899JFxDOIjPHu1f9KWTdPeBgsIwVfATF5pOHKPMvV3+wIcH7tVS5xHuIHJ6sd
	 TwrOtYZpS3oUa/pOpi9ynIAf7j6AEKWBpMLuU1reWcJBpmtz+3ZfW1S0CgREw1wEmA
	 KPaEvPMriFddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40CEC98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057103370.5684.15485170768082409698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a07c74c8d0dfb329fcf5ff60ef3347c9c8288a27027af55d16593f27b143be4
Date: Mon, 28 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790571033
