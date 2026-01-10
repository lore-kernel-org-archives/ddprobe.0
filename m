Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E18B2C15A2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768072434; cv=none; b=R6SCDzZyXsq5NwZpKGWAstuvRTfMc7OShDLPCghRQ7i9eD67j/gi8YN+dfZ6mA0FwvuxQ2sxsq356WGZvluWjIqC9sdhuUcYRNqgRF2Y7ZhJYQbJ9mO7xrP2t2hMrS11oqFc5meC4+XqQOSPpF5amLbH0qBWHkKBJBNJDNnk304=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768072434; c=relaxed/simple;
	bh=KDLUu226JCd3+liW4H4jvutx+uR8jsERK1tRIbQBi0M=;
	h=To:Subject:From:Message-Id:Date; b=n7UqEEUOy0Dw3V5zSLuZ0A6PGTJva1tsvG11yy9kAU6dyrwo6UefYSNbmeeUQFEL4PNVPvJZ4QcKvoivqGlcWMIrNGN5BR9KtzOL3lb7k6y41b5t57h5ANzwwqY1/IwbEviLDX5Rs1ibEv9+9D3k3DBs1HqPQzvMuxO70MKUnYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0M/jEtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0M/jEtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768072433;
	bh=KDLUu226JCd3+liW4H4jvutx+uR8jsERK1tRIbQBi0M=;
	h=To:Subject:From:Date:From;
	b=a0M/jEtU92XV0cX0JmeH46Te2QBQOO+dvoiYJxu00xVu1KxESWxqPT4ImN2ZTYsUY
	 3JN0AQysGHdqcO6INLoALCbvaipOuYq3nLXh3muZdkUwZ2k2cMc3UzVSk6N+edsAT2
	 syH5rbZYMC2MjwW+hFKXtG5QgYBQxy2SVn+I7UT4COoXzYt05b+eFGOpuxA/j5F4aE
	 dXSyC0yO8TKoeNFI+2x23iYqgaaabNhJ6M2X6h/2ZKm/OO2ky1A/cJ8/c9ErnhqkVE
	 50DF0AsVFV8Dcwwsewj1ixhgbiDLtcWO/5zh+QxwRCZF4olZOSVyJHH3rbqgexD/SC
	 Re59PsXmKzmVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CDFD232D3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807243357.3846.11105436228032024363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7db675fb807f5aba050eeaef03d7a3f016e5761775b10cd6349fef1f8856bb
Date: Sat, 10 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768072433
