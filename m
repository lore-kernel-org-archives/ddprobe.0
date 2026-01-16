Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2677260A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768577633; cv=none; b=t1epESi7m56Vp71DiCQ+6XP7uFst872fT0F92bSUz1lw/BpNYb4MVr42+WYX8nLUp6P0yjn0AutyE/H8EMF3fNHaNZDCRf9UcQmHA+UaF+X9/fmnQf1Zthy5p8qom0KAGWMx6+rSFW4uCDoJIRfXC/8luhu7p1wk4yf9eo7E/Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768577633; c=relaxed/simple;
	bh=jzRWyHIOKhK3lrAhe5TD/s7p1NBWyRPnh4EtZLmvVZE=;
	h=To:Subject:From:Message-Id:Date; b=LvW7puPcYj3exoSANiXpzLFCS1GUlISqxaxE7bzbBLji/3ov9v5hY5rcAnLiKeNfS4Z1Xvn77bYTpx6++DVcRFmEzu4nZ5fESUYvqMie946cX5RxdMbZls273dZU62rDBqLshurnMlT12HuIg3+VJimPeKUwsgDPOb/awQkojnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJut+pwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJut+pwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768577633;
	bh=jzRWyHIOKhK3lrAhe5TD/s7p1NBWyRPnh4EtZLmvVZE=;
	h=To:Subject:From:Date:From;
	b=FJut+pwtFKot9vAfZ/GWYbVy6cJy85/YsurP59cOjV+mdBgZeAl6JcNZeZrIsiOFA
	 QF+OTt7C2A9d8r23X8vtzjFzG2Oddat4gHpcG/CGuZ+Ndpys2tMYyGw5RikLigyY/E
	 cD8xT44SUdXl2duIYcUomnk7Kk6RoA6O2tvSk5IuEFYb68GefA6D/d7Fy5NpfaXsz0
	 rtc7+l2bJ+rxPHrXzrqZ+xpNbcpfkF2HVOnF7XUhvxmTaHACm5GM0vBvSkIfkoBCP8
	 4gJ2XwhMLcqMJeanNRxLFJPRmwhrbdAjfiYfDDj3WAs8tqPZnbiY82w6aLt/ygnrd2
	 IuuJmpsuw9mFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91162C982D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857763358.3440.5865541918702273261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e0f37ed1ab16c721d14d66e4d5bfb81de57a862de7108eb423f4d5f27cd46a
Date: Fri, 16 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768577633
