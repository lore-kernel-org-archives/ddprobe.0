Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B0226AF5
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737619554; cv=none; b=eXK3DwA9Acp27xV8pAhDqkeeq2QweJzKJbsylATDOepYVERk9vLqIRgbPp+hAZgAHp0sRK9Bmre1JSWefG91GlSddV4X3UIkCSS8qubWzVZ51u2zHi7RAtCIRMcFitKR8vAG4ykD9H2bQMzoC8rNSUHM3iRwVFIWySRAD99Zi40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737619554; c=relaxed/simple;
	bh=nNQhBcjuSUmbJuLpQ8CYs0SVku748DCR9EUDgody7ts=;
	h=To:Subject:From:Message-Id:Date; b=uRjZOBTJTtRRbHtVBvCEsMcjT0sYjGyNbhzjKE0gRbuZ2Dy4+LHeiYhKMBnEUYrMsQqb8Bre/wi1i4N97aQnIAS+Ij2gSWoHMHcfGtD/LFSygD+poVdVA9+CLtApe9V4LwzQOcSFvGEq9dOxXBIkLX27xnBhn1EwsPKmj7YY9VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVdStiG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVdStiG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C88C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737619553;
	bh=nNQhBcjuSUmbJuLpQ8CYs0SVku748DCR9EUDgody7ts=;
	h=To:Subject:From:Date:From;
	b=QVdStiG7aV1NV90j2qiL6X8NIKuu9+nCWO1pTeNdV2VAKpdgDZ2piE1rjI99CtA0x
	 DcbYzFN57xPy/7vqjM6mCk1seur5ImwNM8vhMK4A38aoG2g9R2VJJJ7wg37Y4CLZXH
	 k5MeR/Nc9GPpv2LL8bhTlERXWN1ZELjYXHamAb+2FYrtulVkwTzNjHbmfEEs5bBVTB
	 yJ9OIxm3ao3r4Urv01FT1lmBsN14XiOsHEVJJrJm1zM23jew2A8VyFN+ycaDrej7DL
	 HV4Lb9m7mQzw3JbkBDag3A6doC0H24qFb1xmHlroWG1CHWopgmZUHqLsHOhMEAmS9n
	 vD99Y0bmW8m5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C30C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761955357.8898.8601929125869892919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7a2113913d62fde3e441e833561f0e2183c83a244efab0a63f5ca5d82a14c8
Date: Thu, 23 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737619553
