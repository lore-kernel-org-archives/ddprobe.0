Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1DC238D2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741771134; cv=none; b=QrwwqXGxqS6glkVluU5UUNFbr0GITkXnqPqz2Y7gx1T0inDEi6Exug+bpKZVuU91gxhHUvfVJQ4I+6ZyFAkvRMwJg280FILVELMRQN2wiHo/ZqicG/i5hDZDGx+A2uWJ06pk48O4Pmvntpzdk3UFsG+LfYa8Yj+jFwcvdlMxlOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741771134; c=relaxed/simple;
	bh=JuyqU91CPcL6Eqwv/gN/7ov4/RpwIh0znSCNSZs1dOk=;
	h=To:Subject:From:Message-Id:Date; b=kz7StcCw7hq+0lu/wOg26rvBP8Vc3A+vVInDojdBx6RKVC0Pr4G/LPLKdCjTJTQVHUMRgPPG6VAN6/t1o0yJRwHZLvQzrf86sBGMNr25aKv9gSN6OSBpfiFo0vmomN/c5Rqws+LuwvQn8inpXbehMu8dDSMukcQu1Lo3CFrulnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnJV6Go4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnJV6Go4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02C5C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741771133;
	bh=JuyqU91CPcL6Eqwv/gN/7ov4/RpwIh0znSCNSZs1dOk=;
	h=To:Subject:From:Date:From;
	b=tnJV6Go4x9kRGzr5MvIFiRyM4CDwp274ftYi18feAJBEVRtGAL6408n2Q5ab3y9w3
	 YbrHPoWm1KoqH5butXSNUPP8WQcD3t/CtBSwmp345SQ5+2O97sK6FQNVv7+iKwH/iS
	 jPrshWdBRKhs+2OvlNVvQjGOIbAsDovBBxtoEhnmwnysw/L4+ghYLlNEXenistMQA5
	 b9tpCB+e+U50cygj8goAMqklyNbdftAFaH0wB35wF1MCB8eUb42RffOZ9+t/ANx0cK
	 Py1JjSjm6Ey+X/+p39PbyK/a1bI/oYZCU0v0lCWoypUTJcpILRTf23XirJ2rHMVQD0
	 0uQzHz0orMqeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A75FC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177113362.13351.11653535753976304768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ab838818a91ae3f8c8da530b1bea5f833c5f61326781201c43501440a71041
Date: Wed, 12 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741771133
