Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03774C2FB
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756964396; cv=none; b=bWtf7r93/7Wv4rvuSasCnFf7Ba9YgtvrqCYY2pBcMzyfUY2eBiVRMWMKmntihdXo3xWQABbX8PC1NuHIQerDIxdTNP3ML9wmrfL8pI+us/uflyGBd6khK5j4+puWvDJov5REGWmNikgj3A9vul1q/rBEh7rQqFqGqIYAu7DWGqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756964396; c=relaxed/simple;
	bh=mTtR01cEQLByc/dyTUlAQKqzfRwQAZutAwPmfO+5zcQ=;
	h=To:Subject:From:Message-Id:Date; b=QWzhqoE8SzJRUgzoMFK5Xpg6NFlecM4RIbc98bdB3Hy58iA4MvOcpMErnljzQCFe6QJYJqwlVL/sMXL+nAJPAxIDeR7q3jW/koptvyrtDLwtifJSV870n8Yxc5NwQd1t4SijVO4Yb3txbrvQ2a2PBZ7CO3Qu0It4W6crup21Pp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSidB5e+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSidB5e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96DBC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756964393;
	bh=mTtR01cEQLByc/dyTUlAQKqzfRwQAZutAwPmfO+5zcQ=;
	h=To:Subject:From:Date:From;
	b=DSidB5e+Zgi1Ck3/FmFPV/q2kOwDO9EnSuhSvcihXQmYeatBaSVhPSMIU31Prw5bx
	 PQaSwchAT5RDQ5yJc65hGLg+D5iKL55E5aMw3QoXbBBSXXaNtwSRT3K+r9i+W+FYeD
	 Pk+q/96BsjVHVBYyjb5rrukqVnAt8G2jZcT5bMYpBSKKzwKk7zqZJVbFCbyW+K11Ig
	 8gy5VQk7ikoCRgDltm8AZ9rQZq2i4AOWcG6E5iu2kTCLVDs8+yn5FWVCBPnTZVcSiG
	 L1zwztPSlvgSWz4SdAGC1+ii4t8j1BzbJrtmCOOYbzvCXztEc7Qja+7UttjEC4RqAW
	 HiWD5D3PB1ltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532ACA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696439357.13719.1049278275922459949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11fd62d1c8d7ff252cc36e5462b82391f21416c10e62cc1e41d5a276f2f2c83
Date: Thu, 04 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756964393
