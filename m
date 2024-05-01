Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D7A48
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714545143; cv=none; b=svYx0tlalrMJI/M4+qNeXprVHDTjjr0cF4cX4PHbcAbdwBOh5eC8xPRgRK8lFoznWzRo1ipHkdxGkcVdIgz9joIzdukp0HDLQgrkAD26GyoOaKOnGvZTVUg5MlLCtQ8E8zYiilcfY4HmwqK7usYIW9htCt0dtZm3VBP9mob8P2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714545143; c=relaxed/simple;
	bh=7U3eFEAc5POywJ2lIXiyvNghivXHaA+IAThB7yGXntc=;
	h=To:Subject:From:Message-Id:Date; b=SD8uT6s/ROzGkaiduonMKHuhMoDyKduOrQ/ILOwoq5pbJ01Z1PVnqCw/ChSgV+zVUJUVQ4Zbc6irEPnycJGD30jGdw1i4tIsazi3OrtzacIh5e1QxxtbKpOEk4H8envEm+/TmHi6sr9fYqbM/pUIYHo1xwoD0Thg8Kg/tO+5F58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/D2Mr4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/D2Mr4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E25C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714545142;
	bh=7U3eFEAc5POywJ2lIXiyvNghivXHaA+IAThB7yGXntc=;
	h=To:Subject:From:Date:From;
	b=m/D2Mr4BhQ/Kpu0+xfoonYpeR2o1CBqbb8WoU9STIdc/5CJC/uzFgGmGWuRyhUA3j
	 PmggCBsHxEGPhPAy23DA/MX1SYv4QZKZBIvHFpkw/C9ZcTPOTETD9FPaTmo/idgEZ2
	 9sLrBh7uAhY0B4W9oQwRIbDfnaSskrpw2L9Nm5+VWMZ+WiT5TEND3hj6V7g0GGPYc2
	 CMTKCbRqrlpV6rs0PaJJjAR9lvXCwD2LR6TTNQI6MM23hxPPOyZ0Qi/DUj32Zt2ezy
	 dETJmx1l4Dz2jLQJMl0R4cMB51v26/fSesNWsiPfoicFw/OpwPd8frrVLDs0gCbaLp
	 x6nw7a0kMZqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D47C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454514276.25360.5356887945335732110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8198f6976dc1fda83ffd42276a2697f3e2609e4da3fe8b361d676be79043a41a
Date: Wed, 01 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714545142
