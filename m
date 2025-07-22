Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238A9469D
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753149594; cv=none; b=IeqLRiLLQN3G7b3zQAk5KT2/h4A9pcwfynvPJWtG3aV05WRh2b2+nrpw8aQ2aEO5jxeNx0HRO977a3Vo9LvZ0SFlhIJr8g7YU2alt7s4tnPl6pxzfd4m2ODdn5i1+gZ1oc4r0EPbxl8nvunutFcyb51cv2XGPiVe90sH342RCi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753149594; c=relaxed/simple;
	bh=jDFRN+phKmb41U3bEpfsUhMrro96uv+fl673qLeeDng=;
	h=To:Subject:From:Message-Id:Date; b=dBhPFgtWUhF8uB0JQBsXz1oT9rqrCjVwwTWou7HuyKKnanBaRiuNeHMjf5jmBOeU8XTfTZ6BVMmF3BtazoK4mFhbVIKATKS/P30t1S7DcAKN500A20Qg7e0dtviddPCAux6bL/GA7I6L5fIkBPWZhShd1dWyJeZSHRbbtoV3Bv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9zT3Gik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9zT3Gik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF2EC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753149593;
	bh=jDFRN+phKmb41U3bEpfsUhMrro96uv+fl673qLeeDng=;
	h=To:Subject:From:Date:From;
	b=V9zT3GikZ1WzqSFlE9xE6shNYR//WrzGufYj2J5syHcS/djqldcLK0WroHvOWpBk2
	 QdR6MFqClZhOHCUUYXzHpezgDeWl9kuqGyKjxEg93xZJnDzlEvBpzlks95NsgGYr28
	 lCtPo7ZnBNvtTcywNabDO8uJxcSQCIT1yekYGne3qfI/RfyhHvYjw9TIPQDkWy9RHz
	 lHSHd9x8mhInjKB3M6RU+j26yoIIkGV4JqRx0uXefSu1IPQ9GngifM15VILgOV/CH8
	 U3NpJyt9na3je/K5UpW1WGCe2rAQNf+sIBR4aCZ1yjZOqNGLVa0SUhklfuGi6PFJiL
	 z3kqi09tqt7lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BCCC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314959358.10979.16528334022426969278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9f38bcb8526b9be7faac371cff926617134a3bb777596deda74613e0ad1af3
Date: Tue, 22 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753149593
