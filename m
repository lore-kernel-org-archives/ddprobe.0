Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C47370D57
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789335634; cv=none; b=TJFWwWXowq8jxu0AXX2mqzzGSeEOYEGPNioQraI11C4xTETafldyBLRL0fuxLCoawy2SkvvrNupoimBTx9LMGa8SxBfdxOEwc9ZP7FSG0d7nMxCYl0Ia4pJOhAFEH5czs9s0wkZn0H8HgVgEOh0dxqTzAQ63SZPPXLNBGAOEuLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789335634; c=relaxed/simple;
	bh=7sGeZ87dMHbkF97I7RE3iJF7VI4t6wPQx/JkxlcXFAI=;
	h=To:Subject:From:Message-Id:Date; b=p7MVpR2lDyff2b86OnJ+4IBIDH+iE8QkXcft+kTKaoZwr672fv2w5etzG9U76iFPxTw9TDQmzyQUxec9avrHWDMq7dMaPKV2FtP7OaDyNdQH7X7bzW158yIafN/H68xU3+FI+/1R1nqc0Cg9x87BWx4OjOnTCMhK26i6QS8Zq44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC3Uk6PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC3Uk6PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2095C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789335633;
	bh=7sGeZ87dMHbkF97I7RE3iJF7VI4t6wPQx/JkxlcXFAI=;
	h=To:Subject:From:Date:From;
	b=SC3Uk6PWakaLtYuURnjJ+Kccv74n58RmTx21kNoJiE/VZIbcZZw8Wtta3a3CWhiDP
	 nymMBhcO0u5+81qztIbJaI0gpIMCUuDcQEh2K/GR4ZhVvVSbJRE3XFL15sJRCaDxl9
	 BGnwlGl01AOtJ3U+EsYHlEjDXEr3rti5gxGQ2LYL5a80h9prje3V7rocG/UIIwIh1j
	 +L7bkMr2fWg020boBhtBOrYJI4Zp37vB00pJSwGEvYAwWAJ/NzbCPvgHd5LAdxwHZm
	 sk/U+ZP9YjtBpv196w3Fv6bSW3mHgJ+S85zSWZ9Xw1pWEfboiL8jz+bcIXZHut1UvI
	 i0b4I1t+adPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD696C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933563370.21753.17924859309179754457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f61f9133c625d60075072bc52ef5b3d0885f85877288a7c0f7041ba7a86697
Date: Sun, 13 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789335633
