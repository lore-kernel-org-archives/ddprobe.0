Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A1F242D6B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750316395; cv=none; b=lFZ81frz7pyr0vJceF4x9MLPphCMAmhgQJdmCrOqFcdLAYIYNK98e0HlV/V3RPAVzRN+COLRiLy8o3goXFQYVMJ02anxD/aDuDZ6d31DM3+YcGnU6R0uB1DdYoAKyJFecwIQ/2kKN6bH8nOiCzf+veHD0PeA9CMvg7pMwL4GneE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750316395; c=relaxed/simple;
	bh=F1hFxKn0aiZRg1p6SIl6j/KVBQ/teRmmfsjoHPsRTw4=;
	h=To:Subject:From:Message-Id:Date; b=OVwDkLiCpO7SfafbxM6/btG3Y1nZfyEJGeAArkDuQH42mSK8u/o/yC68QF56AWIoeYTOILYgDr7tap4d11djMEk6F0xIYLGm33lDFZLXjQDj2kXwf60s8zzqgLT9yRnYw2SfVDnqe8KRoiGQrI1PIaE/G3mRg79zJGJGU0UJTuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pz9A6cup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pz9A6cup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750316393;
	bh=F1hFxKn0aiZRg1p6SIl6j/KVBQ/teRmmfsjoHPsRTw4=;
	h=To:Subject:From:Date:From;
	b=Pz9A6cupjF9CGBfhvQR1iixciMPTI8gx5xV1Qu+Gr7lre0pDi20IXtbH4VP+4V+nx
	 NTusO+BcpIsfMflD/IAbGDq9HxxiUJQG9Y7P0p/LJMalCMDdB2Lirqb0lXLvtEBzHq
	 cxN13EBj18vf/xMpSxxDyFe9hSeSnuUPeLf6covQwNytcS7ptoG8AQ6VnqWwI7lQEy
	 7hL8Ph81r/5VMYAWVfTH9eeM4o805XrJZMPOoYlPmR25dG0nuKa5DTrI+9moAc6uhi
	 3o38GwINXRYdesBxCSYCUBFHb6camGuahL2HQLWt8LQkL/NtysFt0zsZbAbRqLaarv
	 +fuHZTCS9qx5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F915C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031639358.2553.8799077827967582187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8be37f322713211c57a9291d83944bd5422a91a110931699020f1f745f7542c
Date: Thu, 19 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750316393
