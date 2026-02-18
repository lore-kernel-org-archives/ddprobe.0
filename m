Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D97E24A06B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771374294; cv=none; b=LRmF1HhDaTU8/a5Fuvy6Z2rpvlXee361+BntOhmMBtqEsVPgScob9Gdnzu40avrGyhKFoHRzsVsAR/zz5sKZ/WEGefZXuO6rEL566arNaWLYcMEiTNsRmPNlmv2p1Gyk2oYWOZ1jBjjLOjZjirLN5836riMka/SRwetQpY7mmc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771374294; c=relaxed/simple;
	bh=rGvlYLiikJIWE/6EstNWavPyaKcxMYCyfrvJrjeJQak=;
	h=To:Subject:From:Message-Id:Date; b=hCDj5uqui7WFQKhtg0npfKsSXAW4Dih90H5fq7x43dnqspqUDVRwkncV865FFuPusiCEkG5iNCCDDzQD0A1gGxWzrqQZ9t1D5WD2BemLe6Z3zC/HpRj/vOwNTeQZf9pK8jQSDhLojzn/8YB8NHIsebV/mSnP820oDyLo4ss7oqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aevcdgxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aevcdgxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD522C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771374293;
	bh=rGvlYLiikJIWE/6EstNWavPyaKcxMYCyfrvJrjeJQak=;
	h=To:Subject:From:Date:From;
	b=aevcdgxw++2S6r2isQM0b6ZFTE1kEnJuB/8v7v32qFf1Rly1B8+rEHFQ7QQxnxiwz
	 0RDpgGzZ/D3LpKwY4AGnK7yh0du8c6Qg267l3774ajR0is70yqYyCuWfBFZCDadd1S
	 pMYNPqK12MO3NJG63jMYyzXODcfmSHBXkC5X5w7dtj2OVFQ3XvzDo6JupZp3AZyyUw
	 gpJSzSIiGPE/O+xgv+agCAHZh4/+HkkmTQnad5B5YCWYcJ9zqrOZprJjn8QN64BVne
	 wI4f0tzGO9p+4aIvDtoNVjYBvW8TyW9KvHghJZvh56BSkwIFIrYhYPF5qA1PklnquY
	 kC6m5wNTzMCqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623DE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137429360.8875.15016479723294530986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18097fe2832a5db4d2959e226135f01c28bfe4aa08861e6828bac9871e7329cd
Date: Wed, 18 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771374293
