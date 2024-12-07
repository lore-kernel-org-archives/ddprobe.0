Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BD022C6FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733603754; cv=none; b=GVtFkN6HRWA5Nhev3Zss/kOwv59Fx/k0JqCGWUkBQkA4EqBkKCdevkhsiyYx31PuquoV3mgUPHuqrbajOW6GDyzz6kVK/dw/AEBlTYmkYMDnXfIsVnpF+Ikkm1Kdp3PUDMvTCQ08QjfqBoUNSN35w4KewSPdOlDAWALbm9wa6tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733603754; c=relaxed/simple;
	bh=6/DLHE0bcueLk1+kw8DjGH+lxFhSnCKitVM9yiNOqLI=;
	h=To:Subject:From:Message-Id:Date; b=k0acl061QARA3B+NfM1ZbELgvEP6WHgVK9hgrWhYWqAt7rhyuzX10F0zhHHAtwQVGioD4H6waDxdN2aNWlrFvIpbf01n+xJ3EiVNKjwMfukk1K5w2wBkagvglek4bhxQ2vTxZapoEWBCnQCWWfZKoJM3RtMG3xJCovUVMGzkyfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSWrpETc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSWrpETc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8094C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733603753;
	bh=6/DLHE0bcueLk1+kw8DjGH+lxFhSnCKitVM9yiNOqLI=;
	h=To:Subject:From:Date:From;
	b=sSWrpETc8bQDnVbaLqRdQDbE+i+9CSwlpG9MMu9gcRz2/Z0xtzXIOcyKLgzLtlSZB
	 Tjmfu2tMv0PYoQCxaRV6x+XOSbtPbEzmD3SYXD46fP63azHFpglz9nIPoPovwHIGw/
	 pbM/9KDK+UNGSjIZfhulU2N4kVMDTnor10FLkiUA+wX0awIxNXx0wWuqUV2KZMqNGH
	 OYaKnANWCAQimWiMw6/O0nl8a5db+l+vpFjR3ObE+DcD8L86nIo+BtbX1KeAMx7mJD
	 dXOXiew4OwlNFpcanCNz+R5TUDZEP+xtaRLZQNr17TKkqb/AOIj2qFthnYdhSo+h8O
	 jHaq0H9YxYDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBB8E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360375363.2216.8295717346525004737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec735d3bc8968bfa2051b88f9e2a4816a59e7d5b77719aa5caa37debffaee8f8
Date: Sat, 07 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733603753
