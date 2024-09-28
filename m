Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C023774
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727554554; cv=none; b=qaMGZ+DH62Hw0tOS49EqY7CFQPyg2Jyl0+ydOPLlBO4wmFNdzI4DxjVJByRplgzJg58LtI05wTg30mAQ5XJg4X3Y6vC/6pWQQo9qe8qVTExyb3mgzZKBYBaod/09L0HPsz8jftzHyeP6FNeXaeQHTSd9+mjq8AzXAww+G/4BgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727554554; c=relaxed/simple;
	bh=vifQ00j8e5/gO4s8pBdXzpPVZCAPoYtvefeg5bxAYmE=;
	h=To:Subject:From:Message-Id:Date; b=M33A+JBWjjYB4iwxhWqsfQg5TPPfRL8JXYJJ4yT0Eutv8c69XYetiKsKYaM17xRKaavvt2IOPf0V5IspkldGpp0qqB2a6lOOod4+h2Xr0DJqoG57O7sXIp2rPL8Z+XoFNA/J0QPB7RfGcWnF/O4DOthWiojxxk573/xWA5zmul0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1hzlr05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1hzlr05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6380C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727554553;
	bh=vifQ00j8e5/gO4s8pBdXzpPVZCAPoYtvefeg5bxAYmE=;
	h=To:Subject:From:Date:From;
	b=Z1hzlr05jghY58jUHXP9idhXzoofOJp0vfPRlb2jMIQFZ8jCpMZbH3U0KV0145XUR
	 jyooSYt8sHmQFqvy+9xNxJ3BtBAKuXGSstygjLO1o7kRee3pVaLqFYvwdWzIs1WLO2
	 5UuzBEPnHhu0MzMtPy9cdhEZGgjeQCJy6mk17+i5T39g3u1Zca++a1hrWulCfZ8bBe
	 H1p4N/wMyPtaVpI6ab9/aja4m0yBjDE2RkGxJakjt2qVsspj3zvxgYaN7nAEFQw+r2
	 GQ7s67lhHwaso6p14prAYNFkT7pw7dTglmIkrWQgtUGYFQa3UsQMgpE93HHYkxeWNJ
	 a+n/V+F9DHp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A493FCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755455365.5191.11030966128629564998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7783fba1180be98a0017493852b7e373fd7e8683329c8241e6796b5510190a98
Date: Sat, 28 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727554553
