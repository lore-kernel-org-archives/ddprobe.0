Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F55A1C68A7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727792754; cv=none; b=AXVy3IK3fGtAx3iBFYnZ+T7W/LLfKDBM15ARwEYaXKfJ75MX0NMoDJfHpvWxiGKE+ABk2rmMhR0FVjxb2fHg04BnfpEu5/aP7PcshJHTcbiNsbAJ6rAFC0rI2PaQ8qQ7hTp3X9QZRZJyCI5f+2F/bqBqgnU48Ucd5d2PqwVSAsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727792754; c=relaxed/simple;
	bh=9e3t8O6kqj4uobpuJIuxmiVkk6LpAnNdZ0pApz/J55s=;
	h=To:Subject:From:Message-Id:Date; b=FyCYnMrbFOL37oRsbfuPDH/00F81xJ89clRjYwEUzmysjrAq5uswBOG4/rDlRl2q1Rv/QZUDSGCfPsP/jbeuuRTaNgr93GN9XeAyUXBZIM6J/caVOxRzRJDV7TEcVYrZwFj5Hx4kCsIfBv4TLeZ+WP3vpc153PtBtwch8va3y3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIdTmo8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIdTmo8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0B9C4CED5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727792753;
	bh=9e3t8O6kqj4uobpuJIuxmiVkk6LpAnNdZ0pApz/J55s=;
	h=To:Subject:From:Date:From;
	b=nIdTmo8rPkMabK+LLj+rOgtovKz2Ri+aEPLz9UAdOmgaLl7PrEPJt51YHiUllRD2G
	 LlBOu9ssn+uYWTuUAqxQg46479KKDlWr0PfnSFBUFkXQdeAlVOWCttxpuwlH6KScBs
	 LhxSIeYwIrn/umqZnrtsvAz05Z3tS1uA4vWZNBI+ua289SeIKSntjcTakabVh3BYyl
	 PEKVKNOl4kAGw6bP10qJz0vUWg+z1rlPovlrB9/nYmQlITdj4ZE2YDaadAPeTbzV3j
	 i2/0FHiPgv05aFF/WHKTtOt3B7mhQ2pK/Pf0/ZItuccZyzezw2FxSn8PLQ0+gIz5I6
	 j7MM3yhtKHnEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CFECEACCB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779275364.24377.13830004077541896219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede570f81472f2c69e9cd274b40f8bd4a953b9c3363de53087988b06447ebdb6
Date: Tue, 01 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727792753
