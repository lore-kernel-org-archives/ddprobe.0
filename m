Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B23925C815
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750853394; cv=none; b=lhsQmthNBPvCXUtcrCeGw6ujEqB2BKbHPLa1wBw4w9pMGH4m23FgJUeTUR+3DyiyokKZdbfAhhwa3qO8kfpZlVNTFczD1JJNrCuJKsLoXghNYlF7r8yNsvUjKMP/KzizuNbYem9jl4uMqJKjPGQnUr1O4gcZxuzfoZHJpFM3Oas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750853394; c=relaxed/simple;
	bh=vwxvIA2x+HnXQflLFXA5b6ZjCWW9IPtR99jNwmBdp1o=;
	h=To:Subject:From:Message-Id:Date; b=tu4rEPQcP4EY6Q/wP17cEmeELk2/l0yrhEKnm33uV0yAWpVDAKsjFDFX2KlDnWwgzSAiMAQukRIl33M2kEwRNog4aqhNZh14TpWDuUhoegxXmXL0ePSGhzY0JQ2CIojZ2Ndcy55LMkHX8WAUeisCZ4ZHoletmpHuf0MnU2ZITzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+3PkZgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+3PkZgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA8C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750853393;
	bh=vwxvIA2x+HnXQflLFXA5b6ZjCWW9IPtR99jNwmBdp1o=;
	h=To:Subject:From:Date:From;
	b=K+3PkZgp0m9pXTPGeySJTQ4ruq4Hic/H/IXdgkbVqQ1+AAkXOdFFJWp89c0ctVYoD
	 wiUwaYUOmkBiqSx0ShIRiajXsUpZpx8XCZselIEXuZz6mdm9oeSbaTkrAvYFlaf0Mx
	 rKpiuBETvJPE4a+Dr5DQ5rjQuIEDO0v98ymVYf4Aaa1VLnVogawVM8bhZ1JrYaeRuI
	 Sa1iM3FQRAly+n6gFiqARbqyKri5dG1fFnoP302jXA2qbAlpNa4UdI9nOj0VO1ZmRz
	 MgOAcRDnrjAvUWmQgzDcnLubNdvf+T6Fbj4gBLV1ckpFOahhAf8Kvx657NEbPTYqZz
	 LEjdBooDnZXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEBC7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085339358.16780.2733785111253833744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec859d753ac663de124c816f6763d43baab5fe94a7ced0403c213102ec5119fb
Date: Wed, 25 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750853393
