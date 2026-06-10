Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679BC1465B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781056534; cv=none; b=QxMKJtKcRaFmD1I97shzmcvqtk46/f7fvyy2NBpcLRu1Nmu/fyiZvHNiDpa95Fwbc2aL00qIrv4LSSw90pnAmn0d1dVOUCoTJ65W8DpdXhmpbXqKYavfmeKSVMaZBmcJ4hBpz1uVqYKVx6pcXnTyE5c1/kz9IanQYnOE3WxfH1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781056534; c=relaxed/simple;
	bh=9iTEAL9YChE4eXIl3/40PEfCP36U5gSe5vbc1OihE0k=;
	h=To:Subject:From:Message-Id:Date; b=g03OhheUbYtyvD8CSPFXP9mMzG7e3hNUnhS9eO4EuZLDB6tAM/Rk6WWZfeyAvYuTqqaw+oIesmhGt+558EZ3qp4XTgVIWb6rzo57SSd4EhROq+gWtwH5svcx0AIhZ1CSd9qI7qr8OcqUzSrHlmGZL03lvLsTfZk5vzElBJJxH48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/WKc0KH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/WKc0KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA63C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781056533;
	bh=9iTEAL9YChE4eXIl3/40PEfCP36U5gSe5vbc1OihE0k=;
	h=To:Subject:From:Date:From;
	b=M/WKc0KHTvIQkTloVRWtjpK8z5AXYKCG0EmrrBFUynmxTYC4pVc/tSDT1vn8yAsw/
	 KKJEnELJ0IGNCZXzPTuX3ji0YPucvSoEwss8eUrWnti6h/2J+Zrg7n7LEKVpPAX5EF
	 4L14uleBkByob+ujuQ9d4o6roXToPk95VakHOiS+un8JZbaTX0DtXte9aI10s22udD
	 0/uQwPifcDV4PL3zdlMweoLGUZZeD7LGzu6ml32eORCsEPKTMJf7882F8ZsweqPP6j
	 HVPXGHJlsIdqjvQajD2i3h6ZxDrccQinSLMEy2r/sUkHqkrNy5k3klAEIu3kxKisYN
	 RcrG5Cn0bGE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86BCCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105653368.32586.15684721648260002009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb8650b919dfd2e24c55290bcaf5e876760378e68ce486073442bec0dc99cee
Date: Wed, 10 Jun 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781056533
