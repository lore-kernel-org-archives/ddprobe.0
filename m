Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE7635AC34
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784065714; cv=none; b=o0OZ+KqCip9qkPAJUTC/UTPzjMMyirEhQc0kQ8duaEIKXPbRdZjr7guFKf8tLI+RTC3s2ciwhtYYeVl8XZsRJNXtXpB3d9kO8qeyGspH89dFSI7ezbz068/LSogfoyTT6pVAb8zDlfeCOrcxrre737/XH52m/yevyd1N4ODYX+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784065714; c=relaxed/simple;
	bh=/UKfenfRqKA0BW8bmmUzluXVmjf1uDl+ux08jV4ERUU=;
	h=To:Subject:From:Message-Id:Date; b=VjYA5Hotj1r5OcBeATn7G9VSPUUVrfhpj+ZeCv2DY1yGoOxPGHpppX6zE1ZdJLAbFn6DSUlUzaD/B6VJxludcdKFl5pZ/gAQh19YqxLh+RsvWsUDguWtJYCFCEI/oc7mbx5+LUdottjpUSnaOMkVQEaLi6CenOMFzCBJ8o9nId4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAp6gZRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAp6gZRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3078C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784065713;
	bh=/UKfenfRqKA0BW8bmmUzluXVmjf1uDl+ux08jV4ERUU=;
	h=To:Subject:From:Date:From;
	b=fAp6gZRv2fw7J1NDhBGNOgqPpSYKCrQF0jY1aAGoOIGL5Tg9oo+3uSkOAhGNIddF2
	 +HWoBCgo5Eq6/8hyCsHioIgU4tUIAUDxsCS1WzQEqksPzuVGNI2Sjot1w1Qi1AzRUK
	 2efqWbQz6krryTyCAAWTJba97pIndGCryh4kvIK8hHCsYlY7yhTa5ZkXMNICvtr9vN
	 uf0I1LTJTjVGHwA75vw47BaWiQ0KAmzI0zOEAy/yPbd+WVcdtbgYDnn7TQBU3PI+dV
	 euyVQzccYsA4gECtxYbkFWUhPBS1rzxcLpvwj3MJCwfofQ3r7XDuJq9Fsqo4YbyiSs
	 ngf3etbFgMduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88BC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406571370.17634.5524549734394492719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce98777f4f9f273c449c60ec84ef8bafae089819e5c9ba40b58b65aebeddb53f
Date: Tue, 14 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784065713
