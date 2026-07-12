Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8C33090E8
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783852114; cv=none; b=F8Yrob4VZt7S1BbyL1k5eDOQG3g3UFEtJze4wN+5TdvZDgmlllhnLsib0WC5Ap64wWvRmmdlqgCZr2grZFKlMsziEYmtzjLVPIsI99+BsLmmNXqJPP3tO0boX5VA5MvDu3zOwXCczzekX5NuKZ54C0JL55KiJSUirak+b/j3QEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783852114; c=relaxed/simple;
	bh=7Er8ZF/U5+PSIkzKZSUx60DXKs/e7p+whmLA8XqgsQE=;
	h=To:Subject:From:Message-Id:Date; b=J6pWW3ucCk0IkxW62BK3rLrmkFthSRfRdbqkqI69YhZ7yiTUnjUY3B0YSjSvNoT74GQGiRtaWDtyO780tdeK79l37YmFMJTfhOhoB7XSMWEgWftrQyDmc+vySx6zisQ/WIdY5e3tBfMN/OJWJGdvzbBVDy9k/NOk7d4e6ueP+38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8/GpaGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8/GpaGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0675C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783852113;
	bh=7Er8ZF/U5+PSIkzKZSUx60DXKs/e7p+whmLA8XqgsQE=;
	h=To:Subject:From:Date:From;
	b=U8/GpaGrSLhaqlA5X96yiVsnwQwl8Q2jt0lfPAqVZu88Ql77+SCS1c9kfd5/y+x04
	 WbfJZwwrR0CCQaeAqVdqo5HW8RgEBuWBJFiJhlGKCDb1fBbKEZD0XEEi5qqPdh0A8k
	 EXKkg3tjlvSuMncf7lBPJQFnmw3wpQRCMtGamfiV3izHBgd/BrGdDvUC0EpzVZhEJo
	 ruB2oz/A/4stFrXy460s6RzjwuUj/EjEQNlA/eBPextOkmfokSVo0bYr0an+yCkbaI
	 h9C7RWfamevo/7rLxZSgwtgKpdSaZcuIzxfzCzACS6SDzbROI5JonThxH2nc3ne9Ak
	 ZkS8HB2ppsEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE53FC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385211368.19195.3868123876139800876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3924fd6cbfc5793d69723b0545f3d9c28420a981f13b6c70f10eb730c141b5e4
Date: Sun, 12 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783852113
