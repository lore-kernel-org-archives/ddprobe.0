Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30474AF660
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788442835; cv=none; b=jHz8DPjxM/aufZWqRHXYC6CGPBX7wpHyUINbVOoe7RUceKDomwpgWp6K7OdsWMsIPZgVvWN0yR35xLVVRmXiONCVryJJ1CDyjAhWpw5Irek1m/GqZlJwZMd27Dw6KqsOEQuBF0upHtPQaRppfp7XkDNulrZV31mwD/1GO2dNgY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788442835; c=relaxed/simple;
	bh=kl3Jc5snwWHVndMguJbjC6EUxEVoXvTNiE9Exl8zsoM=;
	h=To:Subject:From:Message-Id:Date; b=VUc5D72MQ2Keaq/t8IfTPsKc+nsvqHS8iNW0FjSzcJtY/zjIE1AO7jFUXHygGOgvR5Onef/0FXHDiYCXDrO0bjRuSx7kOSa43VwMWjOLyJN/t3mlw16aWeTr3erohOGkn4K8L+1O+OxtnJlmCBg6MTiGPG3KAZbXTZI2Tmk6FH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+Byps2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+Byps2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF992C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788442833;
	bh=kl3Jc5snwWHVndMguJbjC6EUxEVoXvTNiE9Exl8zsoM=;
	h=To:Subject:From:Date:From;
	b=b+Byps2oQ2rDQp/vBQVjFB9NhzGWOnVzl2SoVuXwQjH93OFWQjLbIRQeyQAjhg8Cf
	 YD2HbnePQPUlFXuT7zXSNyyDuGcI5uWngD77rHqijSkOFbUZLRrf4hXCFMvDjJ8tDF
	 ovCB50ti8FKWmdBZ7SD96J8XYqHyHNGnXR3G+43fq8VKyfJbP1UJ+Ey3es4b+1UFL2
	 OpNk9fYxu/xjqqhW2nxqTgt2kXaTD9htbu1j7huxyHVkk0w2gwnxwKDkuk4idBZA3m
	 nmMWA+2In8oXEldJpGJQbFMCsbvHcLvTdNioDamXPceDO50295mX0CmhGeg+cqt2sO
	 w85sbWRPlBoKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAABDC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844283368.6454.3820930635708506222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b760fff677ec6e9d786555355c28f528a3dc82ba17231bc4f872bb877e9d34ac
Date: Thu, 03 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788442833
