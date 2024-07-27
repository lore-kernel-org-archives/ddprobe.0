Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0A16F293
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722091554; cv=none; b=JebZDHCivaOPgonlEM4Qi5H1qT5UdkVMqbukLGPyFrHiTSnHdrcJSU2DctU1s70pE89lNx1XXHD8CJ+LZ3IErVBp2Kc+EQC+AcFsh7kvsbJ4wKCgfA3tMjYxYfPDmNR0a0VGXGwOIrS3pppmpgtRQqM5oScropDne6YtJe7Oo/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722091554; c=relaxed/simple;
	bh=AAn1LmngQ1vyEbLIK+xE9lUOlua6tMoqOxgt/li+A5M=;
	h=To:Subject:From:Message-Id:Date; b=n96Nw1f//W0hCX9wcL+qnEnAOs5393wDcXNFPGOq8UI7oCc795Hi2gjPeLsoF22/DDSsc6XaE0XKOvbsaN5FhpQ04BgEN4umUokPqjPvPVACgU/L9uwaHAjar7847e5RXw3ILlU1yRT3PdVCtKPGsXZcQXd0EYKaEda1+w0kzeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtIzJiS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtIzJiS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA9C4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722091553;
	bh=AAn1LmngQ1vyEbLIK+xE9lUOlua6tMoqOxgt/li+A5M=;
	h=To:Subject:From:Date:From;
	b=PtIzJiS2OBdXlAhbHmOvujLJJ4N5AO8OQWVoD+FW3COdqfYz+XE2unl4aXlT2U7ZF
	 nBPDBZ9QYvOdAVMdbJG3Xn7MS5bYO8OrEoKBPxEjcJPUcZ4S3ZdUqYNND9z29APGKB
	 rGWZvp3JWo8GPFxCGl01nNATyB3aH5Kp2nv9E81awiL/yiKrSvPp/FTtClqTQnj2rk
	 FG9j/4P1HeIVCpWWkD2JQXMTdlGWcc4bJhbcO7kQ2i6yCMl6CLgUBM27tbPaGofIfS
	 uxmXCbM0tHfkWEXbi/SHQm50vwd+HLmxXtm3oqVF3BXg8HTvvkDyc/AneBkr8lS9kI
	 bNq7Nk+N+mjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E48C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209155358.22707.5905442612318955187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc16fa3cfc932961b171a90d208a0e855ee4f48b3b4383a73c4077d1b95783ee
Date: Sat, 27 Jul 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722091553
