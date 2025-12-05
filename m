Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ACF1F03D9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967374; cv=none; b=Pk48SdI4SDSPhyBr9wvHaJ8ArYaPNoWJzEZ/sJZZmo2qSbV1DwhcsIhMd4OUvyMDOnueYCHdLPicE9YO0KMKht0jGuOzuUas2ITONk+tQCcA+1dJKMJKG3R34icJwxEToIFdiAgfxGPFjRv9DxZIhjMVN9NcvE/5TKHTm4m4y/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967374; c=relaxed/simple;
	bh=UG+U7zya6Y1Wt+v4xvnkpnTpWueVJrM2ZjDiDN019I4=;
	h=To:Subject:From:Message-Id:Date; b=h+9Al4a6/HxvaINUnkIJcKeSLDrn6fWQc/6AjYHI65qbxQn7c8IpM17Dy93GyoEvKXAH7wgGs8y06O6DlcUJcRS2NZmCMeJW6IBmfarnTkXVh+z1wkkL0qHrjbKMmiI875slFY+W1RqCBZIG0ha75RS3eFeGqOURanY7kGY9cc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVQlc757; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVQlc757"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0326C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764967373;
	bh=UG+U7zya6Y1Wt+v4xvnkpnTpWueVJrM2ZjDiDN019I4=;
	h=To:Subject:From:Date:From;
	b=rVQlc7579DtvWyW6Y6zj1fWrcinG+VXSBbqLD5q5KqJcSCndARKHMISjK+G66oyu9
	 /h2KWT4eO6pU8hGSRZTa1SuzEq9/xoGLm74BAtU1nXGqTFmwXBUuOrJWadln0i7jp0
	 26VBAErcCr2oDKmM7ygOcDlynuu8i/w9yWuKVvwpvMWQiVZZT5tAioYuShiKMIWiyH
	 Gl6sBx+EsZhHcCK0lMFIB24E1fM8NGlX+8o7mj2qHwTrF42dupoNIpKwE+Vd4ALTiX
	 oqp3aLWYiEInd+fJ5a3W74hWNO15TvXPNDiIFhKDjE2a9c5VkMmYTxlT7drLe5ifkk
	 /PJu9OuyS62DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E5D3749C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496737361.8396.8714342303442190414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c22324ae53ec8ca61b3e6c63728ae0ed408b8025080316150c9e3b8b807b7dc
Date: Fri, 05 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764967373
