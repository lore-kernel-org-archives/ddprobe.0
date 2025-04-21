Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1CD2566C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745201394; cv=none; b=TMHluxucC2mqUuDGkhRFN3NvFgKdGQiYHUEztjlBO46MLA77QXVHrbFRc1qqVo+FvwauJSsilvJml4N6M9MU/pL090EZOnSGjr11nI7ChH4vMPXsPdDl8tEt7zxOggUhQKFqhmEO8l0eH+WqCHC5eTGxumXCSR+qERs1zZKSt/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745201394; c=relaxed/simple;
	bh=8zeTl5WUOQKKPI2/DvXAm4ZNix/Gnc+8lehtsfrh/kw=;
	h=To:Subject:From:Message-Id:Date; b=QlMrE7d25w2J8ajpgbiWPq/G6JjM8YS6AWzvKMlX7yCfWHZRW2BjokxnSW7BqQHvywplMQdghrkMkb+nFIkRelahWgS4XN4ACLqByU36zjJCwZ5YMiVf9l1plE/4wkNWSa9XBe/wl7rcoT7ae42v8Q+k9fbD1yJm/9bBjrHd8q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4Df/oJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4Df/oJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B897DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745201393;
	bh=8zeTl5WUOQKKPI2/DvXAm4ZNix/Gnc+8lehtsfrh/kw=;
	h=To:Subject:From:Date:From;
	b=Z4Df/oJL6+j6Y93u6mNs/KAallsNgXxf7VIvUlExeyxrqLC8gBOIzc9HXrMpavDDQ
	 aA8QWck9EwNoYY8nDGrSaKOxQLl8l1vLR5ZoZmaoGTberrtOsfIboMmtk9eBAYRkBW
	 No0nLNX9BcrF35+O1Rfl1xjTpnr88z8eJXPEkoGxBG7M4iVNRbBV/FGhvg2v+o1Vmq
	 q7xbCIwE0j9ohJOf91022LqhExU2SV6AfqaatNirJ5w7fY9LxQ6baXokFr87KDaUc2
	 XrU9tj2iYM20lwLbEWEt6vdsxXh/qRwbc+HssWfuVPhUVoD4NbHCOBTrE/GYxk1+k8
	 50UZCzOFFUgeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A263BC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520139360.18713.3592249269688617669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9705fb59276ee412abe12dc118a79b32183bc320b3499c38b9076780d0a8f4fa
Date: Mon, 21 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745201393
