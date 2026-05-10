Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD7B145B27
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778402434; cv=none; b=hWjXTY9aQ4Gg4zZWfouZCIItk3pEXIoNwDAXR+9GzCjdyKhCrysi0E/Z5BclDAOyIIckl+VFtI5u4UMvVRUsb8mprRWgB//xUKGtWrVZeniJ0d3PpZuhGCcvft2dfYKFr8zH5U+9lLECjITC8q3Wa6tpHvRnLmSOQo+JMpig+j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778402434; c=relaxed/simple;
	bh=06A1FhmdYCz75FzmMgCl9cwJaqvRUtb+hCWAX3L5J1I=;
	h=To:Subject:From:Message-Id:Date; b=kDqj5+KjYawS4TEeUbBwbFHNBTj4ruC/SmufTtqBZsvXEybpUPVbTJ+q6+CI5Fiua+pWvCk+3E2YTOLP+ZQo7CFWTFg0Kq6zi+9PrchiE0/OH5Ttw+5SFYJ2x/wA4uEqBhHr+rjLAKxX9eLtPdoDLKavcNahdy6PaQ1Fi+jZOOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8KYetiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8KYetiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19F8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778402433;
	bh=06A1FhmdYCz75FzmMgCl9cwJaqvRUtb+hCWAX3L5J1I=;
	h=To:Subject:From:Date:From;
	b=Z8KYetiGSoOHA3Zo7kxAc7On+d9DJtdvbz+IdEe0oWWE9YYOx2QIxJfso6IYvKZq9
	 U+Y+09o5VZNSkrhEQ2HybeBWs0dwJKKmXJ+li1TiluzLDCTcgO39wUQNbtl31/YGDE
	 BgioAYFUiPqHSMYh5Ym/R+4KuoVwWEW3IwFja6NGW1e+Ua8WkLYhEVaPh+hqTo4EwV
	 DUjGq7qZRKSi1wh47+Q20rvqbLh6bPbZmoANyTTtXQFLzhw4QwNLIzAvv7amp60M2j
	 j071XVDkV4RWINo5VOeuKzX8spcvibLn/ztWtxCOG0FPiIClIPq0gIpVddnlruRxQg
	 +JBQqcBtiUcZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01FCCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840243368.6207.4061499668082388949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0fd8249e8039b223d732d6cb7c78c8338398a688943cb8228369027f8cc87a
Date: Sun, 10 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778402433
