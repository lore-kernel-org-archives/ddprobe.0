Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7E814A4DF
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739735334; cv=none; b=t0wVAg6jufHQv3jMZRIyGHP9mel1CYgA2iQLNkWumgi9IsureNLwLK2BHNapGsa0bCYcbKuoyzoZ/IalICoARoqorNBDxVtEriB3LHjjqd+ZXzKFFui3ckzzTns7INAFvUwPkkg/sMEHmTHcoC7JOhBuXN+iMrStt0olbNsbTxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739735334; c=relaxed/simple;
	bh=nkzxXhqaG6SimjJA2tqhlEWmt+SH0SGE71bDj6Uvhak=;
	h=To:Subject:From:Message-Id:Date; b=musn2ytUHqT0WWYe8/AeroT3rCiJz/PdFC9yfhVfGe8CsNW2q2sWv5OpB5qPUvvmaKbQ3O/HYtmfQUHs4ry/SkbYGIf1G0TCyHB8ZNFOsdCjthqS9fZWHpx7gq2Ilshjc9rCNy399yyK9IVFWFKcPiDl14KG+CRYxTM3vl99bBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdv9MeSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdv9MeSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F6DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739735333;
	bh=nkzxXhqaG6SimjJA2tqhlEWmt+SH0SGE71bDj6Uvhak=;
	h=To:Subject:From:Date:From;
	b=Kdv9MeSZJnQ9tRhs66imQ6x9BuBaD+W0hIU5Eho2/anxwP7BKWftDIw5TdXjbmbGV
	 6X9P67bIFrDwEJ28JRxDnkFAz6bRT5KbkTrCsYK/8zsRNeWLOhjDBWhIdjHGh5tcQa
	 wSze3IbAcBBrk42BlsZXv6LKeO5viu/d0f3HQhbTuO6q34sxkZ5ZmIDq9IouqF7PaC
	 xKITWIdK4v1e0UeTLPerPIwGcO3FGSFCpkjYrsD9mpdenSPp8wBTT+atwHG9L9/eGo
	 yRlOgylsnJZt2LBA+ey6bIJw5mqHpqNKUXH0bVAonQtYgsMzAbnO+SlynDENA7BKpB
	 bchz7MW5pgcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B150EC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173973533367.14161.12923113795916794916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5368a7fa02062428be4cb754ed230977488e2aa60222b9acdc2f2716f33e5b35
Date: Sun, 16 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739735333
