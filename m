Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C424303C94
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762451994; cv=none; b=IrLlb6CyGgdvp6vjt6m0wspC8k0Hyd23HtLW62LZ8nz/n7KKVHYl0HIKy4q4s+asIx7MvybZoGkqtTY7fRbGchUWoBhMzz0Nob91FP3agcdYGLhOQFNUepq5w1ApOizt4AaBgIoESRxRRnVKVRgxgxFb2m72Dpm0PH7eBYRJ4VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762451994; c=relaxed/simple;
	bh=RB91YG7ImGQM3XXnkYXO5BVZXw+ZO62HcIRVmf1BaAc=;
	h=To:Subject:From:Message-Id:Date; b=OwD3q+BmkNWj7ZstUYAIY77a0UaM5t/2aaHTjcmcmWUMAiOu1jwKPPxZn1XryXxzHe5FpB1s91hUVxtw/Jqupp0bRcMAaz3ybgejNU/Qwx0DlRFaMoUfVOUmo85NcG4NEOOpILd8y4U/P3NIJUunXEZR8klR0gmb61lzlbOJV6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhUnOHX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhUnOHX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A806AC19423
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762451993;
	bh=RB91YG7ImGQM3XXnkYXO5BVZXw+ZO62HcIRVmf1BaAc=;
	h=To:Subject:From:Date:From;
	b=dhUnOHX2QXW2p4KSYbAqGc0Iquz5xzd46NlDBHqlBCXKDST+mJwVCcsB8TtwL8Mkd
	 h/gZzTs+0QFFo+QIiOiiOKgt4Dt5eReIiEsVeAA0WHAslKyu6WKDiXadmrTVVEL40I
	 8rOTfzPhhCy4CNAW9cOnNGJnKlti5/4/4OM+81DnrjvGFxhFNCqVxPanEfhQXSktK/
	 0GrZdklmnb8iagt6vTlHEtCAtlLFYYWSPBxv8fzhMzGFwli1I7gJa+/CQ4mJqOkyvh
	 S/RKnGnEUaVyMUOtSh2gZ34yMqXlUqnbZI/idHaA/kvxAYqSfEsZg0+A73PNg2Xgmp
	 77tENfr6249DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92664CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245199357.6296.7857754172908554766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f46e130ec8e74344fcf374571f333f9108cf2ee33e2913f6c00aa75e8354ee
Date: Thu, 06 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762451993
