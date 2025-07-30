Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290A81FBEA6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753872594; cv=none; b=iCrhaPhagPdUoGy4uYdnx62BOP9L9oOLFCBWcTSkOpS9xB78cB/SL2Tq+iJKUjtjQZXZyotlTDus4yiZDOOz3+zZAYhwvPMh2G6zt/iDBbUBLxY40BVGOFBkUMCyXALSGCLDDikW6weys0477B4cMSA/OYoiNlzO9TExBl24b+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753872594; c=relaxed/simple;
	bh=tqwwCeMCGoS03S7FoJWvUl4gCwDmr9qEURhfeL0V7FM=;
	h=To:Subject:From:Message-Id:Date; b=WTYfTOv1ssWpI8+QW+j7qxSc02+K3MWzJw+mXou4jZVO7YPY9Q/qM4EkYv8+1vz3ffMCJwPd0SZ+7b1zMcbko6KiJ1vIkB4fKVP98a687ZN7868gmqoSzKe/H9u4+TyYL2ryPoulswcT6MMT37F7v4sVAo62YMezLWxXWjsfjk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDgKe5TX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDgKe5TX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F00FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753872593;
	bh=tqwwCeMCGoS03S7FoJWvUl4gCwDmr9qEURhfeL0V7FM=;
	h=To:Subject:From:Date:From;
	b=hDgKe5TX1HWbBc0OzYYFX0P6XbqSPK9oYcrOAunlvTPAbI8muDTN1qQc9PoMD7xEj
	 +QiDVGoCvXE+3tDxH7w+FfHOCzEKbSm5k6FEsr/O/KPS2+37Dmmq0u56w8LZ3IEukc
	 Gk+6OTgJcduwaW41oMMKuidsUpHEp88C9HW+Sc8J8/VIfizIreS9o1sW4oYiruXDNI
	 wtB4Xj/yJFCvEUbqa5OigsdNvn7SEOBSSpLN0ony4BhrxC1jCunecBk7ZFFWfLxLis
	 srEVc84MX9M75kR7iTOvECy5kOmKs8iddG7zObbEURdyi1SjCaetkYD/Tj9+eqvrQG
	 bEqcXOwDCYogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0EC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387259358.17443.489887635086671306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7290d87bf7e4ef4c4cba5eaf874ee5e063472b62ce67b43c8b4e65510144abe0
Date: Wed, 30 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753872593
