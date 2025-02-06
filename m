Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F37C46BF
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738840555; cv=none; b=dbJVkN1926BvJ2l74W7vtSRlFyPkIOrOKCL4dvAVzEp01CIt4sszorX/vgh0+xXCJ8PmIF1Mzu4YOZM4o+Th7/RJDyKLphTapJafOWqgGRFTWCqGaRpFG5LKuezpZG5zTX2mcHIph0fjjhF98qa2fuPzZp8O4sKZDjVviyQs0mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738840555; c=relaxed/simple;
	bh=QqT6F78mTrGK+Yt1WYOqJQZbapQ9ituJt6yMYNfUa7g=;
	h=To:Subject:From:Message-Id:Date; b=c3AoE42/Kbaj9c0aaw5wRMUjAwBNaOEevWpC13vcFCZTaxPDQN+eqt/R+eFhM0+DZdKcz+e4o9DIuq/SyzKQ2dAxgOPeC1EDxm5MtjD3x5B83tE6x2sUXXlzdP3Swkqs3ICCQ0pGTzpRSSzYGIde0UEZ0FZbm/dYDOMAUJxmOEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r136Y0CJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r136Y0CJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA430C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738840553;
	bh=QqT6F78mTrGK+Yt1WYOqJQZbapQ9ituJt6yMYNfUa7g=;
	h=To:Subject:From:Date:From;
	b=r136Y0CJEabxKguqLTrBO5PhZG4YoW4TyRSCMedsSSrRChXUy3dE6N1vm5jcMTzun
	 mTBHPEvoXlU/79+JOtbIYrErQcTh9vyJAdE0tVYiPnKoWzl5mAMOWAdzdnunNDoCwC
	 w8ArS7HUnFhau5L2ZbFjs2FbU0nsXfPpNso5XvSC2V90Wc1kuKN4x1yk8ro52tgPZ7
	 vUsR9DgyFuzbTUQlvBLwilmVmL/xQZzx8+B9MSeJAL2hSia0UoMSwxhSjdNjhOEsqK
	 kjekGO3HdxaOkfC/iwXq8J38RpWeHKaGwG1ZNzGwk764mUxBcjmoPnnDxEQVLCtDN5
	 UBAjwCvEF4+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94286C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884055359.26391.11828498883563181677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d702a9ec837a92dc56cd3811595a9435e381a4fbef613e0868a1d10a5b4dcc
Date: Thu, 06 Feb 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738840553
