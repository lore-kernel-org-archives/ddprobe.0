Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3F35C68E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791585034; cv=none; b=DOQy+vGmCkcjSW3RA5PRo40CPoUUQOWaVuGMjWeSafMQ/p3PnQqE/GBPa7jzcKK5GqMVq2lVnFOMkSbOgHNHSmq3v6YD18pFn22rjKOlsX5D5/Hjuu/YZHgmQBbTwF4XmiUO9rSApghCgNC7Fo3fRDt72Y7u7b9GX7w8m9tAnJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791585034; c=relaxed/simple;
	bh=vWaPILBkoj0KigofUtfWkzToNVsxfiPfEH/j7IlisHY=;
	h=To:Subject:From:Message-Id:Date; b=X7IowQR56NznALcfMcQf2OEHmfS0L/8WKiqp7UR+v5/wzHOe0YzUtrd1xmRASWjRmFa1tGGxEFtnC8rKKwTZ+wJAYdAIb/R/JrH5M+uA1vl6CoqBP+iGWh6/Vvq2T3WygBQMIySloml0ygmwSexRCwSG4RmoXtw4x9aP1l8bcSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/UqXUWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/UqXUWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF54FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791585033;
	bh=vWaPILBkoj0KigofUtfWkzToNVsxfiPfEH/j7IlisHY=;
	h=To:Subject:From:Date:From;
	b=W/UqXUWDVk2Jfb/1j7P+v36/A5xBCDDRzCALtKK9QWn/TzkCRvsEGvm2EcInHI2n4
	 zdSMRRqrr0OWZuzvPDOK5CFAUwt8FlUH9CCMW0HKfnTSImLdmqmqKu5xGx0cGzd6d0
	 39siY4uY4ci9xPP8+lsvquIB46JLcmSC2SN4zzn8nNLKT8xAq4VIlwMXNju2pGngX6
	 kra+C0ZURqk5+BH82zhrRjN4UByikKekxC+cXOClQLd5bTCS3Sc5waimTXGITg/epT
	 1UWO2at39DQO7PsgUvN2dfzifN+RxtSsGf6GygQiaiNIgSKggtgPs/nSg5hjlV2WoF
	 e6wvU9Kv2XBkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC2FCA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158503369.9005.16411061139351995613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a83fd3bea9e64afa8130b2e007811790cdcebdfe98b221a9bcea2562f690e4
Date: Fri, 09 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791585033
