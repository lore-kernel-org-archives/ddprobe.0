Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366971607A4
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784333914; cv=none; b=qufaYAPBonwAZoW1BztCNRhpWkUVzy8L4O5YU+Hov3z9P05TxtfnaGcZfoLc4eVNFBMhIcucFztsX5qw69C1TcxxoZHkSnosVXVls99YJhchXjIfj9P3T5WSMOUtIst4v9dIQ1eAarAa69GN1qZDILMi8ipM2D7Gtix9O6ypXOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784333914; c=relaxed/simple;
	bh=uD1q79UYxjamhEbZjIeIHZb7Ss3v3dM9ZuKgdNOPNeM=;
	h=To:Subject:From:Message-Id:Date; b=mgLyPm1YHXgWs67yfYb8Z4MEtOHQCqNCB6j4O4/+UCRscTK/Cp6Fz4lQDYPFX15cZe2paCLC6+VeVP9NCpmCuZy/tNW8w342DitizVPMj1g3jIyljbGPK+QmQJOcXuxZYr6TZfRueJoe101DVMcXRz2MfbhHMwksL/rSGxR3dQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esheTObI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esheTObI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA59C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784333913;
	bh=uD1q79UYxjamhEbZjIeIHZb7Ss3v3dM9ZuKgdNOPNeM=;
	h=To:Subject:From:Date:From;
	b=esheTObIPUxY66q7eW2LnhvQzQig4DTqRKkFiJkGc/N7a1WuPze4A7RCMptyey1rC
	 77qgCZdkVisrBIZgsMHFeTg5f5BRVwW8257be49d+hPkhApkXZ0rLWOpKNQkG1kXqO
	 SD0v/+/WRWJ4DaRpI4OYYelHoJI6Og49FadQ8oT3Vvcls8jneyowhoq2QRo/ItO/vR
	 CLckH4xS5iL3ZHClwVrTa3Jx23iRBI24V872dDI2xqzdZfeoM94KgoWYdugfvTU9w4
	 yag4XCqQifGZGY3y+r2arP6mLZn3y7UznV5zrGk+8brynD4Tlr6L3Xyn2N7BI75JqI
	 T7U6jsURQk1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24BC44520
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433391368.18109.1540541899430197389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b60c81e619f09439b7868c2c56f2492bf4d896dd0c9821d4a02a6d4e2d96b45
Date: Sat, 18 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784333913
