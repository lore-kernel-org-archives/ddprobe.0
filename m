Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085332EF9BD
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753280994; cv=none; b=IsYwFdhd83z4SfGdHLrAeGTR2by7vmLrfb8TszF7r7Zx9P6MY8Qk6FEeNqBRc4cg6PkGT8K9iDvzNosHCAbvL3izrbwDqN6ez73MlDgzo0/8C7oFF6VYZ+uVjSLhao7m0C1ojBwRMc2vgWDwxklyPpLmJoaj9Ix+gAvq08yTiUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753280994; c=relaxed/simple;
	bh=D39ybjDZ9FUClY6sJTdHjeRTf6k24gX8tmMS38MU8/M=;
	h=To:Subject:From:Message-Id:Date; b=YYyGzPYtEeX4ckFV/sMs2JK0KZjTgqwQXA3FO17ImyYoyOBABIlbB4uxLIvbTo+4DxrU4lOF2jVCdz/wyfvNKuJGB7esBjd+fPtFmPUAvFoRTIyzj70r5YlT47BYLqokNT8N+tSrPQxia+ofOtTdxB1iJ9c8ZcpXqJofVFQiY/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6NRERak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6NRERak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE80C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753280993;
	bh=D39ybjDZ9FUClY6sJTdHjeRTf6k24gX8tmMS38MU8/M=;
	h=To:Subject:From:Date:From;
	b=T6NRERakKU1yCCeh1wInhUYjpcPoHSGX/ln4JUa71n6+BsqTbUqF1/aNKsX/Vy079
	 hNFq3wcovoC+V48Ez1Yy0Dm0Z6f+K8hdmM9JpHed8x4BU+i/SudS32oqV3UAjid+50
	 u23qp4td6pK2KiwB7hdTtUk82n7ssaWoJ40nkU3LeO4W1k3g0BfLQ7eZMw7LPwLfCG
	 cQaP9/ZhuIy1L3sQ8Go/fLEXC/LXYhyU78SHRglB1ElQtt0t7ZtL5yE/FqVbT8czX8
	 oGE+OX7mFZ0Rvr7gOHMHE5BysRm5zmzuaQmmQw2WWEqAWGXnx1SzSBGa6bk4CUdGgV
	 mmY2YLQLbuCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90709C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328099358.18274.12603889310846111463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1e3292f9f161c0a5f43e757aef627b6be761d3e9798b2eded7b6db8b344767
Date: Wed, 23 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753280993
