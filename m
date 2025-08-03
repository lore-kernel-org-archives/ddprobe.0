Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D4328C035
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754193595; cv=none; b=ZEKuaUYxPesouSEjTgiwnwylxshQIi7dfVRkYYL6nwC85ik7FhXDVyqe/hOkwpCqA+VLni1MAqPYj8DwTQBjPoZIq7hMCE6OJRsldjzo4+GNFWlQrNQ1cM/ZujJpnpmffs8QfgFQZMKFKpCqUjkl0xOZGfBKdbFSuDMQ4zIM/+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754193595; c=relaxed/simple;
	bh=Cns5MxyeGdQBEYXYbCubpi295KB8PHXi1bNcFd1G2j0=;
	h=To:Subject:From:Message-Id:Date; b=EK7JB1YHFOCpmqdyM1DemDq5zwry0dMJbvJ1/XxxhurzUjdhBQHW8TDDhracy0xR6uiJACpwAWcgYca2k3uUcx/Vnt+NQMxcnQPFBVsG2P+a8VM/znS/Ht8+Bt/LQCXrO0bGdok+y1XLmHxeIyLpbydDQuke37Su+nD6kDfVjH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gknJH4DZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gknJH4DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D34C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754193593;
	bh=Cns5MxyeGdQBEYXYbCubpi295KB8PHXi1bNcFd1G2j0=;
	h=To:Subject:From:Date:From;
	b=gknJH4DZACuQ+YEMZiyIo4/ldxuswJ+4Qbbs7ThpGeAORiMl8lEdEBA/g3EopUwEd
	 3VhL29sUDFkIY0mtugOe4EPGLjcg7eidG+2xzSzl0Cmpez2aSwktiFd/a6WgXwjbD2
	 8n5IHbchUoZVusmZPVBKGKi2emddgk/B3F925iCm1YvvILMU5/oVDDeovcYAiEFjuR
	 WkgD/Xc7nD1xgEHSYyQ4D/ZLjHm9F0h1hyt++PJC9bsCBMNLimk3ZkWcJgcGjO07jS
	 Mx414kScKDCpSZhHFC747gj3AZgvmo4uoPTc8vOyNGRdGJwR3i2nX1/6xypzREHUfC
	 bOaKWvpVje9lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ACC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419359357.12264.8873534292925318816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9882b6694d84d735c9d45cd1a9173dd6b753703a6891375348ea1f1ee639bd2e
Date: Sun, 03 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754193593
