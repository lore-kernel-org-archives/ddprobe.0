Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66D21423C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755382794; cv=none; b=Jz4RfxG4Eyo3VXnzb8guFBsp/6c9zyd6MBWcpl7dwL/BdC5Rm1jc06F1ZRm3GdyOlX2t2LvmCGDLmfRnZYPraOeTuq7bVQGp2RtFk2lqBnXtpD4iHutTnJnpqckM2Gy93Cb4qQI0lLF59XAwwJjhz8/sEEazs9ViPlkA8zmZKQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755382794; c=relaxed/simple;
	bh=jxkmAcA5rixd5rcT+rEKT0WFuuiLszOnQ6Sw2xOUgRI=;
	h=To:Subject:From:Message-Id:Date; b=tSH+0JaCeZg9rK3PL4CiHEjazX+I+qOwn3qn3rVHiV5xEmZds74v7nCdrZ/unWbo+9UUCUQGZWhy4+PZv9R7x4r1MGrDiWFnEGThMd6WvHWWWYeHkx3q7cGK5LGp71eDTPNiQkVHXzBWHwMQCVKfKKsqjxJDOkyY9MKnBBeS+DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyPsEBUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyPsEBUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6F7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755382793;
	bh=jxkmAcA5rixd5rcT+rEKT0WFuuiLszOnQ6Sw2xOUgRI=;
	h=To:Subject:From:Date:From;
	b=tyPsEBULC6H/H5oAt+ig5H73x98F8p7BKrlLAIVTxurcqHi3KwuuImgB7qE+ARXUm
	 JpwUm4yYxK1HK8YAJ53p4HmdmVYV5b0o1iULd8JsyXm3hVswpTWZlCI7ZnqIAJY0gF
	 9Vi/SELU3ygdsEBdvi2nUV8i68yhqYN5vgL9hctfnJUJMU2P20ZLBGkptXY524Kite
	 LAjsfW6Kp5sMEu69T/cNm2LrYZzx/NaGC9cpptd/kfzXQn5DL4vekvEcbETBAWKHhv
	 wh0o89fo7yVBBDk93GqaUbIkiXMbpcx6A2wGM6bYedGaJSRNvJJ5uwabOzgYws03qx
	 nkL9XV4Ylc4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6EDCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538279357.4306.8764782277184531316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a1e7d2160bbe3b5ff7c34b987bb9fd45af8a1e02c61d5f35d82c69c9846ead
Date: Sat, 16 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755382793
