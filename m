Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3327072632
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752410394; cv=none; b=aHNPZNG7xmZXpcni95orPFusveWtSduGhDIzCYHwvNAvebZjCvPbYMFP+kMjL3dJzNnhFoQAHSl3Jj+TqW3yReXjeh7ZNMqy3sJwV4iuLCVEbPWOTzWYOlOEcGzHvfzI3X3LtBoI+WT3TtTEcTn73ZAP3d56QjCqOmjFJg6bO8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752410394; c=relaxed/simple;
	bh=Bs90ldGUOH/93jK6ldPFxhhiSSFi9C8TnEiZxbJl5P4=;
	h=To:Subject:From:Message-Id:Date; b=Tg71XWsYUg6hMD5h4cnHaVYF7kWVHdyLIf1/qm3AO78ZFQUp+C4/uwgjKQrfeZvgd1hOMSDG1EIRy6TxRNgxVo7R96HHbxJ7rMAGeoPvHjGmZVor70HHhjdAog3r+enV9XT9htdxiWqM4f5A2uVX5qBdx/Bk0irmmdwi+GtMQ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esi4TqUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esi4TqUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A65C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752410393;
	bh=Bs90ldGUOH/93jK6ldPFxhhiSSFi9C8TnEiZxbJl5P4=;
	h=To:Subject:From:Date:From;
	b=Esi4TqUhAFEDRw6fWbPA7dMUtW5+ZXTRJme9z7dauM61y2xbRTK2E8Sq8yMb4B7s6
	 0Su8BNoA4Ymwi8g5F8zUzFL9H9LNH9R1ROx6uZ4v7n1vMR8vh83N39RKOts+fNTzwf
	 WoGjqhviVi4DKCb5/sxdKXh3Y2ggVdK/R1jD1gHvL4N5FmOHsgipjHP5o1AP4X/qZa
	 wYorQskPrjp9Fik84DDY2chHDarXyefTpBgrLFfpHwPhsLcY5W4iWSQlKFSrr1+Iov
	 C2eZD2tdakTIKodLdQ6A8BgldaBufAUSkCF5jKMK3mN3LkYdTyzLaXl76BBbp0gU/z
	 2YYsKeAacdhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBDC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241039357.16656.13054196996699959603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e11a2fd39b506837af3c4f72f6f0caa94be5e484a0184ae6382cc00c58eadb
Date: Sun, 13 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752410393
