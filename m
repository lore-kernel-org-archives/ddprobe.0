Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4938437F337
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784875234; cv=none; b=NDNEJoJ8ddcPcFd9dWeC1N1Bwi/3Yxfjte3zcSaMkFZb38+htME4ZUSTWMmS3Eu0O7Xlbd6A7os2ncGP8oXX2WHsTTosXiNgi4EYdABwJrxCYNa11rEjrpEXvFkS0nR9qH3fXp03CK2sYEj8AdAb+F/8udlNBg61yshNK3wgXmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784875234; c=relaxed/simple;
	bh=I5t9xmdWWHWxNJ4HNhREMN84jGp7eooLMhGyAabLRiI=;
	h=To:Subject:From:Message-Id:Date; b=u6DZhv9TVAuUFCEayR9frOturrFeMwDboqkg1PJJEaMK7Ga4CxeHmsM7Kuc/0ocmojzrwSabrQxf2dn7Lgu8efZZz7lH24bArEVGsZ5GnRq9zk9Trm0j8P3SSJQLBiepg25dhEW6bFfjPhu3nX3RtaKyl7q3eL6qJwvibRsxlZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8cplxqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8cplxqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8277C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784875233;
	bh=I5t9xmdWWHWxNJ4HNhREMN84jGp7eooLMhGyAabLRiI=;
	h=To:Subject:From:Date:From;
	b=N8cplxqk3pnfnGMI11dyT01sRAMIzsYAeazLSczVa9oOSb71xtn32xVjVACJyIhU5
	 wp0FGpfNwqb6WfWUczO3cQd09h3Dj1iWWnFSjMOn/yaUl5pQpzCj5ww3+9dMei8NTU
	 xhNMNbP9dnj5vdFP+IsvOfYL0a4eqippvLe9FTRu9yvzeAA8lxKzPoxfTLcfVjXwRr
	 qAdWpcSHPVmjJXToLawthCxYLh5wyT5FaK88pXU905LsTet5is+I/iFSdI/ZJ/GHWr
	 jhJp39eqICGL1sE+DZrW+mj+ADVwrclQYVrPY0G18dxxMEoYuKX9dgv+s9KdUaN4uy
	 ww3U/lQynM1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2397C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487523372.8797.13877881834395977592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54b6c8bb09399fc0530c3990ad928595f4809834a97a75a12cabd3e79a09009
Date: Fri, 24 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784875233
