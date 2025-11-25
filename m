Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1B63246F0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764080574; cv=none; b=CpJM2hUcPWjGtJoz4TCWoza5dIHwCpUyPt659ZIVE9qr+OckNuc5U8TM3wfjrOlrKWUK7GFEnxX+4vpF6gGGMDdkeAWFYq3N7254ZOvif+eNfxV/ykeqjOJZBI1SKHBlxE4mYfU2ZuEfQYH5FwKDeOvEFo/DndlGHE47EoV0omQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764080574; c=relaxed/simple;
	bh=LzHC4+e3hqnTP0OufHTbB1dGR9tECUHDUUS6sqlP5qM=;
	h=To:Subject:From:Message-Id:Date; b=Jyndf+bB+gap4DiO4T0QmYBpXVCgmvwL4NLKY0/5La7e7sh5A/SvPG14/BOeFqQBFVOFxjXd8NdZQ0dSrNlJwPAohRBLBS7pLhmK6HX9J32/duGliYgRt0IwgHUFF24Yz95w1joQNFwUXLnTHD6Z4pgvNfcUrdIO7WNs5HrmOhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BScy5H/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BScy5H/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3820C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764080573;
	bh=LzHC4+e3hqnTP0OufHTbB1dGR9tECUHDUUS6sqlP5qM=;
	h=To:Subject:From:Date:From;
	b=BScy5H/QU5dntRh8ku1pwM/GTqadrGv0xcF8CJU/bwtIBofZEKChOJKqp/qZrBYF7
	 i6iDxE5KTjzj/WnvfddjTGUryeLY3Qy7YpO/TSSH7iyT6QoLJD0NJAp23djDU7vq3w
	 ARcpMDCPL3Th2OIE7p8ADQuyPn9sEGEeTEUWKRh3YjFhvBXDCX2LaV+0OAJAJTtD/o
	 i5vh8LcQywsg4vdNhG/CYHzb6w0iDX861Fls3y4fJc9LRfaGfIqoCTnady8iFcXV2y
	 hNyKk7iqGvAoVDwWBwuLMD7w+WvBGoIuk7Rva6TUmY3pmNgHoxcE0Dq6sWUED5lRH8
	 k4m/ajiAqPxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB7D0E6EE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408057359.7335.15248431695033596121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becc4ec6867e026aa5f03f60ea735e26d894449593bd8cfca57cf686a53b11a1
Date: Tue, 25 Nov 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764080573
