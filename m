Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDED30FF08
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782262594; cv=none; b=ZBAfV6y/RQheKPv1/huv/BsTlNIU4U7y7r9+6i6v2wCFbNLQwfCeni/nTxPIMvAfHgGnt+pntCbFeypizsC4v1vDSIKiBCwcAxpW22im4RoSp+K1hp73J7EGfjyTOp6EOZMgxW3QI3+0ffe5pALGJMggXeVsg2z6GA2/GQobRYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782262594; c=relaxed/simple;
	bh=DdnJ5jKd3ssZ7wxsGSvSKy6YtpKuow+i+9ImAGPO1lg=;
	h=To:Subject:From:Message-Id:Date; b=MGEPzwrD/cKivFQQpLVliq4f5V7wz1ZcxH5qaSv9G1JXtC5Yog3go5a1FYlUFw359U3fSD8CfKWgIDy7J4niwwz0RxGmJ5p9Xb8sOl2hQ6afq7NBeyZd1pTH5TlIEnqfYggYsCPob5MRvO1ipbWMrD50IOjk1SfGkXmarNBwxJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhKouExm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhKouExm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE205C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782262593;
	bh=DdnJ5jKd3ssZ7wxsGSvSKy6YtpKuow+i+9ImAGPO1lg=;
	h=To:Subject:From:Date:From;
	b=RhKouExmhQFx8YMLhQ0twQGacNOtYWnVlU/nHEszvhk/7iJSc/lFV+yx8AR2lsx8B
	 JOlUfkg20+y+eBR9+8VQiavfqkPB1wl1hqzoW6Sj536+N9HzuysHHd7iWPULfkVTNs
	 NRnhlY+I8dOiUCbQqfWLhy2AQCgQDesZBQ4PVyI77vIlknbcUeQDXZqysL1B9RiX1Q
	 eJE5DVynmiYcXo4Y1pohgeKhkLPMBHh6K/2pkDVbkH8pyPsbm+z3Q4ZG2WoLSd97RU
	 VPAQ5BDJvxNIhQesRWDqiRFnto3RvpsRfYCPLOSZeYbrtIeY2HxNyVT7Zm5J8CiIqh
	 kqlOEfVAgf58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43F1CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226259369.19422.2639430615373466788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83be57db194175c8d2f5f97758212c4376a276b2fbf156174106a4a315e1c416
Date: Wed, 24 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782262593
