Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0563B1A9F8A
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754927994; cv=none; b=AKto0nEoqKgnbPl1Rl41Fouj97VAzgZU1FY2kjkv3mFP6crB/AjGMEnZD57OCe2shZyb8nX05Z2BZQzuzsvfoMx11fAqBekSXJm4MsEdNuYokkauv5H/JXA28UR7D55WE1OTasBfkcTit7QMe3bidyVsk+ZewJy1FNH5FvpRpig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754927994; c=relaxed/simple;
	bh=0mJdAy/+YKfHufu1rTss2bhhFOS9M5nO5CtAvJSRy3M=;
	h=To:Subject:From:Message-Id:Date; b=F0Cl0f/IOmywYekDxiqjQZP/lVB4F++JOS3BI32dtxZw7FPX2NVIpsYI0nCD7KjmY5QngCgigtn/J/hSWB6YKT4Dh3UN+ZFr21QQG5urrczAFPD5Jf+bo0UnOA7Igh95RkR5eZUEDrs3wqzxmatVvAbaR8adrUDxnMtHHFNHVRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpy7byhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpy7byhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F797C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754927993;
	bh=0mJdAy/+YKfHufu1rTss2bhhFOS9M5nO5CtAvJSRy3M=;
	h=To:Subject:From:Date:From;
	b=Wpy7byhGTzhefy0Qb5Dqd0tXA6DsOHBZr0CwP+0DkO3Pqj6mNq08ZQmOqrAYyQ72W
	 ptToHzuvlmMj0LtwNndJEnkrje/KKiLNsO/jdKu/yYM+o7jCVJYxoGwwl8ngcvIlCB
	 Ba0Dr5ROLTGq4EOeABPCsLOFzN8Wp1kq6FmZ8aMoRjrPz3BvaU7QoeLxVHyzHVaxgM
	 Wz7Z7WCBS1jJq74VNErRKQ/XiOGopb+n+/IJIxMMzEo3wNj51XFUQcITcPBW7uoQK3
	 nqsclgh5r+S/ZWhz69WpN24AtA7u7lCpvMoFBZZs8IdcEFrvemwRT0Kx6tnLtkoCcd
	 tr+2tD3uv9xOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF17CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492799358.10538.11681083276584002102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60813a6807b6035dbec34f3e0bec42cd04b1d0e454d4c53b7ebc3785493aecd9
Date: Mon, 11 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754927993
