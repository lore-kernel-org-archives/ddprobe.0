Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E58C145A05
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750517394; cv=none; b=UssfYOyos9N65n0JMTZQWJetK0DtynOzZqIm8haCnQzMsmyLVjUCeJs+HOMfeCZU705yy247u4cA36Vx3kPO0QxbLH8pm69v76S9ybtgHKotswPyexBTnX1870qGAMPq6tV0XLh2BDrK8roEJLYfY4jsKNqc549RW5wMrZDG8Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750517394; c=relaxed/simple;
	bh=Ar2OUmUu2Ap9sdwoM27cbUIxwuyQLZPQyJjZ7ls5pSc=;
	h=To:Subject:From:Message-Id:Date; b=eRT9Vh/TUo6p7zOH7bHKGWeCFIwzu6p6JEjI/V/J0odG7D57AGcD/A6DC7r5AsajiCrS7r2hBSOfboc1hI2s274EcxfxtQMJ70gdF3kB682oOAil5we3bgecgtw7pbPmt9VKJrR68mHNiXfZYaR4IxJjUQqqfOXQqHLKQvNEakk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6KKywJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6KKywJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750517393;
	bh=Ar2OUmUu2Ap9sdwoM27cbUIxwuyQLZPQyJjZ7ls5pSc=;
	h=To:Subject:From:Date:From;
	b=k6KKywJnczAD+WENVUAWrAXeOhrDwrpehpohLD42Oag5VCvQ2vHx3ZRCNMx1aqYmy
	 WKq2BLCyPTNXu73lSIUSvJjCmUO15ri1bKTwl6VcFCg68zGiJgfxDgsAj2jt8k9dE2
	 U2aHYytMWxj4ilgIZJKZVdc9IWdKPWCRMaoG7rCfPbowD1pMJOYVmm9hElaFYNvmL4
	 dQ9uxl89mTcOszCF42lzU1e3nMHfOcZxHwu4qqqfX0vvEaQ4SYVxrtAkh7oh7HF6nr
	 Rs/r3pRbTu7mBTtwonNHF4CuUfusEHcEZscs6y+vdwsWgBqnS6sVRVnDjp1m8Ps1WI
	 YfJlqrkRYjRrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB97C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051739357.11132.4356255409813879528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a1956b6ac578b55e9d11c757f218f7b4607e0122c247b93426f273b91f4e89
Date: Sat, 21 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750517393
