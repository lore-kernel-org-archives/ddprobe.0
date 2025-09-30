Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215B71EE02F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759244995; cv=none; b=Sm1gzLlJ7Anpb6xjw5GHvShsu4MWEdwisePdY9qV7Y4PxN7YdaxPJdU4Pv79e4NJJWmMXXMGdAYM0gqfUFB6NT1GmE4mF9WOy7qlVJYsRfQoki7YK22VdsbFFlh7JwtuB4cz7bHvcm/5NOd7vkvT4APIPlo634gQvN43P5hQ3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759244995; c=relaxed/simple;
	bh=6sMHhzqNOlqRsEyGYY3KAfcTfUL9t5860QIIZbvOKvE=;
	h=To:Subject:From:Message-Id:Date; b=ItglPkFbrD5c/BIVlmxv47LxpR0xTYYI0MjKN1oafjKG4wH8YSHGajp1+0zMcv5Cx+REWyIp1OipIVS4IEKx+F67pzgNmGbhJ5mPwUtV4LUThau3xQyntV9N5UsmLEXOU270Qv/RaQDpLEcH0FbD2zOwOq5PtbrHTnQpXMrN6eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDfw21H8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDfw21H8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4C3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759244993;
	bh=6sMHhzqNOlqRsEyGYY3KAfcTfUL9t5860QIIZbvOKvE=;
	h=To:Subject:From:Date:From;
	b=hDfw21H8ko1LOwbAKspalSlR2hDX9ZdpU1mFGkMTtNSPrnBR/nj360qG4LMfoY/F/
	 fo0RuFmIbSKyfUfyMlgbB5ow04dMmVCH3K+6slzm3wjVEawvAvowZKlvCf4/Hb8oeZ
	 btBtBrPue+8AFTqLV3Z4isWY2WCuFxVkAkXQWZZUSWG4yHTPE6y26YzE+l6OEFYyUB
	 UMLDADsXXN8cUiPXhSYP2BECRwRvdccM0Ix1gWYu18FwXv4FRIlG77VFrKjqdH/aqD
	 vDptJv7ZTO6szfDVXvn2AlVW7uy2JEJPgM7+oLRVK+T6bjxl/y4CoWJErGp8B3NZck
	 sUpbkcsTN+o0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B5CCAC5BE
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924499366.1562.1595853664247656260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb1c54072789b416fb6e766d9f881d0a26b7986d086b767adb05822ef8b5e12
Date: Tue, 30 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759244993
