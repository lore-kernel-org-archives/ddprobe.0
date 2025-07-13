Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB48367
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752365394; cv=none; b=TOrw+NCIkvKRzTyQ55qzAaFfu4wj7lLwjI4gVp+9En05zT7NL6Rnh0MfzYu05onispHS/MryHj0ZpHO4zWCAWcjRTTL/z9eNfm5rgvAjpydas93EffWwd/WdHBRGJebokB35PV+z8kMkCn5WqtYrl6FBr6qU1xCmsrWqdb6qQkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752365394; c=relaxed/simple;
	bh=7JKiVW+drsAu6+0XpLpkM/AjaBgaelWYzFowPCWa7yw=;
	h=To:Subject:From:Message-Id:Date; b=ntFyAOBdl9IsPRjV/wC1/qoAngeucQZfI6zsKPRVvtOTMYZbe99i231JRaUzmtyg+SFuQ2gsRVesE0n3Zwi3+HMp1B0qYkAZLyacGN6Laxk3uF1BK/jbWMBD0CiVyUaSUY1N5QtCEiUtj7D8oNnnUff8G9LWs24wR9HUcg1dHaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeNL5WFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeNL5WFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1894C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752365393;
	bh=7JKiVW+drsAu6+0XpLpkM/AjaBgaelWYzFowPCWa7yw=;
	h=To:Subject:From:Date:From;
	b=OeNL5WFxVpXgiXDXp5ij7cJJrczNghotnhI2DxzwRoB5yYy9Xs/AxgnWnHDMNf5rB
	 Ey1D+dOXT2DDHccKluxVl9TRpKsbVHDYTka8aSH0KTy0RX8t6n1biGT8DX+03c1gq5
	 IF94HZYW4gjDyx5Z1tV3QwCxvkZ7kQf14b2t5d9uISagPDqRz9u9WmJC78MIXx1hR2
	 J19GWWqEHApMBE7iHMt4P7/yMTLOgJ1xP3TIlnu2YQ/aD4EevqgZ2ujYn6Ix+NK5ES
	 Al2aeS/qSb7WxrchdJEDf3l2RvMjsj+jhVMYs7Oq56Kzp5GbV7wZLKvatt4pnRd2Dt
	 0ZGLkmtb8X2Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E786C83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236539357.31863.13368005690641551853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd41541aeddbbdb76e8534d571f38881cb332797c2d06406747177d1405bec8
Date: Sun, 13 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752365393
