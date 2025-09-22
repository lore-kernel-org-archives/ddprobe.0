Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE49EACD
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758521995; cv=none; b=kwgkyeqoMRxsxVsF/hEkwHlxdgBsOCTkOCY/yOmJcexZiqz6/73NnOGR2jzRY4BMA6hzqTUcNB1FOA9RIiAi3qJmUrvGZTZmKm+GzVKtLmrektFH5iQDoG1rfSBnLRanGqmFzYeCSQceUu4kR2iDj0XRP8p/kZonvU/Nl4K5BuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758521995; c=relaxed/simple;
	bh=DGU/9A7UumMuc6QPWsFBKSqMbPEmkUhSfB/mGXyXvPQ=;
	h=To:Subject:From:Message-Id:Date; b=fRlBBXpWvacvPfWiqEovAv9x7RcgUpmkBPeEVDztZ3IlAepFFs2QILXURoR5RBZkmiyj/9OIQGW9RAn2nzc4EinjqRZVKq6NeSTAQDMRRSePw0ynIQY3cwQt56z073PZkMkROCRLw9NqVVpC/gVBr5dktoMeC5ykfaF5nU1mMgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxZKYzsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxZKYzsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F8C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758521993;
	bh=DGU/9A7UumMuc6QPWsFBKSqMbPEmkUhSfB/mGXyXvPQ=;
	h=To:Subject:From:Date:From;
	b=OxZKYzsBTEGgpbuWVA+UZXd2IEjFTlwENaKfXNqRtOxRnsyFJgFJCkH6byewqH49c
	 roYc+XBXDxBx2LNo/utQZcoTZEhMhcp7emw/LNDnxzK6NNM75yFAmhxxmEkXyKtPr6
	 mXXnFA733ddC1QEwEH+UJaxd8M1blPK3wj71iyGzA34wSFzGxmA3qLMCKG4+lXTgoI
	 suhfCroH0yMqaluvUvNlbvu1UEyt1GJz8Obe0V0t+niajhs4FDM1zz5duGJOTbJE6Y
	 12/DJE60mRVkNaCgDaZzi82H33/2uO6TKVSEO01tNJN8G2rl/zfVynKrdO3JDPZADj
	 fWaySJ/lfswIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F14CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852199358.30953.12892810542615839088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4c38bf710834937046acfc0c58dafbfe37f4c33e63df9fea8ac38778b91503
Date: Mon, 22 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758521993
