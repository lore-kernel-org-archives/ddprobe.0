Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250D22DC796
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757737194; cv=none; b=nGGDJQdUFe6XdgUD81qya79MBLDx2NZMxR0z8CNvoBFjWbJ0x9SCdxyyW1bOHQt8QluqNKhaM+Jh63uU8wQGKZtqmqjM+G+B7BxHpkNZ2UnDA+6OKv0ruV6iFV6kEEh65vIi8vG3mPkkOSa2DODCWJeBwIcrfB2NYDjx9yNvbwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757737194; c=relaxed/simple;
	bh=+DNjeopjRiy42dDjzbX8i9mvitQI3dYYiUKzJt5nBMs=;
	h=To:Subject:From:Message-Id:Date; b=ZRcLxXEyWtgDY4bzdtNusd7uis5ntBoP0ifMW8Os1NVSgoYIvuOKyyow8ctZPkEtw33DnE3iB33X6CxVeiDRx0nYKTIMAL+5kYTMvcB/4pqUy2Wb1Ry+YFYNmjplUCd0EQsy3ncv9SBiBo86N5IRM98XsxNytvpBUBR9h5BtTC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDdrWi2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDdrWi2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757737193;
	bh=+DNjeopjRiy42dDjzbX8i9mvitQI3dYYiUKzJt5nBMs=;
	h=To:Subject:From:Date:From;
	b=pDdrWi2EHk6AP2S1g6mqenyVwrXpZRAgdmSeQzLNG6hFHV7bZ/KC7qpLOdYAiuqUO
	 Q2BzC4Znom4ZBZs0SDxtoVZNjgYZTKgpF5odGGmoXhaSP9Kj62R0P+uYOqD9TiyBpx
	 0GM9hhboHXohUTCozxr0M7HVtXbAITpAt6JLpgQ2dTgp7/oM6hdfGPQTsX+rO83XnG
	 bnuaZwW1T/Y69r3Tg4AdG+lP/WnkxI0d8MyPM0ZG1Sb3dnEinfPPZPmFswv5r2pVPL
	 YR5ntXTLdcrN8iqfGBNRWNA+ucXm0x+vivXb6vYhlO+t6FVWQ7qJt9/ba/p6iv5XE1
	 k8s38kzGuVP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94557CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773719358.27863.11453844411707457135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6053ec31ca7a086fb834e48f28e969283649992edf74ea1710f8816761e2442
Date: Sat, 13 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757737193
