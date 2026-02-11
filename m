Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B16219EB
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770840294; cv=none; b=sZE89LCot6Nx1o5ugk0R59+2gg6VUt1MzPQykuOY7+2MAmgC6+tGn5kSz0K+eNKduCi0+17s0WyDLH2nSCH+eLSJmpu6zdi791a7EoWuShQNX3ueo3o6mFLY+lZiMQZbEDO7ZHsdk0Pnbiu+4fk3MT4K55KbRaWw0FluxXDR9gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770840294; c=relaxed/simple;
	bh=yhfSKgGsSp9AB/0tG4K8XTCIwYdRm3PKYRjo8xNflFk=;
	h=To:Subject:From:Message-Id:Date; b=ATW9FsAEwOcM3bg00KCq86pXdYCTjsIfMEChKL8BKgtSKfj9ID89Fv98r9zWN/DjiN/CfxO0vn/2cN/FsoVYlJayUj8KPLVVhyzc7JpjqKOpCH24sWQWdUqjayjReCGm+3fFHoKRgBNH1HO+7tEj+QLV+uauLM91cUk5EieXWGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGJj+Uh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGJj+Uh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E713DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770840293;
	bh=yhfSKgGsSp9AB/0tG4K8XTCIwYdRm3PKYRjo8xNflFk=;
	h=To:Subject:From:Date:From;
	b=pGJj+Uh6bdaNTdQX9RZUPS6ejwY7oThbcC9tliLHwvbrd0vZxpnLP0nFyoo/GrBWt
	 JIaetQ1jbAzW8vsQLSOyekwzZtmuYqEocCXl/EM75oXfgtedSfAfXfZzcr9+0I+jhj
	 ftdi2fMCbdmLN0vxtlIhQ6E7bcluImiP4Dds3rZwRLhaKiQ6InvUvxABSm5g2vx/JW
	 2MSYBLbVh+p2PhsxBFkxqg0/fMBG9G2cWF1Dm79nTYJY/J81SXQESh2jC5/6OI7CCf
	 hQAdlhpQXiDR8uBjkZAmX2ZocOIO1qobBINjs4qnPE3R7iFUdNkaxHpUv73U1Qvolu
	 tXDweqnG1OjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B723AECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084029370.15954.6661354987937622365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb37b23c0834a7c0bb50dd45032a14bd656497f5ae2a93c3d1fa8165ca7adafd
Date: Wed, 11 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770840293
