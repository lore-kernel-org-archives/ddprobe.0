Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DFF1401C
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744423794; cv=none; b=cxOp+Ljwy9h0R+dGkvad+9SE4rADll/zW//hQ/Pphz9NiZzvuWw+lRV0kQdwLEyXnYP6exOCfGaCDlopuvI9cbIsoR2KtUHjikW+mr2k+kr0+ykqq869m+NCMP0hUO21brEMgAbcE8bqdFVd/v0PbFo9gd5ZLrFknmpezp/tORE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744423794; c=relaxed/simple;
	bh=uNLi2wlc25nev5RJSNJ37AYnSmcry0lpApWkSeh9I6o=;
	h=To:Subject:From:Message-Id:Date; b=fT35lOhZq4c5eaHENj12k2L01KhI2sFhMBAf62AZBn27GxOaYEQiNPsxxNpcpNxc8HwlO7tjg6IjDjxgGAEzx4r8N4dV0wwT+kBlt2AX+gniwIcQdLKYlAzvhNiODltMf50rJ/nauTBcgfRZyhr/5vU+oi3VLbyIUOv+nZUcQlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HET4xnkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HET4xnkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FD9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744423793;
	bh=uNLi2wlc25nev5RJSNJ37AYnSmcry0lpApWkSeh9I6o=;
	h=To:Subject:From:Date:From;
	b=HET4xnkxAxiEpPC49H5x37ufcgzpCMxMEORgKYDES0Gpwn3F3fbrCGoboAwuu3z+0
	 5zIigcJsgv73beYhJiSx9l66qO5C2aMrDB5HGlr3WfBZInzZduF0EqEJ3J1lrXd6vn
	 dobJLEdpm59l95WEPsiT+G9EfDIna5HatVfValP6wpVEyYD+5vWmSPFUkSwx/xt0UD
	 XrvF+D51V06l6VESY+ao+Beh/6pQ5C0kiBbnLGqx29C++K/gxUNgAucDnSjLtnOuyG
	 4Z2dIAt+gBVn2OvIcaRHZNABgVG2WUzg2nhKjMAAJcnYXc7FebjyLi96/Qo/k14bTm
	 nQpa/KAcAQFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6E8C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442379358.24775.12534780847148978606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fee3d311fe57f6b34d692d34177057844612de2ec005530b8ee51e5fe278fff
Date: Sat, 12 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744423793
