Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059CC398F96
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764868374; cv=none; b=Mc7y4vJtXdJ9SGHL0VmcaJajWW203uxh2GqWpDW2u760afRzC4mEfds5oL/u4GMnU10oYn8YNAINAD6uPy/yVZFMykOxNbyYpO8KXelvHNM63FrPcdp2I0pPsgTCeQpYmVlE2LtWU/5KIbNr6kaWNcLwOWDuYVIJnvP2iuZb5xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764868374; c=relaxed/simple;
	bh=OsCw7JA8/CubShofgGcOIJS7HDFpFpYNdsMmMypN/9s=;
	h=To:Subject:From:Message-Id:Date; b=tUh7iyHlZBhJbhOIN/2QDrWsecSDHQ2X0fPR1+aljRhSmXFMFxDTEMhzkdxZrVtJIo863NYW4Tw8u5N6H6jkorbDO76Qx8z2OG8BcsFLRdrpc+kx+QrBTRnwpgoothjbjTPHaKMpS0mXIAFiJ2W3Ga+Ft0H9/Z7d/HiLy5Lx93c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdSiOlKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdSiOlKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F807C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764868373;
	bh=OsCw7JA8/CubShofgGcOIJS7HDFpFpYNdsMmMypN/9s=;
	h=To:Subject:From:Date:From;
	b=jdSiOlKMBIq3bLqOHMNrHxliawF1nfVCXUCtjJGxKm37Mma3GGL0ljDab47waw83K
	 TS2PQ8M6we5TEdfkR5kuJk/MbGA0pixz1jTqL2Dxq3mIuUc3uooWLgrB+uW4GpG1JY
	 sRFnRqa/i124XkZtewkLcrLMjeinTqz5+KV44U9Dq7CJVUYDPGKBhidYDjx8EvBiYA
	 TVa1OM5hgYebbsUhsJC4F1ioJIa9Ki95GJKMrjqb0IiyEIln2l98MmGXesiPxtDven
	 MHUSkP3wT7X0rWSLbJaVPrhoT8uQz3SjLtU4k/QNheID1a2s0KotL3wsbG8JAIhOwR
	 z0T0S+F9J+eLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C8D24449
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486837358.13727.13061163816607925934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecac0f650aeca1cec204c6c01d60df358907859cfab28054cd7a477be1e8803
Date: Thu, 04 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764868373
