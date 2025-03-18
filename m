Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3294A1C
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742265597; cv=none; b=DZsFoEM4XrLkafHvmnDBu/IofouxqweAdf/9wlMb2S38jIhby4sChb9SSTfFkBB8EXyLO8IDV5EcfMvf8pW/2G198M+X0anXIIa3egUZtGNmE5713mFbB5lARJMZ1HgYvvcTH59rj+hqtU+mstjIxaOyx6MF07YFrX2RJWYfLQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742265597; c=relaxed/simple;
	bh=3I9GFQVgSX+LCrMze7FzpcBE+NbXBHx5KU1ccHFHWiE=;
	h=To:Subject:From:Message-Id:Date; b=T10oS75u+yRJ1aH5ekTMqW/ZycCmF5ggG+aUQ0PhSOSYPsnrjHG5Nl4tmBxTn+euROpWBuDOI/NS0AJTl/U8flbzkifho408Dkp7bPGvJxgMbeagdqc+4EAuxeAEgrWaHaqw9R565hC6aPugIeMdcYMeulgNSYHoIHesDm4SG1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3E5acWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3E5acWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD970C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742265593;
	bh=3I9GFQVgSX+LCrMze7FzpcBE+NbXBHx5KU1ccHFHWiE=;
	h=To:Subject:From:Date:From;
	b=s3E5acWwCpBo/KPZGoQZM4164mnTbcNHdRaFQ1UxX90F5MITma2VLTJD6eNLACSZc
	 LpyR2PaxFFM21I7gSKCEhRXgum62ndUi61EuBgX4YcLpRK4YmTQbLxlbe0ZxdyomRR
	 sezsZvrIDJdbLh+aA+m2OyTQXdUsz1WhlOrMg0gjSEkNx/UjluWfx8tg1ub2eRPBvV
	 jRadLziRsdBzLasp17vPnK2fFMCB1WyvY1EeDrCNH6jwzwmH6IO8kY/Hyx3jXqmCAu
	 Cy63lqvyCgODzWj2O335wPv3od2dyL8i/ZQbMx+x4nQl6Nie7bg8Ios94zlxbu4pBU
	 dUQZdmNvUNRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B3C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174226559359.29920.10591901645412292729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33551af48f2819ea1e7cf0b72a7e7181b26c82124eda4105bc850aef5b48e06
Date: Tue, 18 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742265593
