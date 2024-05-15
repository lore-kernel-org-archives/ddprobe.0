Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F896446AC
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715800343; cv=none; b=HHtD6M90UZqU0IXNCdXSSE/UrIepJxlnydVVdg0h10DMpdcK5cGzO65/X8BTSgRiMkpWoU8nRvZk0Rlecb/qOO88FkNm7miKgKZcw2PoAcjh8gN8SfLJlpUR8BrXm2W54dcOpJ6u04UUXCg8W8gav21NvZIBZfPmCxFYCamFZLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715800343; c=relaxed/simple;
	bh=3knt6gwFiXSVbpasvlknHxSMXzAddgB61tYSCGUGULY=;
	h=To:Subject:From:Message-Id:Date; b=TuvnM2iJtNWw9VX/PXz1Z/sbuVR93JKwhwBgTIXkbZ06FbGaGsaEvpTBNLXkbtQXuCICYq2HfgvYL/qX9tyDbtJ2mk5iAmdfrTUMdJhZ2wWPXlbKx1ADzHJMmvUgrnsO275wOi2Hhe3hES3IgZxpxBDnkotFy5s8nqeJevXaIeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYVPGIt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYVPGIt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAACFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715800342;
	bh=3knt6gwFiXSVbpasvlknHxSMXzAddgB61tYSCGUGULY=;
	h=To:Subject:From:Date:From;
	b=pYVPGIt3t2zZI5PdLz4Nov0EpRYYiWOxaT32Ycnbcl7PuWkZOZrohUI30QYJUFZQB
	 ZxoGorbfB2kwdblFguRxL04gTgG+SPFI4MRHsMY3aB7ckyqMlxzqvB0prK9VGOm1qH
	 1VwCa9g/FTi0msDCMY21hpsjE+QV2bNWfdnIdtCXWHqllQJ45YytOOUr1OTh993pyI
	 cyd5ICGsc88HilxjerHRT1Ly2MaFn09iOiyepbb7d3ogE+LzrPKNO79grU668BLB7O
	 IYyW+2ItCA3qWmLGQSftQTnDJCSVCrosURDNjmMHJGnLSYBH6Y854bf8l8RA7Rurc7
	 ok/v5EcS9QN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E2EC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171580034278.28866.2495461107266335058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ca594dc71ce3b1f112c2116b0c7aba355e42b19987bf9c6c3e84db1e05a171
Date: Wed, 15 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715800342
