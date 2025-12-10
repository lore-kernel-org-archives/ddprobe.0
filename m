Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6132B9BE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765402974; cv=none; b=tDEBTGuPdkBWcoW2SkWyu+5aATzVv74LtO1mPai3VkFJD+g1556pOfM9JzQGc8R05WvtGL/tNCWCxinYkgV6RnuY2xPg2gv27gSUGTtXiOzS2sOdPcjAswJAnnqc2/yA1vYjYsXbtsnXFB+dL2eqYLicyV0GYzImAn4zwLwSTUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765402974; c=relaxed/simple;
	bh=BBxhE3pJsKkCMV1hRm4438wj1lp9u/lKA0f/46BtLdA=;
	h=To:Subject:From:Message-Id:Date; b=dLLRwTeoSMsMZpuebUHgxpk6jCCt9SKDOtEUqe4sq4ptF5NHU+bgEwvjhlFdWrWPyUsC1qYc9aYTouPCOQPNJ2O2FpahZjO1gL4o1sr7VXXhfdxavrlyqXX2m/zRBHEpmPZ1k0tbAJ/kh5DG1hhoDH6rDLcNbAzYxE3d6BSnjoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcS7o83F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcS7o83F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CD0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765402973;
	bh=BBxhE3pJsKkCMV1hRm4438wj1lp9u/lKA0f/46BtLdA=;
	h=To:Subject:From:Date:From;
	b=VcS7o83FW62t/0u587Dwl8ohiScXuz+80T4oDX0tEp3o9XBIDr0EjchzCd66YZmS3
	 CsOZh+ncYDyDsbJrC7LR11dAFcKj3KWhQgF/V9/88ONbPOnoYUKvR8Ai/vCeuK+xEd
	 Q5tLYBzsUNqFhaz55l5A0J2Qi0LNH2SfePMlC8eVEp5piYv7yaxw1dMpRpICs1/DUf
	 IZp2veAtR/GrHA0p420X9JIgGtxeFL1IuHTxUe7/6bQrelTw3fuJ20Q5Fnu6dAAn+l
	 muIpuQUN3ky26kodW0PD8zqdhiN0Cd1w0OxPfJFZr1uroA6LlzE9V5N4uftvkwBwrg
	 04OuTyee8WZlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E948D3E77D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540297361.1491.9763927269981646650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a476f49cb3d740913adcb1104f09a78008e2d4683cce2b27326d12d124cdc5e3
Date: Wed, 10 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765402973
