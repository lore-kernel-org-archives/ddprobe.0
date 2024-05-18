Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F35E1A2C09
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716066143; cv=none; b=ljzvlUrO2ydCKybDtxDUV1sp3Y2YYg2BOhKnz5uRcXge0myUSaZdtLQbHoNNbNO4BLq2yrim/o2Qz1fSmlDqqyZoaZ7vuzVdM1Agt5nWYs5uAks0a7bqmz0v4OzlT0AM2yg6znGJyRCulB3SzulNbEHjo8OBs+Q29sHoY+E8Yb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716066143; c=relaxed/simple;
	bh=sysNSF+RiPuG6bjo11PswW+UL7Tgg2d/er/rYexV4sI=;
	h=To:Subject:From:Message-Id:Date; b=RoiVhHmJ6iuP3EBA+2Ea0DHaZZxH5m/0Q11KsLGEInBDJKwnJvUUsVdyytK8k5Nxz7XAr6J1ZYlPMdPmunbQ33/WqZycLRLzeeGeKmhuVyqd7/l6u/nPTjC3+/ogLmEpjZ3wQCZt6dlhJRYYzC4EInQ8Kqk4SLpCrccaRZeaP0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcUay15+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcUay15+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0DCC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716066143;
	bh=sysNSF+RiPuG6bjo11PswW+UL7Tgg2d/er/rYexV4sI=;
	h=To:Subject:From:Date:From;
	b=DcUay15+k/mbOc0pcWbEhW0pPqhE6JFmPDDWaAgKH/LXyTpJoZIPfP0UjdODezR21
	 3Qfd6xR/Qin3dqPN5FIla3KWKLJiMrKzH8xGoVJJC+wpEV97KoKtfxHkr+F5iBidcf
	 aWDHV5soGhtBHW8Z1rKUq027mSc+mUc46SakYd0xdsEg7aHvSF+g6jaf7GamcBnzoC
	 90XuaFk0i4oEg5k2gbmMprDQeUwMrwZ0AXPrD9wCG4ELBYfzjA+T2l+LwKaGLMjKxv
	 NuDMpx1MpCthJbRvQMcU44bE+MjhnmcKVgp5ePJ01SvYM0B+n0BqJWPrFe6mJVyvke
	 R11W78pkcbhYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2549C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606614282.21822.4029811237758712477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c0982fa8e52caca3254be0db04ea428e75c07dd4be56077f200e0ca54d745b
Date: Sat, 18 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716066142
