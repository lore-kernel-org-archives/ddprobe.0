Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2FB279DC9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777667254; cv=none; b=ijEV+m0/KFNDJ0iva4VtwIOqGyGukX1cZBaE7EdsZipxOHuS4z+4kLPB6VKNamXN5JdJ8b70lr3h+k+UikoyezOdQA2t8Xh9py3MhoqupUbwq2MHWns+skKUEddkwVEji0hQys3fREdrqjW2w2Hnh12iqvvn/otpy+ORxpcrrH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777667254; c=relaxed/simple;
	bh=1L827d1KOGHveMOpsZq2MonZz4MjG6ob2/ZP0BW+sL0=;
	h=To:Subject:From:Message-Id:Date; b=kloqxkMJtw0dWZqC0pTSDi6bfbQ6BnRHW8zotOGAwfkd6toAhYLe7casuRuLu2c6zgUXkb5u6/5ehsLZjNVKbsiofWXtHLz2kOg0mWLOJ8OvIMIWIJTbKM5jkoSL3j+ByBd23NZjpXAL4WT/pfERC9LQW7x8ucSLRDJkPj5eF8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL5bQ7mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL5bQ7mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C090EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777667253;
	bh=1L827d1KOGHveMOpsZq2MonZz4MjG6ob2/ZP0BW+sL0=;
	h=To:Subject:From:Date:From;
	b=CL5bQ7moUjC+oi3Y9X4OH+++WPeCQYr8lz2yqd9+lE7kjYPTX36DrS6JpDWq7Bh7P
	 kJC2RsjTevApyUJq3/4OAqiMlRuodMLfy16PHEr77W9dZF/BjyvNE2cSztwal8dHbc
	 qOzuAXbZkFOhkg88RCWv7gx9blbEKOuqvfeqT1f92Acm56IZ1+/ti1ZXMr8gpSAemU
	 H6jUqnUJklUF5d9MPoExHcwmG88KlpDkqQj0H+erHOIkPjVMWcs96acCrlD1Hai1wu
	 F/ePfFWwh2cLVlG0Lcv74cLdmw266uv3izfmc095rambC5koX/IYE0YyRTumCVlA87
	 jcyPrVrrFdCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD629CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766725368.29746.1973176579498275654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509ac4657114f025fed32f2076105d1cbcb08e7b5b06191dabda91afedd11398
Date: Fri, 01 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777667253
