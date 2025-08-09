Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4551E1E19
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754764795; cv=none; b=Kgchk8C3uj7awqVcXA1rCSlpxFz1EfpKKRfFd+OzZJ39Pi5ZVJCxe49m4jaFr3+DbkFxlqoEnoVGU1O1KEvPy0v9ElcphHM/Zii6VGv8ZxTX7F9aQTKZx9RorJeV1R8pOiiGwE0A/9FYhXifgzgFQCFgii8eVTWJhiPnIPD0Zqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754764795; c=relaxed/simple;
	bh=K1LiCLgUQkaMG5iu8ubmwuREB4kc7aqeza3fcy+gsOI=;
	h=To:Subject:From:Message-Id:Date; b=lG35HjpkEw6dTK3UT2irJY8eqvkn1ukD2YO8V//TJuWgQ6Q0LOz2nIjFnnTohq2axGI13jUB3BSM2enBs/IKmDQmWVYjtEbW8cLaXQksjmr0QpASYFW1nMxZjdtcT9yOO7cr9fUBHiMH+Jum49FAEgzNOmrf2UruTsfi7DrVrIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj53k3OP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj53k3OP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A472BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754764793;
	bh=K1LiCLgUQkaMG5iu8ubmwuREB4kc7aqeza3fcy+gsOI=;
	h=To:Subject:From:Date:From;
	b=jj53k3OPdMEIA1bPn3Ih/Oh/8Nu6s09zo90eGuJNsgAbA+kznYn0QoZmB0LOsvOd5
	 jqsLp78PeCVnDbKVMGW1bF+hwLgQETZOIWWRhLuLI06+yOZ3M0an0GBBvhDewpj6es
	 Ip4lyUi+xK4tEBqc/rBPNp7G8ka5J3YVFpLLZPxHPnupP9qo5SvbpFhCg2/QTGLpvC
	 E1b6JDpR/MbmsLmsYBHyWT83dkyPrz4ImIg7lTqJMGzqmMD3rI6pfSbhE9+U44OZUn
	 MFhMpxNpeK0YqmPx/27mIid4jBXP9UIs4Vv84HzOU3rlKaSvCeIQAYGZGWrontiZXL
	 pc2AvApnUU8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B86C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476479357.31019.6388072544271011934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236378311e21185c825b0e4fc1586d92569b6873281e4df9bf4783f0af57d2d6
Date: Sat, 09 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754764793
