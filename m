Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3341FD272
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 01:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723427155; cv=none; b=TVFSKpX1iPf/Oe6vW0LOfc5WdgnaVd7EOh4ZaOZF88FIFDT2SJ17VKvJDCUUMKl/GroyFKnbTn9pbbefM6+9DQFnxfynvRJJQA5Ar2KMvWVNvKFHkg2Cg41d9kc+8nzZtfh2T2I1Thx6D2a81M6t8m9MgiBVTuwxrT0Z40R9V9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723427155; c=relaxed/simple;
	bh=OmpbWLdn+2+/lNd2pYpUxYroDu/gejL5jhWjet857PA=;
	h=To:Subject:From:Message-Id:Date; b=FtigI/4R8tVgydhK3tNtBEw+SMem22I/hcSg9sAVqWk2Gp6wU3/bFqI7JtUdk9caXgTWwVH99ZVfsyzlr3+cY+hvsmJjAaS31tYkPN42PM6SkuZe6pcDsApOax8n6DpmClb4XjqFA6Hezo7pGOBjGRasbcxmPupYA5GejCU+6tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSFq05hN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSFq05hN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30F2C32786
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723427154;
	bh=OmpbWLdn+2+/lNd2pYpUxYroDu/gejL5jhWjet857PA=;
	h=To:Subject:From:Date:From;
	b=nSFq05hN01NACG+YEa4FiUThUvxyKKXBj6bz67FkcxiUvFRnkdqMBLLu3CY6kTO81
	 uk5st3qvGv0FJ7NI6KkR7iN5ZdIkJvkHFTCerdBMmVGXV1px6Hyo9MHJA7/vZsGk8e
	 LixaKxOZ3VD8zRkF61Kf3OmKg/OXJXxCO/aIv87/r8pZ2MfYfAOpBNHksvn2OioN4M
	 FRouTSoFVBSPOQfHTvzUba+rZvoUpsp5nUw/afbrAHCSahMeF+hIKSDMwPufrFdOe+
	 WNLghIStJ7x4wyilsoSRPnjrLE92+4fDWmrPDlx6X3NjxV/HgWKDh6Uejs5Yy+ktSO
	 3tpSz6Wkr8i1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC94C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172342715361.15253.7256288107762548939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a05f4df4adda409072490b0ffdc937b0059a06b39c94245bdcb2eb65cee8f5a
Date: Mon, 12 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723427153
