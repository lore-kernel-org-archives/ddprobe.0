Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D794A02
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734496554; cv=none; b=oCxdHGFxiGa1QIGcRud0jKeKRHHCein01S+2w2/V4hBa2yK7+s4go5MN+b1pT+oXDHqFy1Pf8yZto0Ux9aL3aSE3YGh94yySlTxrqzUeY/OasYbgUGoNDFJeuztFK5HhKh51RFUpZknxlnRjduOC8x0pfuw/XNDSCuz7qXy/PdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734496554; c=relaxed/simple;
	bh=rnL3nCb9lKDWQHGue65y8z44fcfJRMg5TTKtmXixDXg=;
	h=To:Subject:From:Message-Id:Date; b=s2rcVfoULQJ6YzehPNgaW3pGGslTiDlrJgfSoAArMCg4OLnQJFKETtJkwtJyQeVRiV4Ofh+BRsB822e3hT4xnclgatgSdK+3VRTXxVH4r5mCJ2unK1hPJ6H5SEY99DtcqxSt0EX7YNvlAnAL9lN2vnccGsqsTS2EvEJzzD92PuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cePiFldu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cePiFldu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00BBC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734496553;
	bh=rnL3nCb9lKDWQHGue65y8z44fcfJRMg5TTKtmXixDXg=;
	h=To:Subject:From:Date:From;
	b=cePiFlducU1BYsUlBxdtZ73DNDt2kti63ub/I2UIHkjJOwDdB/oXFQYcVvfTGUmgl
	 H+jOi4/iP84hPNmNPHi2RvgXL4YBCmMAFPiBYmuiI1aHDbSsRVap+xZzPK0KvOrFRV
	 HeAj74DvrmwC18SjS/e+Hz/LNbXcxFYeLXn5x/TmbWMTklGRgLknfSCkI9rPNKRh7r
	 6DZXM3k1BRya62u+2T0FcRVQCa9/2b9jypR39dpc+QtVdnr70FxzT7eFAMVKDLBMwj
	 95UD335KyKv+7XvzFTjZdafpsCMLg4YLSYKLoWiqGRM4ZvejSOIqwSrYO5ea9r0OTl
	 n6vKzxm/FysEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6FE77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449655359.20967.7380974188806674277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e254fc21cee703b31b1f5d6644ec992ce0c35b2342bcfdc8b7cb086a03aea2
Date: Wed, 18 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734496553
