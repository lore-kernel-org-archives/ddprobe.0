Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546841397
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784592514; cv=none; b=saW/YYvY2gwBxw5qpJ59w8WChdArrMnG4tj7nNEBfcK881qhFZHdcqVPETukJ8OhiqFCtv7mTWvuWgGG6ANCydVSaBtYoWhot7e2AsP6zeiGjoOe2d6U+tcaIx9ibY49OlmLTzFEYDLDh8A87+4P0gsZH3wVFe344S6ee7VbLc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784592514; c=relaxed/simple;
	bh=p2jJyiPJbivJDgBAybcCUqReVEGsVafCpsI3ZHYZzWA=;
	h=To:Subject:From:Message-Id:Date; b=FOZOLZWM3yEfQiv7i61L/q+SMIYjqu+ZgnhuP07OPSbBwIKa7K1l9TUk8Npd8bDMieIgDuWoMCq96NuI+yJaVrazHZni3fzVDFOpJ+s4Y3XuZd/LKmBs0sOttmUv1Vws382MM2ehBHiT9Wb3KZM90XKKqgTDOK4V/grswZivT1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgddxa+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgddxa+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3D4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784592513;
	bh=p2jJyiPJbivJDgBAybcCUqReVEGsVafCpsI3ZHYZzWA=;
	h=To:Subject:From:Date:From;
	b=rgddxa+QItfprVTFsNDO3ex+rCLX6SWwS3yjsKTmXhC+Bi7uG77/BnFskEydScOIX
	 jskKCVnu7b23DHZS1dWYiAzOGxdFcZuyMDG/tooqtP8wr94fTjMzdPRH0rtvclLMys
	 6X3ItsSkp6BLF74b14BvQQFQSIgYdX1lRU5ETQL6JDm7BooHZO1Pq/wFM+GqU6BNk2
	 Jd5dARSOSnJ8yNtsh+iGcU2ZEodR4jVCb4dIrUHDmsQRiqaWhgK4rTKp6JM9FeWXdR
	 jdGLTOyqFNs6zbFHsSHaAG9aVmC9cQpAkhiSHxnFxjGQGYF7cqQ1MHpmRuXkoNQ4cO
	 MKWQZ4NiPsNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1853C44515
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459251370.14976.7765862516062801955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe241f527e9a74e8bd57bb75eb726db6a3eddfc066b5a9b5b2b50556fe146f7
Date: Tue, 21 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784592513
