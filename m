Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5A2820AC
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754206795; cv=none; b=jBW+leE2Po0Dw0gR3NtaDVgpNPAFBasHELrZUEmOYr4eaEGGNDuA8Esj743myMGv+0+IVLrrVoed6G9qsqiP5Z0k69bak0KT0TGLsv1e9QmeTafp7RLC8JGXeQ29jkPOAwtzpa8QmtWahzIl02dllEnG+x3LGyC2dn6Is9XcWPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754206795; c=relaxed/simple;
	bh=5wAbv5TD92ZQmyKVYi8MiIoruOotNOOb1h5p0Sa87CM=;
	h=To:Subject:From:Message-Id:Date; b=Lsxxar2C0wkPO2uYdYLfb1HySsgMGNVlSgBxHaoGMPuyZzTr6NvmvkeTiIU01cowihZzx376U4c1zICv4WKiosC3W0xI/K7Jf5/HYkyXWJQseoQO9J0qyktttkJqWyFXpytkLuMxE+dXKq8QKyvKcIdLakBrT1jZX1JHnWCmSWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKi5rmAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKi5rmAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A101DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754206793;
	bh=5wAbv5TD92ZQmyKVYi8MiIoruOotNOOb1h5p0Sa87CM=;
	h=To:Subject:From:Date:From;
	b=HKi5rmAN3ocZkOcNPjYdUotIDjh9n78S2qsxnEUewpPf5vAi7NiyWJskxlm/X6Nhl
	 LmvmYLJkXdSrmreSz+C/HoIZPaOLXxKw7cXfJl8lJhk5jqXHWJrhWCsxTC9IRzCm66
	 Xl5h//o0xKRAelQYU7D7cVVB9Agvi3KLjSuFpdm1VhIXbb93yaalklfA3BFQds8N5V
	 0uQg8+TcX5CyC7IBHIroDxWIl6lZ0YayxO6A1cOjXPDMnxG90onUXa0Yakoc+Vd0xX
	 /q0hg6K3m3QhGnXrvwh+W+JsCuOQhNoXy1rxo2ZPEszKdEJxw9H5IFmuTevP0xtH1K
	 rKj5bCfOYeOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC25C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420679357.11372.2066386794695016470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d708928a6f6cc6e94917897cb462185a7b097e840e970e8f1343a2f97cb4eb64
Date: Sun, 03 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754206793
