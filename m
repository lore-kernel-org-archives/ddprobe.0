Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711444D015
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782749914; cv=none; b=aGl7RDeQp2hLkqutrb0q9aHtmI13cIMIw8BUpcc37TyZ3OALULnKT7gBvjZrFZXYXc4ROfEdfj2CSruyx0GHehxdZfgd1i53kzH1p+V5Gwbih7pSE0V4j+bSL1jm/7h8+oMH/ToqDS7vZoRDfmzy8Cd6STH5YX8YsbwJKThCfew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782749914; c=relaxed/simple;
	bh=uho+7RkereDh9HoewA/5Nmpa/gDrdk1kT0dvHOmnj8w=;
	h=To:Subject:From:Message-Id:Date; b=b+fUQC2S+kquaaQG2z+Hfl7I7lUf6JVBWSe+6vtpEg3uB3kUPVB0Uq3tnz6ZpwdewNOUVzn0nWhBMxJ6EijYBeLsdv7x8fxD4WSIFcxf6zAsT7BYzQFricwWIk2qHIMxmnWa1bUoY5HEj3Mr6CjyOEV+d2P+17YGRa3si+F89AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssHrWpyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssHrWpyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A5AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782749913;
	bh=uho+7RkereDh9HoewA/5Nmpa/gDrdk1kT0dvHOmnj8w=;
	h=To:Subject:From:Date:From;
	b=ssHrWpybEp8MY8S5dmOpwFOBv+JQeaOxWQPWpRLzgDP4x6c2SaoxERCPDEiH33IHW
	 O4J9oFrV2L6sU0SfYEYhGUnofIva3HvaBR0RBS1a2htRIF6jgLYOLFC4xw3P7mpA7T
	 EjYIF+QrV7D2K72fT9+DL7YA+Csd07AcFUFg/hPrAqvE2hq11/xwdKUNk7+kx8+CtN
	 e1AiXq986vDRzOuyE/LOwTNb7F3thDKfJJmTXNwYZVH2dx9ujE/i3+iOiqMJnkKFCO
	 rMwXHtOqXK36jnN5ZXTITsNSLD3Cr+TNGsv+bQOMEwjw3nP+6jaXe32/tYFOpD0YQz
	 QL2LGmkel6XDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FAFC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274991368.2535.10361654115344210508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e154ae7ac70dcfa80a83c5575e7c439cd51f5b53ee2f2b5cf38f69e5734181
Date: Mon, 29 Jun 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782749913
