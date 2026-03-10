Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA7935839E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773176694; cv=none; b=RwiCCZvGsKmsDSWuUF3auFcd9l37Zz/ROAAb0OpK02XN8PivdKUykMwH+84MBq8aOsCTT29kYCVfjuPgNsZLoNz7Hd71CkujRRiL1xJ1CXMe7dXeA5KdRGGWTgXeV7sdpLHBirlgkvU5P903UocYGnfxsH6+Yz/e/Ynu81SXFgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773176694; c=relaxed/simple;
	bh=0qz5FCPRc4fghX7gPdadmXFqFtofXzABWjAwBQzAFhY=;
	h=To:Subject:From:Message-Id:Date; b=mITZo1bQFfYU81VRWVAd4f7GPfQNVjgP8IHHPahMLHfwgQS3JerS8LLiLs8Wkj4lCPF3KOSCobE7mTPzoBBmUKWq/zWD0RisPQfUZ0mS3QPWj5yOWeQSgf+SrSj4wi3BywJybQlcdyJMke0n21mUmL0u+V8ST6XQ2BEHVHGMrL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bI/GjjbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bI/GjjbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B86C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773176693;
	bh=0qz5FCPRc4fghX7gPdadmXFqFtofXzABWjAwBQzAFhY=;
	h=To:Subject:From:Date:From;
	b=bI/GjjbEeWeDfb2p0Nols/fLLYYXTXaYq/ZJv/ui9JN3OpBX7gbWpg3agTz6TT3Ks
	 zDvxPeklFMhhKBUSNoaTltEpeLws6PY0ukPSAmshvipD1AZPIxq10TYNS5HEqvQnjc
	 POJr1O0Ko4KuRYihinhM1HAQNK9d6279AFjpU482pEK7lbpE0PZxaba5qrwAjGnMm0
	 7ksIGd0CejwxKVvaFELMvKtKbmQKEqh4Z6QphCVioJ6m6jwdMsD0O3zcfktpT9GaD2
	 BS0wh+q4iCINzYrb3vyKsiXpPZhsAK7g0FrCgxDdj0sPFUKU5ivtgkxkx5zEReFO7p
	 M5C2PAqOB66Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA8FD4F34
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317669358.2393.6249650633787756944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ca94d74cf93b02c507cf0a0c5d04d72d8eee1906cd9423f58bcf9409f917c6
Date: Tue, 10 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773176693
