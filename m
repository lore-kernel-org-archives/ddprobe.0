Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424F01F4627
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742638795; cv=none; b=a0huezuJvz8L40WGsjgtmFt4BUmGOQuchiCcIofdB/Pj1FHif7dr+sT7WzLUxAS/JaR/jv48B8DTBdFx1skhjbwAplOvnQQon1LJPtUHjvDC7Wtp+sDXpt+WtQI3p5O77Rht+KO3rbNL1zFgMLzzW+9KyfVNnQLoZjbctbkwxW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742638795; c=relaxed/simple;
	bh=5H35RSjLA2qHkWAf59RPpi3Bk5sv54t5qP6tUUe6GZ0=;
	h=To:Subject:From:Message-Id:Date; b=uSAsfSBQBTNzDasPZ3+cjFLEc4G+bm2ajwwDfwmRp3Skwh7iZe9Q5K4xjq/q8/Tg94bLn4EKUr13NAucaz0nDDbXvsENeTdUjDwgdRukL1ub0IxA63vHNJ2MXVJTrrOy8lDOx/K9Uv/qPy8V/6iSKGGcj/d0EalQ59VvTL0V2TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pxm1x5OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pxm1x5OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC18C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742638793;
	bh=5H35RSjLA2qHkWAf59RPpi3Bk5sv54t5qP6tUUe6GZ0=;
	h=To:Subject:From:Date:From;
	b=Pxm1x5OZOsfm3znEbVazF5q2MALo/Qc4hnLnkwHcKZlPX7Pwa+UCJQKjAVnruEymO
	 EyVJEknbwHiXbJxbNi1G/9e+xf49bkLOQ7otQPOaWeL+D7hPv76b9FMYBXkverNgyy
	 els67i2/SWZ0OsLZbCeZ08Q7wo8DJkVR0fJctLlynGwgCbZNP6bi8fiElKXbCf5A3K
	 7iWPyjSZBDnM+maZYBKTPyw9hbM/CLWyrXDm3LZ9PTte70Hsk3SS6X8TawQqVkZrTl
	 EOOxG6mkp3sQCAYoq1fxGfnyRelyr2IesAWLu0+YYeGRNRln4rBfURBS1Ca47mckKE
	 lujp5KMJ9T5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FCC36002
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263879360.14249.9587438520215573840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f92b3278db6010e5e151a82be5371cffed6e91e298989f42c83c7e2dbf1c84
Date: Sat, 22 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742638793
