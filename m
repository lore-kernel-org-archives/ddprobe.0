Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B21338936
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758693; cv=none; b=p7A0B//hABO2V2RGWozNfCyymzyYblXPFx6IM4JIo0PKBtQFZ1cdPv95PYQBlnSLerNVAghqLi6hGbv5I0uA73++dSOZq7FhKJOtXGnfj4hEuxvE8L+oZ8NLO96jp/z3r3pUQgJM0zXKpjVR9ssx80n2fOYuXi8wskGt9MmvNd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758693; c=relaxed/simple;
	bh=ik8+7fm2O7g2wy5R3owYIPIkN/K/t7qIr6+xAYfEF+s=;
	h=To:Subject:From:Message-Id:Date; b=GDufR0m7zA73qAvPkbMV1v0EY10GkkIMW2/zme1lC0so4XHEpJy2Cz/xMmx4zcYkm9EkXC0pciKA9dLqQTriZvtJzwPkmMrXP7OAwGNZ+4oQBXmeY560UdhajiwSPVmNMuaaaVb9SmOTEbhJL4DEoVYAsjmMPua9fP24eU4Rdqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE7muc+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE7muc+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BDC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773758693;
	bh=ik8+7fm2O7g2wy5R3owYIPIkN/K/t7qIr6+xAYfEF+s=;
	h=To:Subject:From:Date:From;
	b=TE7muc+0V3fLZi9pDDdeQE3FCJwivvVWtQ7PifChj4NI+mqyvpMCcU/SFmEr3vRjS
	 h/k9GrG8cE2Rs4YJ6OErhDX3d4htB7z8OpnERIum5pSL7a2it7JYRjLl1QxaSkLKP6
	 iEuWCBfgoIfUlTnOpPufDvMloYV+rbTSgJJEqzOanBA46gtAKGazpMo8ys7XhHkVw8
	 pAASd3dg3s3/lEac14peDyTy59vLne4+nhjw1BKPmO0WfRtAi3oz0fgctP7gbyNrey
	 5L54bdEzawoJhZK9hpjVk4K4wM4lmehCFD3r+o0UI2+8Bl3oZz5bxqJj6M4NxfYhpo
	 QBKdFCWBw4++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90199F3383D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375869358.19990.1029451759129543905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2f3be2274f6fe50c60cbca937ea9fad471352065b8d690107d3492c7445052
Date: Tue, 17 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773758693
