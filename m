Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B70A920
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748907594; cv=none; b=XeqPHWegKoVTj3NRQpMSY1bZbIwbCMyOAEAJSZAr6wLDMwBH4p/CDWTdHsZh4a73qipK3quG+oS2BOjSQ4bvRVPbGvXojD3LMZ5f1Ocwv3Ydf1aTkI54JWpSq89Xoth0TUS1Sp2kbiJYoinJ5X/yXlMiwX4mKHbHCK7Yz6xtL2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748907594; c=relaxed/simple;
	bh=BuYpoFLrvpRYyirDOU1qVxDonPHKXiyaCSl/sXqyXKM=;
	h=To:Subject:From:Message-Id:Date; b=hVFs5sX0f8wOdizv3kSZRR5huFlxfrJoCGsfNgNPhAVsUYWhi3pownSzMHjgLnPyYjXyeEk8VVAryAhYKjCpDo7lN6EpA8DE1spfiTdUb0wm9ijdn6VPKP9f+9gSv6ula75thXn/6Hr1VFJX0l3n2oRIhykS2oV/LNnIMbyrR3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWfJU4ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWfJU4ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C5EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748907593;
	bh=BuYpoFLrvpRYyirDOU1qVxDonPHKXiyaCSl/sXqyXKM=;
	h=To:Subject:From:Date:From;
	b=QWfJU4kofa5hWqUnVTOq/9HgZY0T6FoQZEzSthus4dhWXNEBFmawSLFD6y+nEgRGe
	 M4zVUu3MKVTcshWPFEsKhSNbpebuSIDPHdSnBP7eaJfHN47utPOYq9T4Y/bDIygF/F
	 8vSjK8bt2+8u2Z0LblHQ3DhPEWcDiZI/ejzDUl6Acym1i+d17XoCjzQoXL+gxCB7/q
	 IuJskXfAfxZLiSBH5BH//V0vIFb9k30InaP/McQjL536XBHQH36uqV4EkZHNLONUEY
	 Iu1HQTjJvbsDyGVDrYh86wIWab5e4Zrk9HfeyimhPt8G+EPh/Maiq0lNbV/IAW1Un+
	 wOtrMY/To0Ktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED81C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890759357.11932.2183662991732727482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598d5eaef8283463e7c638c8e0c5be2e2b75b5c053f18191d959e3ae3f70f14f
Date: Mon, 02 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748907593
