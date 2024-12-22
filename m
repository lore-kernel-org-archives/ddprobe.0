Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAA954F81
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734894954; cv=none; b=my4vGQ8b+pqXXlqE/kydHUx6pvxIymHuEfZkismJcUzM0mhiHmfw/JVmy9kwHAhngykpLAKbOtDwrqehDW0ahZOhNJjCfkiRMfWKcoFP/WHiXpsGSBd8ehTXbLpPLUUBU6N6/cz0B7XGAOkhOrFTfzxT5bfjAr2NZ4TFOUG1Ing=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734894954; c=relaxed/simple;
	bh=X0nEMCGw3f85j2LcqMSDmNeS36JMEFBiN3ilO5xVgnI=;
	h=To:Subject:From:Message-Id:Date; b=OZvYl4HJ67XK/yu011tDLyNX89Fptiz/QYNHVuCnQw49ZmDlhSUCAankDMfYThOUA0o43wIJP/G4X13c4fT7Mgl1KoYkCXWE2sXg8RuariBmR8/PuVdtorjIV2iX4bPJnP8+7zP9nLCCYcd9jQZnDCaalK69FUt7aYR72t9hViQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKWlQXN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKWlQXN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE521C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734894953;
	bh=X0nEMCGw3f85j2LcqMSDmNeS36JMEFBiN3ilO5xVgnI=;
	h=To:Subject:From:Date:From;
	b=dKWlQXN0i7m93vi3lT3jdjpG4n3vDIXZgWn76XLFDovnT8bl9GZaBsftngJjifyWb
	 MaDwgoas4jfPL4BTi50iuYRdKmXJlh7e5yfGNvUwM8aPJTRiQQWXPQ8zhjWl2PaJ6G
	 W8vo+Obg8mrWNoXNM7QKgnhS+ptaEyUmH68U9zZE27uU3u1gMDvBxCsU0I+f/nZs73
	 8BrMyJJMwRIFpMtKnNYcv8ouA92SGXqutAqTpLXp0bKf1SG1oQDIXYICyMZsaSVERt
	 NbEa93l/qMjxkELcuj/g6EXPOmMRBIJSJ3Q4w8yc4owbjpXZybJa12Vowcq6LhQiDo
	 cwg0JenLfzjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0AE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489495359.29551.2888641094968325126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a3ee9ef889d270695ee5c43fcb6b261374b7e2d358047fe7194cac5f1d66ec
Date: Sun, 22 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734894953
