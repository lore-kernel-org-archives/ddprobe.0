Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4369A1A00FE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736341554; cv=none; b=hneHg9PjACZgk2F6tp2NpCNOWT7UMy13HAUn7RLCNDr7/EXrsHQJbqHEPpreMTHwQDckoKS0Ivya6EeX09bP0lCqjWZ56cFvK4i6hPsgy+gjKwEhOL+TJKWbVQibWlG2j2uq6dS727wCLoIWHHZ1VZ5JRjU1nSO4Pn9ls3WjZU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736341554; c=relaxed/simple;
	bh=JSzYZxIXL81mKcS3VB9DyQxb2gRqlE8wzpbgA+r1Mw4=;
	h=To:Subject:From:Message-Id:Date; b=hHDIi8ly+k6j8Fk0Hws5V1tpTZ5cn7MJtGlev3HysFrsZRcWq0ovgZJRlhiXrRSQK3Y6qajYsyEdJMawVBXnkwrSqGQ4SnE21hGqyH96IHaJTgI93tzxhFeaLswNR2ESOxQOw19eUeqK9l+E3Y+LcHVn79jFm+yNQnhAe+yvjV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrje54k4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrje54k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A4EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736341553;
	bh=JSzYZxIXL81mKcS3VB9DyQxb2gRqlE8wzpbgA+r1Mw4=;
	h=To:Subject:From:Date:From;
	b=mrje54k4A5r3VSrIeuFEXiHEMmZPT02RvnnY7l7+FsqYAthGLiyI0gQHMKxPRxngA
	 mksNVOIy8lfXkms1MuB4DRiC+v/QqGVJ0nwxLxqKW/Qp4ImY7VEQrwrRWBpSgEj0KM
	 bVZwZoA5e6laA+c7TIbUAkCg9beF2fsh/s85WdZWLubXyCu4mU5zFqOnOe81RCD3xH
	 hKo6Vou2C26nSZC92Q/rEZzI4ZcjJPZR+WvkgZZ9D8M4ylSp94wpQnA/aHOSwrj65Y
	 2QByU0mIEQ7SrahPXrUDj5D0WEwu1JCBUU48CUvEyg41gx1Ti2ceKBfJI3mVPk1/VD
	 NVTcosoaE2Qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF63E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634155362.9709.15203290966102784897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc6d16d17c3394087cb5a73caf252a2a47e5a61e51cce8e578c4addc59926f2
Date: Wed, 08 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736341553
