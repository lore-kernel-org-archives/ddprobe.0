Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A444C6E
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755478794; cv=none; b=Wse7MWBOQCy6pWBptxxB9UIgKBUbtIUGvoKAN1Zp/eNByb/tDfyu8/lcOscH99TMa/u0LS1jlfaQMZL7ardK67hFBZAiqvFjhFvYKPg/OhP5KwT0PuPlA0+xKrUYdSV8N0Ku66iTBgKUuJshwfyZpmCHRjnpwUFPVlOYYokFj/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755478794; c=relaxed/simple;
	bh=K8GSRu4lVIzPywx0Cv0x9V9SRqkAEndPY7eAe+GUwcI=;
	h=To:Subject:From:Message-Id:Date; b=pamiWqkJ9jwN8vhpF8LvUhQoSO9FtXjdxl7BOmeGHEk5f40HibiWWHtHiTqvJIsNbUzQj+Q4gn6Fsx4FozSYrSRaZzVJa0U+BkYdGAD+lzOS+T1vU4Yt7N5NsiNuJ+OGEBI1ui1iLzLP18YHs7I6wzCGGC49osiXU064ls0tgGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWjL6aag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWjL6aag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F02C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755478793;
	bh=K8GSRu4lVIzPywx0Cv0x9V9SRqkAEndPY7eAe+GUwcI=;
	h=To:Subject:From:Date:From;
	b=PWjL6aagEU9dp5G3unA1ZAkhgcK1Ux1HkbKO031YfDHTwREMiSMn7uSONizzR+3hK
	 /vCFzX2Vlg39WSR9Hc0k13waBTRfoLDhkGVVYPdbEsmAqvi6tBlaHsQaFFL0EcDot6
	 cSigDBmqWDrFEkMchmNULa9uGMTq3ValAr3uSIK8fPfpYZd11/71GVeej/5upP7tNM
	 JDSJ9qKfQwhe739dQcD28QooNBVvcqHgL4N8l8EZRLmKauIhJM9XXujIVgFbASEHdL
	 baFB3ys2u2ZDTmCf3XGo8Yg24OmPXi1sbgff2qdob4gOAHED+2l1weamTqc9RKMTMm
	 fGexHnR+goizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92723CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547879358.3074.8289926951141801088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4047adf54599f2d00bb62e6065326ff26c9394a0cd3b424cfc6934f267be0f3f
Date: Mon, 18 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755478793
