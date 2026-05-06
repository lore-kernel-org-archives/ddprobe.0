Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377A42FDC38
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778096854; cv=none; b=dLd/UAb2qmVVFhQ2ojnivinO4YiZm3RhMnHeDS40xDepdSxbDofGs0+OdC6FDSPparz4kmsmpf3JSyN98j/N+H2IXOGfVtQwrKodcgO+VD4RWIMOogjkZbsX0XckXcogPzNqDeC9Qb+vXHYZFCa4xs5qmMCj6fsW/U1RpiP14mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778096854; c=relaxed/simple;
	bh=Q43CkpZkYpvUvbmH2b2MtXM1UWcU3UqqORHdn8HIVvQ=;
	h=To:Subject:From:Message-Id:Date; b=QzQtPfMNibBjPOQvQDLn80FtJmXXnl+rHSAQ5ffcf77VyiC2y0G1YBCN21kjzQ/wH8mvMQBhgjgkyNdkKm/OAkCT4B8S5gAnFj7Vfq2+hX0K8HDw0aObyS9Tym9eyUoy+a4NaBEyRA+wYa4uQrt3MyMdf49NGDAPSIeJ5TCy91s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGc+trU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGc+trU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5E6C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778096853;
	bh=Q43CkpZkYpvUvbmH2b2MtXM1UWcU3UqqORHdn8HIVvQ=;
	h=To:Subject:From:Date:From;
	b=YGc+trU8DUTDRbv6I0g8RE4/kGtL4AnNAoa/XCWFxmKienGFoODEuUR4YpxosVCpo
	 PF6Jvj/ID9FGn9jn3bAPGnIAjqlzQXub1HUKVm3LisYpH5Rh4wAovSusMCuK3mHRdV
	 nJaoUMMPdfr+xFhtkpD/VQp4eER/lwqP0R7iDjDnav5tgYHVyJVFa4/iLFBIJts+kg
	 icPh9g2k2AdqeL0usb1qcl0KzibV2z5r3aX+l8NjFPTFfpy4DjUWdr7jt/7NvvFkc3
	 zAHtO9FibzukWXNV5GsUB6UniDU3gNZ+cx2az0nxqNTK2bH2OhNdWrcinTLHGeVI83
	 oaqu88GAZ1izw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE06CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809685369.11317.3322264944559448552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa68ca61ba4258b468e5f61e464116a8848c2f54a4fb0fe26be92a26bbf7515
Date: Wed, 06 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778096853
