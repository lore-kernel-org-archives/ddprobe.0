Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269152F24
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727052354; cv=none; b=evWpcr1d9X3+gJNKqVU8j6nViNmVusNygCRTFNZVSoSwx1n0RmlQJy/lOPxpGSJr1jMLn5gtjxzPzwUwZBIYJ7kyZ3xi3aE43lIIReyTASVpHfZ0zhCBrpOkm+ysdRN7qluCsEDMHBb4AbcKbdCU5+OAo+ucveDah04L9h7Nmfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727052354; c=relaxed/simple;
	bh=H+AwBzi1svZf2mNDRW2s8cbin1ObPlH5FCwhUvhrPiU=;
	h=To:Subject:From:Message-Id:Date; b=e0bhJYDGMPxaLmB1H+J9GHo1O1nGcdVOKQw6dLcCdTb2+lmlAk/LJ3f7xQ1JoyyYJJpMMVmCB80hfkDBaUXd1MjoHsrxyXYyzcugcgM6+h4pqYv6z9WNM5Yym164iDxZcvQGlrlClx9mr4wVOTGlS0UpYn90TBoGkwYkTYkRulQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baI/KKWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baI/KKWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAACC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727052353;
	bh=H+AwBzi1svZf2mNDRW2s8cbin1ObPlH5FCwhUvhrPiU=;
	h=To:Subject:From:Date:From;
	b=baI/KKWZ6qSebwG4lYrL3nFaVPkR8t5Bwrvymc1/fHB1ApLht20e9e0D2zmVYX3Xn
	 Q5VjSx1TChrCo5roC4ckjFgZloZ1+jl0KFNAQGXP/hrxXtgRrecpRRVhiHZiBVvreD
	 M4sUWNYF0KwYQzOAxKSsTaaEuh8jXzqpz7m2g+i7NzD3WmTomMMrBvUKSqoeXNR955
	 83XLqq881J2Iak2IRHuEgDGyRKKIL9PEZMEu0fKRR76xQhsPy9oZvCKkZZ7arK3krT
	 jAnIbQPYdckvHdSHjDzDjYAOBZLC+bv0KrerxKFBVnqtiVxojn863o2afQSNGi+Uf4
	 QVa0mdJ4w3vWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99155CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705235360.883.2065063142278624304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c9c86be3a085648cc3e5de5c7564d6668ed9f92357c9826c4105fa52deb707
Date: Mon, 23 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727052353
