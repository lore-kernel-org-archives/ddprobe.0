Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284E135B14E
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790654434; cv=none; b=XJeUpMBZTSeSwnD54t0H/acMYkr48NQH9zG6nCwHE7otBbLw2opQSH3np/AC9/5jGty1sbHsRYWl4W+CE8co1aPLM3IxJ9Goc79RIPAcymAc18op4LL3jBKj9YCCRWsGN0EGIvA/rXh066gpsZ7PWnDqcFZHAFP06xwu4FoxETU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790654434; c=relaxed/simple;
	bh=92TScaibYpv0ZnMvnyWPssez2dJ+Yg//ThCQ8PRMLL0=;
	h=To:Subject:From:Message-Id:Date; b=pBh1HBFzIDutbjTxYmjWG+CgEzTd7fNqjoAXOKsxb/OWbK3F2ITFuKpe/OwMbWbdkMlZrLTKfLtmJepat5tMUiX0ksGWh0bRvNTGwPoXfs6UcANzm+CIoORTSJSp7+cFWqyNuM1N0hV3kAe5RTtcdLGCSV/7qJL0tMAu46ZPYxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onsGplc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onsGplc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCEFC4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790654433;
	bh=92TScaibYpv0ZnMvnyWPssez2dJ+Yg//ThCQ8PRMLL0=;
	h=To:Subject:From:Date:From;
	b=onsGplc8v6G7oGcMeHyloHATELNCugxbR73oLp7P/xIhewzEjMC0Xe6Gd5IwRFKo1
	 LgQ/2ub//OXmFTVaLTOfqoRvq1E6OZOAoeKaREcLJEcb2WcA0GeWl1C1toL11fL71d
	 PP4kDpbpu2GbAtccabOUmz7yVLnYcJxPjTlarroLK44yJw+VhvE0EnDkc4PDbX/Bo6
	 b8cnNVvgV2WD9ExfnhLXzAAFLvDwqZ51UYQSBzk/sT2bRDAkzthOR4ed0AJENxf3pp
	 FdxGvHd+IyReUK5wMxiO0VLKwg2fKKhOzaxsv/1d0TtEe4pvwKUMz8AQ7iu/5S+dWX
	 b2v6IU/8SCynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6A7C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065443372.23686.6829376594802808466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1b9243c6b6800744b4ec53b3db57a0d18f91a7ee5e9675e5a2010058dfe52e
Date: Tue, 29 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790654433
