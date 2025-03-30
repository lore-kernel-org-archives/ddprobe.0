Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3816C38F80
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743316194; cv=none; b=RClP0mLrAHkLi8+bInka3MiPahItvlNUhiKvKUx0yWh88UZQl/75GbsAesVhk/CvwMFcBfXgy3nFz0pfwwsEEfNjEootFpYxe9rC6V0L8NxA5NLudRZIWMjIBqDIFn2Xiydoe1qW6XfDrLrlXbNRrRcqvtoatQtU2MOfcwX0uf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743316194; c=relaxed/simple;
	bh=cA+Q+fFtDbIKfeycz4o7GRgkMCO6Rd56YYuHDWvBuCo=;
	h=To:Subject:From:Message-Id:Date; b=Mm7sxoE4yWVCqqoyROx6EkjvFOf1HVZDMdHEkBku79N+AK/rIk6csUjOWEIfbv1wcPvxaBohyA2/HEfw+5qclKB3SoHNgPK1sMB3vbLYs/Ni6Si37SsBTFO4/M0HOtw4REkwfYn8SXazTA3OnVAtAMpWM3LogZPXjJ8vO9FSZ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTLUv5G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTLUv5G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E6DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743316193;
	bh=cA+Q+fFtDbIKfeycz4o7GRgkMCO6Rd56YYuHDWvBuCo=;
	h=To:Subject:From:Date:From;
	b=eTLUv5G09SVAxdVkUliZMd/mVPh2jISBbIdpDoq9sjGYQ+LD5eoQ1v0bsIJKRXlR9
	 wRXQd++zKdRbDLXiiXIqR0DN9VqAFTvlUddy0h5dbe31cbbbVi9C9SVljhyjITdOK7
	 Qg5ncgDKcqFE38OYrFA82g7kpFDJt0jrFbrT7lMJtdpgXF9Y2MjYlz+e2pI/180DOq
	 F95aAwy6oX7s79CkvxxUrol5Wopwnct4o544Mr9nV7P0prwCWGjSMv1kREW31zMUbv
	 rhmzAvSPSsiCVAzdenyEBZqAceXB8mfIxx3IOVIXUkeiviCU0aDNhRQx/rqvaL6Yud
	 m9Fsp56PSSWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E715C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331619361.8986.15384928075440914696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0c0d8f1ca2186c365faa9c4bc50aa95174ba8c86121e37d4cbf31352626160
Date: Sun, 30 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743316193
