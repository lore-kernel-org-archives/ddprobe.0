Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546932EDD7D
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784296114; cv=none; b=mYqI4ouO/nNDYquNPorUo44LTejb1W/12kWXu6Mhuyyn+SMNI0C1oXa1kNxgpr/Z/1100d2fdJ8fMsH7U+pQJcE99lKOwmjwxfhoNl1H/4JDjjd9OsYD3EmAQGHw+ZRWcWBg+Z+rcq00b950KefCnZu/jDxxtziP+qgoPmvkm38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784296114; c=relaxed/simple;
	bh=QzcTUwPdCsleThAUvProkeTUmiTgGo0hVejj1l3y+xI=;
	h=To:Subject:From:Message-Id:Date; b=AAdscoL9IcQM7LRvLanftqCtGgT6nqlHNaCjqPTQGGknEGX3+Zcxho1LYGQrP2wd7dzVeAytU1s+rsA6d160qz5NeEqJ1Bm5Icn7y2+CiPDSM95q79/IXukIEEcOof0c0SWZdzTU2sQ9A/jRso1TVyo7bvxtkXzwfM72KQAA2J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnjdHj+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnjdHj+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18B4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784296113;
	bh=QzcTUwPdCsleThAUvProkeTUmiTgGo0hVejj1l3y+xI=;
	h=To:Subject:From:Date:From;
	b=KnjdHj+rIrOzbAyIpjNxRMrfeHXSI3Q5X8Q+c6K47hHhmv75sHCBj98CnLEHpDuCd
	 mr2516xuwq4ODxL+gdi0/aOmJldW/bDVr+jZz1lH3LeRkrv4jEuOke9kL5XRDjAUXJ
	 ZNmlgdEGY9WMLIX6Pv1kvTL5c6dXswUhzLmyoOTES2umCl9Vu8phkBHQZeGqc92cZN
	 i3CVtLJU29VEXbJSWlhKBNdP+pQLErrrRqQclD6YunEYOvtyCouHL+4KTPEhUeCbmL
	 2z+WWMgD2oy7FehOt1DX6ehsBHf2gxsluW7lkG/JHTnZ1N5SdUyN43OfJY8P//7LiJ
	 bjtzFXyx0iqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B845FC4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429611374.14858.2375240072363201023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9bdff50b4b7866731dcd4c85d175e2364aafef8cb1f5a2d06094795245d749
Date: Fri, 17 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784296113
