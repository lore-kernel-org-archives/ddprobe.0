Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095442FF153
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757374194; cv=none; b=if8O+4sqvNx5XMT4W8ASvtMm8PklovD29mqXExh35faWijvYg93iCaT6cE8qCZ85SsCA22TlIeaMoWtYLxYkfwcetYFBaHokOxclfzUKRVqL9HeqJVajdm9MSR6UJtrDDnlYjEnKQkhJ+En/QrEWPFT1bF4CwqLFb4zSZg1QxDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757374194; c=relaxed/simple;
	bh=r9dxqOY7bZ3T1yNYcZdr6kvhKS1jp00CJ6BOH0vOYuI=;
	h=To:Subject:From:Message-Id:Date; b=dxN1/zZugrivfz3bijMSGXFT4RaroW8+mPGU8EFyMZbSzt3fkdx487eHBOhLQUjo9CRZm1TyV5mKQBOSCTLkEDVcBTFMiDIn2S4g53Ps31XU+Vz3BWIZ2J1iJmG0frU2t4mdPSJ0EqVmkB54EvbYdT12nFcWnqWKdz5e0uTrLAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaysmXtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaysmXtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7212C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757374193;
	bh=r9dxqOY7bZ3T1yNYcZdr6kvhKS1jp00CJ6BOH0vOYuI=;
	h=To:Subject:From:Date:From;
	b=EaysmXtFrN1jtZ3PmlHKFm9YDniykXsZhCaUGatrGdHs6actSVtHSEMclUjQqhiAq
	 0kn1YE4vFImEsZRtSN6TnBH3R2yeB2071fbA/jDkG46MMIUbPBWv9JiSQI36ixJfGx
	 z1JPoP2sm7/1GkeMDa3HocFRGtacuMrTi7q8UstSNO9SN6Z3jrMF9psqkOWLqt/pTY
	 o7Pfupbjlqr4Ajvfqxkqh6e5nq9EWpozKmamvTrTIi2LP19OLn6eBmufMCuLSoNSX2
	 Zhe5DcoifJNiCRBuQBvu+JZ6KDqMvJ4izu6hKD704enWtRJ7EekyfexMmG/e+uDurC
	 HbTpmtYqYt3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F3CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737419357.30659.15775229470621514275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144b13c63b6a2eb169bdd039768a2f89fe87c431e551d4c6f76b05a000496888
Date: Mon, 08 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757374193
