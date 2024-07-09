Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E6714F108
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720556783; cv=none; b=BUQPNBPUu7+hcYBaP4BjdQGyDQ7EosqiRB+Ya9pD7RpIGkQLkCB9Cb5lv9/y+2EcHM1ya4xhOlG77Q3SmtBf1DRe5rvRI+hz4YxtCMTNZ2068eJogXpcCKhDQlyoEKhiGviPP8zfHPfe3iRqriwPtu3hUj/GX6JbV7dJitL5s4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720556783; c=relaxed/simple;
	bh=7vmDHSHhHFAJCiSLAiHJDAqFE7s+kzlRLApGZWbcw/E=;
	h=To:Subject:From:Message-Id:Date; b=GQYCFAfRHgL3Fxj4wWRKTjZmxX/Hr5VxaHhTKqNHT91dKhoj3oyKw2wB3maXHFHeX6V8rZ/oGm0jThQNS3K/Q8H4MBtvi0lL7TDcQV52lynXkvYVliSe/Di9W3+GlfkSn1dsY0IjdOkfHeH4dohoCfe4LsPUjVVyMbOqWZb4sTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfrCqCOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfrCqCOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC699C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720556782;
	bh=7vmDHSHhHFAJCiSLAiHJDAqFE7s+kzlRLApGZWbcw/E=;
	h=To:Subject:From:Date:From;
	b=mfrCqCOWRcwzJoAXi49RHE1ytRAyYedKgTv1tMJiC+TKrcXVCrtZnM9GCbPqxyDji
	 5Y/c9QkuC0KZyPG4FxGGJgUoAy6dmyOlRdRD0nnrSysdKPtRqiwRCPNBqkuSQxNXuJ
	 t5a7yHmR9dE1N7sZ5ScY15q2giSf6A1goUsRLIQ0w+NUk1l57o3Qg0G2D/3jyCeKwj
	 W7Svqqmalv8IxM+UIYK0nKeRrGB0Dkby8R2eluEMephqHJAFCmj41fN1NZvFoCyAuq
	 GUMrC2QaHLVYKwcUUMIPmbk8+gA3+GtXz2Bg22GA+liPJukskjQKVmN6y9AHJeyfzv
	 F0ipvdisSBfqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46E3C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055678279.13407.13813951812960851382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f5484c4124b1fb6cbc73e32e2668399153aa5e7167a8d2794f0c09412f256
Date: Tue, 09 Jul 2024 20:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720556782
