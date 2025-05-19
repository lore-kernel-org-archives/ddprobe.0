Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331A3158218
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747619394; cv=none; b=QebfciKETXKuIS/z+sDzTVkecjGZjoEkMlySagfOfpVSim4xHn/S4UYxmn4DhTh+JOELYxYMDyuqd+xQNzbDRiQrU5fAebgEREAY69nmCAee2Ou2ndnkhlU+geh5DsTB/vO38kciG3a56tNBFyINgcjFbNbUZIgbIDO8AEQORbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747619394; c=relaxed/simple;
	bh=Tm2HQBp8nW7GEBzBTaBLCN5xS/6cZuZorOzVyKwcPJY=;
	h=To:Subject:From:Message-Id:Date; b=SBRD0g5VRJ2oj3xaSxfchcynXSZbQEpJbSumH2vaJzZ9BisFKwwpX8jQLsLkQYwIO3QE/LWfl9hV4yEMGlSDe7QmtyUNqOYfp7VAsZ19sHXrr0rRjQZlq80VcGBk8Zdg00tXXxCeJuaB+BkNmUrxkUDRDeARJzEffB0V2KN7pO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP1mLyZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP1mLyZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C92C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747619393;
	bh=Tm2HQBp8nW7GEBzBTaBLCN5xS/6cZuZorOzVyKwcPJY=;
	h=To:Subject:From:Date:From;
	b=PP1mLyZm1aY4qJyUYRwzLDH5n/JUluy7wZ/mGNZKLErm91GDaEzNol/x2HIi1Itni
	 eTP5cvj8CXb/UQBYI1ynP0B4FPT/e92e1HolFXyGOHDEKIIuoS7YnoJcVcv6LAevqW
	 PhnGLu2b/4RYfJpDIY8M+c63nXvjNf98kPY4cvNDpg+x1DaemZpaBKB4QAbvXr//xF
	 +mXH2fYcQMzsdmTB+ho3R8C6qiKMxjCw11XeKiI5lMbsctDyETLbynSaGSM4SdOt+8
	 y+0DVMsZpdJ/k6w3GZ1OJycS88eku4GrmnHEEX1//xR2qyJL/w4ZA0Y/ojCru2bQon
	 TNCdLoCBoP1KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F673C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761939357.1864.8084619538740637619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beee0c231b778952be83131545b21d8015c0b24e8c8a2ff4a4acb4685b923191
Date: Mon, 19 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747619393
