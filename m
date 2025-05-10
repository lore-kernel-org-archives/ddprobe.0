Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1892563
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746895194; cv=none; b=CDcORR57os8pFKNqpbQHxoub9H4Gr9+gQsG32m8lyVrB38Dxam8E+ZDcKaQ9ozO0toLA1Yu0CstEpWxDvyxe1zU6E71Au2dpTZb1e8C4Gotwh1Bpi3YZ3DAUzEKGzJAPqZFvkkMWCINWk9TL4e5H127Uw+7tjBHjPKfTlauRapc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746895194; c=relaxed/simple;
	bh=tFyWm2t9YKyoUF4f5h2bdhGImysOKZ3dzwGgrsq0GAA=;
	h=To:Subject:From:Message-Id:Date; b=igVr9KunqS0BZStOGEy28Tn/JeUxCi0fTd7W4vGY+WjU5bL8P3EH/c+9RSqFNMhQIC+4WRLCVkWR7qblkDzYYSYXiYoh+eIw+fLuxRScAXGjCO/9cpsu14gFb7PyWSSzSXtLD10lEtkg92InnA3rAKbG/EoeH2MTd5dfXhcSGzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKKBHCET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKKBHCET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7716C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746895193;
	bh=tFyWm2t9YKyoUF4f5h2bdhGImysOKZ3dzwGgrsq0GAA=;
	h=To:Subject:From:Date:From;
	b=rKKBHCET71yeDFEjC08cUQVAG6SPSZ+PS0IPGm+TLi5DV/irG6L/ZcWJwaro+iZa+
	 e6Vb+Xj93/rtdaAoz09PMbQM84/f3JT3N2zWIxnEv+Uj/7FPbp9ICIkKlZ+LUDPiRF
	 2DwROHfNn9/N2Axrz4Wx7jJaVxe26u75A8N8nwpV6KzZufzjoTYNvp8DOjv/dfSZ6K
	 nqv2k/EtHUnyz1IoMvZ2ObT4e0i3vKlyMzE2imLce5ieF0Abrmme/xWKbNykZR1bm2
	 MWLBz4EHJcpoWN59kHzF7817MFPPfhVOBcDOoVDzkN1Dx1jeY3AJjmiOZxDDrTKPuE
	 NuZVE6GBPirHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F0C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689519357.15967.1128516174262883054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e00f85e289be731b86c74b08f68c9bce53bf8b7d0843dd1c964b4f1b606310
Date: Sat, 10 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746895193
