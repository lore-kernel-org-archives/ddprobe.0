Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D67B1A76DE
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765941834; cv=none; b=VP6zW4X0OQW0guuCIQDqrOYass3DgL6KeEq/nV1jLQkL6j+5fDQn/eE2sVoCrSkKMA02MtGlIt/H7Ho/ePTHi0fBJijYg7cJGJ4tnkY+OGzJo3Ek4rtobQUt+GlHAYoiQ7Ln4DM2Iegq7robgHL2Yfy83dMEwRkLQho0itGKfjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765941834; c=relaxed/simple;
	bh=Gdzq+CGb0E9+lllq8sgVzORDOyFY2pE1f38bEzmDAbY=;
	h=To:Subject:From:Message-Id:Date; b=g6K3JznNRRfskCDVTUILGmEKxrCz4/YdFHnSC3W4dFAtlLLBRyF0oSS4a839onwuN8qWZmmQWvFVz24592aqi/9TgZxFEyCojhpc8YMlzH5LHKCSiJ+DmMciA5tzNRgGjeJhVC/oPQB4r79tTaMf0/xNwlqafe+MvmzomzTpm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Luyc569o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Luyc569o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB9FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765941833;
	bh=Gdzq+CGb0E9+lllq8sgVzORDOyFY2pE1f38bEzmDAbY=;
	h=To:Subject:From:Date:From;
	b=Luyc569oXpRHuee+hIb1mZxQoeeDFqTHdC3SwhaBHpKi6NS99x/AOjm37a3KE4MvD
	 0xLtVkz4h/X80CQKx5lcMIrGLZuPngzeQyiYiqInbRMzfwXjrTeAOROJERJFVQlr9T
	 lhNVnv9cr7j8gO2e6UCIZbUbnLhOX37hpdQULUujPOuCXZnDQg+sr9ExI80nrQ9Np0
	 SsAWrEn5Q3uuEKcFcntbeeRWRxWjoou8D1fDlsUysyO7bayU0akGW4BnhBfUNcgYJA
	 Kd1CrCRqT9zgKN8wtztjx05li+1bmpWO0AbXrp01qr+xhbaAmxyfA/SJ1TAYGDaKgR
	 z0s5YVvpyLoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7E4D637B2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594183363.20536.17940863778200576127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa618b3dc34911a6009a076d9679811081c1d4473258fd2e0786c2f30a1b8b4
Date: Wed, 17 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765941833
