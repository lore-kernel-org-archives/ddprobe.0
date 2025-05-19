Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425834B1E73
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747688994; cv=none; b=VsNrpYOeuEc0NL4f8jhnJRU7dkHSa5A7b/qJnRrageEI6HT1bhQt8pjj6WK10P7QBx8UD60tNcoiflyrShJ+ra83gpDwYTJM2dNHgHVwQqACpjQw8je5AhDpbsHRw9nXDqdJcy5p+9m6mEIJMKABmJ2ErLtoHybe5FHyU5oBPEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747688994; c=relaxed/simple;
	bh=UaG1a0ldisNnEZSIBDIbL+XM0c9Dj7TBsc+TOu3h75g=;
	h=To:Subject:From:Message-Id:Date; b=DFI8EhDW2qaoFw5fERxla/5lpoq1+tJJD6aPdEl/eVfUx2QtKB9RKVBdXF2tZHIC/yFQCAy+85HbZAgfIu17sVA1i8FQ+KXSba0xnFy6pu4JFtkVHZlXaFSEHph/sxPZgHtauvYGkp17HWNPxPHLro7Ayp2WX3hi/xsmiu2wxbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJqIIiAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJqIIiAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F90C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747688993;
	bh=UaG1a0ldisNnEZSIBDIbL+XM0c9Dj7TBsc+TOu3h75g=;
	h=To:Subject:From:Date:From;
	b=KJqIIiAb0xKkUM5t5Y+hpEhzM9szh1SSkEmG14GuBYcK0qiiVMI1qmpkZQ5bbZL7e
	 peq6gIQxdolT+PGdRu+o+YzPsB09yx2nuKMliXWooGZ3YOmVO4karupSAr3oV1R9E/
	 tGodpBQ8sWgNwWvlJgky4bb0foRKPhVm6+Wehrvt8cCh2On61wX5XgrvpT/xwEJlZt
	 +rtXLTUkRGaTGgkrEhOoZoh7NBxtEhMQA3yT5zl1m/sOFKDX6s+/nSdTFkp1bI6cHq
	 bGgt9nqwJeZsMhoehpG0SaAugYd+uh466oHYGP42LEoKkEd4aHTbEeospaYNZeBbC2
	 viQq4QV2ZPDDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD3C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768899358.10045.2217335625640346868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3412a8bc785fdf992359313be6fe9898301ded5b3a079f407c463466cc678a90
Date: Mon, 19 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747688993
