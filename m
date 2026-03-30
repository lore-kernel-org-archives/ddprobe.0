Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB812EB874
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774883094; cv=none; b=Uxs4CG2i+qbZ6SCCe8yNgx3Ba6jujBLMdEcYkf+NQYLdpj+m6y6AFuJLKzuJg+FsxCVdgfepgVg022BYstRCpmIs1qlRZil/mOKTXeje0YbgAZVs8MukIZ2dDjfawR7FuH6/COf+R/Xudo+L1niPW/G7kS4JIXXQ+SNmAQNQVRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774883094; c=relaxed/simple;
	bh=yckAp7bx/bAZCJTqLdw3blizk+2sHLm1WbAos0wOZQQ=;
	h=To:Subject:From:Message-Id:Date; b=fLqgKNs7U2OGsMuO5oJNvmnPeFvxTxc0r6bEJd4+V11OI6dXejr+vuQAsU4oCQy99/ONvTUgQ5MJNiFW2FNk3crZzhJXM4aj5wB28y4z4JwHP1ZMRX9X6ccVOaSul47FpwlBEjJ0oalMZIrl5k3yZS17nXVeMstNWBncZ1m3Xk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nya85UE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nya85UE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D70C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774883093;
	bh=yckAp7bx/bAZCJTqLdw3blizk+2sHLm1WbAos0wOZQQ=;
	h=To:Subject:From:Date:From;
	b=Nya85UE9fQXJ9ovz6vdtSsV8km2QFCD0RtQU1rYZRsaDHDha6AYqqYhCnZuSI/km1
	 ZNCpE5tbwtrwA+2oO9whJFhMakvBjhVKi//nzjxeErTqIzsWL2UBPs4cwY5jmI4zpD
	 JTXmlAYwIa6NImwPb6aRZW7mC2rGsbwzsHogxXFZO+WnHK88IDpjWT419ALwgBLOjr
	 gaEOnv81kvvyC7HvHcQec+w+jyPhXXYqKHI9P93EpACRSjkWJr+hWYr4ihu82h/tCg
	 fasrF/f+2fFfbzzYn2aJg33n7Ka0c7isKRmmf/pF3mg029JzZ9O3GCdTxmnGWpm6Gj
	 +K9AoCYR1PLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246EFC97F3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488309358.9312.15781067527248787429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59000a4f0a2e79124678aa425937bc237c1194460914420969d47eed395a2d7b
Date: Mon, 30 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774883093
