Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36612199BC
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760239794; cv=none; b=mOzAaCOAv4ZsdLhewB4e5F9Gg12DQ674+4INToaBf/M87a1NK4ODFdEfcbf6EujKx7Q9taPqg4KoyudcDuGnaxLvynwLOKiIPKTqs8zZbqeqCEE11cMvcMTZlrSV23co5ZvHyJHuBd0CI+t/nZ5i/0yQHXXqsnhkeiChNvhQXQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760239794; c=relaxed/simple;
	bh=LeQJUlW1S1elU3tRbtKlOSO7/Lt8cNIzGCAEm5lRue4=;
	h=To:Subject:From:Message-Id:Date; b=L+iSJM36kEpHh1xk2n79ieFvpXz/h3cS4m/AjN6Aqe1dl8gJyGbYNV8i2pWIRkTsou5ftdMZ45wouTw80C7qyhXxc1y9/j1UbQp8HUJ8Na9v++wgoAdk634ltv95kMBtqqvu7Mk+5918wJnhL9DCts+By0Kv8COJv/TixFM0XkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vag38oXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vag38oXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A445EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760239793;
	bh=LeQJUlW1S1elU3tRbtKlOSO7/Lt8cNIzGCAEm5lRue4=;
	h=To:Subject:From:Date:From;
	b=Vag38oXpZlniSFtgCbVBNkPT5C47qXKa4Vktc8+BnPt0L8PxPQGIRK9fqmAH92yzH
	 +m9aGN491FuBugttgziMNdUNU0JiJ31mgNXjDnacKtAVBhrV6NMIPN6wEKV6X6xteH
	 ZgqYusftWzHsMOoofdLamCMJpOEqhfz31xu3PMNKDZ+hMI3ekn0/i0N8BR2n73HwKu
	 ekaVynqyjIBSwEzR6CGTgkPH/VFGSQbJZd0Q84AuQnb5Hv39Ygf/ambJixBy1Gphfu
	 iHaEt+yx90oBJnv/GbkC+UjSGluGvDFIqsd9NRAXgCqLueQJKx51k+EGsm1Uf92fcX
	 W5Wyvelp9RYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91829CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023979357.5414.598807588915816952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c412699251832555a4a549dd0068dd25f55d373a0329c9acfdb645cd3797535
Date: Sun, 12 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760239793
