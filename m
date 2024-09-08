Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D23B191
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725830754; cv=none; b=SuyANSg8CC3A9Q76mTtGx+47F33HRj710cCtRRSJTqPpRQyJ/oZgPn7SiVKKwxDAAB88Oq4t0jjknMaQQF758LUX36e4YJOI+/a5rRSMz2nZ33uza9CvO7JlABCUHRt69QL7L6Wec7AWoLPgoKJYQhE+OrkbpPnshIE3S9Z4X94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725830754; c=relaxed/simple;
	bh=GCFTS4c0nvnO5POfnJ7wWcd3xz4Yg/SyPwuByIrh4/w=;
	h=To:Subject:From:Message-Id:Date; b=qTD9nSt+Dz0Ddn0sRH4sGkVtiOGhfols61YU5+af0qf9TK5GO7Rb3lLDh7MhE0d+mPSWzkVYqywZ5p3qUyR03kfSRvfZ2YbIbcUIClixqP0yjKuCPi71kJRFLhsjeGl2luOpX0P/vAwvNRtGlbJeEHHhOegkSVuFLTuLEjiMx7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAaNXCz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAaNXCz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56CDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725830753;
	bh=GCFTS4c0nvnO5POfnJ7wWcd3xz4Yg/SyPwuByIrh4/w=;
	h=To:Subject:From:Date:From;
	b=aAaNXCz15Ds9mn8kYr3X/CBjjDUsBuRloc/2Jyb/j33unXM2CK5vR8xw1W2CA+sce
	 fq2m5pHWCEc/5Esvt6BGNvhDBoXndt638gBgHtfNf32bM4Hx6REVizcCXC7EDtK8+L
	 /ENjVlDjFoF7p4tWuR4V+U1eJA5Ls8bmmE50PZb60wZKedJXyvF/P9BpG8X9nSAEfk
	 MdFC/LVqaf1WiRiiMNkEhALRlMEKkkBJ+2rcJQYjMuKijBO0grAPgm34ExLqNpLBnI
	 72CxiEQefqC7JZy8kPXEKRxEyuXVculW41YF/gToydbtMcbtlwAf1LVPVoQUBfvBFl
	 nw2C0GgomtM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A310ACD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583075364.7546.17816402830088707288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43db09cc27bc62e0d41c901068e46ac1e9a25ad16c23c646cc2f722c05fd4d00
Date: Sun, 08 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725830753
