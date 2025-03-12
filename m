Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE691D5CD4
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741817334; cv=none; b=dlxtuKMmKUnnvlYvzNpAF+fi226VP3Nb+vmT0Un1J5dvak5up6L9didOP79ULv/y6CNntTJdzIKKiNwGn7decn2OZlQxAlVbI9PgfTogM0H06clJG5jFMmak2u0nyER1NmoBGGwkweiD1Fs5lOB8KkW4BHmjpw5d7ngJzK4w4sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741817334; c=relaxed/simple;
	bh=Nt8ynvjw3OWrwJfWxRA9rPAdNk+zGlwdURm4GahjkKo=;
	h=To:Subject:From:Message-Id:Date; b=fV5u4kdQqsb8NgFHIX1Jc++0OM1shhMrDa5vpGA1hkm72wOjdD+OcU2eHpXrftqZCcWPoL5yMaK2jOfgtCtmGeKMNwbZUIG40t7bngHb99CqzaDGYNktqrqmmw+RFCPL6Q5HUx4g718mkmH+WbQJ8XBFXeVvgF25AwsKAAj1wNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ljc+dAys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ljc+dAys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77FEC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741817333;
	bh=Nt8ynvjw3OWrwJfWxRA9rPAdNk+zGlwdURm4GahjkKo=;
	h=To:Subject:From:Date:From;
	b=Ljc+dAys5HRHkvRzMXigz2QwOhPFLAg5Ts5qEpIED1NOIh/MT59GAI5u5QHVl29qv
	 l0P1sMQAEWI2goqAsR+4NBSiKBsxruqEYXGuKh2SOOpb+H7D6pZlEHmaJMYpYUCM/8
	 bSMwubU5EnLqZNGQZe2OpCKnPyy6K/X0btJ4e7r45lKTt1mv5BHjT9fpNQwjvvC05l
	 GsnYQuN8AF/VLRLQ3Bt5yhQhNzlYZhc5T4l5Fv2EfOE3MGXvG/BCHARjMMf4wtoVt+
	 o/hI6iTmEeoLumIDDbrPfjTMgfGRaW85hjcONIXPw3Xm01dptMEp0KjXFWNg9RULX3
	 Cf7Jbeu6drZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABDBC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181733361.18863.7861771462941736704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a545c4ff5dbdee0c9b18abc041e3fea63a96fe1d56ef7804b22c21ec45ce241
Date: Wed, 12 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741817333
