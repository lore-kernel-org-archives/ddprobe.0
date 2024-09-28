Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBBAF82488
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727561153; cv=none; b=kmrzpRzL1pro3RKZXNf4RNgIXIeY/3KVo1ASjZPGCDe8nejBr7DszNqepbeWU8YhnRR08qwmB1Wi/jzHJi5pQ0/bWYvoB1K3/px4TvJbCILS38Q6S1D4yqqKND1WDsmOj3kdZGBMJvc1UzLDjrUxZZV6XGS8bkHal8BT1YySklo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727561153; c=relaxed/simple;
	bh=0qc0CNilrVAeNx2m6wIQlhQgxZlYoQ7Bglt8yThj+tc=;
	h=To:Subject:From:Message-Id:Date; b=fib/SWnrMaCIXkMHmRmTvugi/rfoLU5jNkg8yLbMV0cl05YMG3z8MF6fvU5qQC9g6v+H4lT5/3mEaRLJunnjsyTgMjwAzOVz8dRuJfW1uSKWohiALjsaCWg49HamdSb8cvHgV8fCqdaNZI3/qRZLGeVNRvl6SuGdJFBUeeXLoCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpQKxcRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpQKxcRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B093EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727561153;
	bh=0qc0CNilrVAeNx2m6wIQlhQgxZlYoQ7Bglt8yThj+tc=;
	h=To:Subject:From:Date:From;
	b=KpQKxcRzWQ2DR5lewTY8/o8rC9r0i4QNFlokQUhgCXxI1zYXfadbAjT5F7CEWGW5q
	 0M5e1crvNoWJS00UsnGXZLCw2VxR43CPdnY0/fXigPgUmRwo/Mxj3H5I9CMWGUAaBf
	 cQvkMoYyeSYRNd9F/pMvbUbSXMdSo7eI4FYkAnucLtOgh+xpdl47tEJFvGwDR5g+TL
	 XQYs2wsWbINUo16SfFTyUIBZ/8dCtl02+7uWikBS79cr7iGFPstLIHSxypvWcf+yTS
	 yTxQuBnXwxfuQf4/31YBdEeGEiEqIfFrF7TtmwA9DEnmNG/vdolA5gtQvpXYQHZCSa
	 EcZOTwA83FlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2C9CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756115361.22906.12540334303624463668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65302a6ecde0dc409edde88a97225b5296a57a50cb984f1c2e1504506bf7423
Date: Sat, 28 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727561153
