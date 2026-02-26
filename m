Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0262DCC1C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772093694; cv=none; b=DwEcOJ1fRa/gvcmoUEmIBRVJc1Q9meIwoEwOrEgaTGyaVKpGsudrzxjeCNLZ98Pgyk3X8HWvDBHirIdU7fRLkPtiXSgnsRcmxbLDjxzRmf25jtDMTlT6ac//qFConxWhrbpN5oAs+9rNZwLiJ8RwcvfsS87zKL4yNGvzqXhCoSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772093694; c=relaxed/simple;
	bh=JbpWc+CkN8VFmg8jRwaVUx6r5/LfruwBwulzmEEkzdQ=;
	h=To:Subject:From:Message-Id:Date; b=U1Zi53u4ITMz1p9tqmzSUO0Jh8Dr2QFrmdWATuRyieGc5jHAlRmADbUipRGdBMLmxex9lx7fqZxMuyXiZcSQ7aBnOQBP3gUqXTq8nzKo72Nk/TwgNDe81YSxrK8tQfgGhjVQKCIXzbL9pqQd/PeirNvkRWXjRkNMFnblqbXD4MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdZcOQlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdZcOQlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F7C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772093693;
	bh=JbpWc+CkN8VFmg8jRwaVUx6r5/LfruwBwulzmEEkzdQ=;
	h=To:Subject:From:Date:From;
	b=mdZcOQlGyBD7GXjz4V/F1JuAXKfEKoWevkVj2Cj07ab/Xq4i9jinBL/jSIk28u8mN
	 dw8d8G7k3AqWaxcB4oeCNQi9DAggMq48vqTaJ4NEmPr4VwPgyKUj4BaV0zA+Obhw4K
	 LJIJVRx0EX7jmxzDVtQmGy4C4reEYC+4Piiry6d+I2gFzBxPCBncArUYW6BeVMIvMP
	 y0VnqPUmfGO22/mRF5Qqob1e1pDbvEacAuBc8CZFzWBpUAZf7s3vs4j7Thb1ORTPg+
	 36nAJnD7ZLT0FY4dsCyUbTo05YodhuW6luutcycRMqAAWR6VXcxVpCR2dlbMkf0Las
	 /yr6KiSoMuK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E17FC5908
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209369358.14259.12325803555484694153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7aa9c980cc37464f02b2dbaf70847fd08313742bcfb679b385022c81d2cfb5
Date: Thu, 26 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772093693
