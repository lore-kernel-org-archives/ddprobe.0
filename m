Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C422367
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715385743; cv=none; b=ilGFE5hkGO3vmWPYT7spdKygah2OjBvYMhwlkLzzZgRmnmSYuGd08ToYy0nCszWUv8712a0UAHafoQCpcHeWgbcE+1FV5UNm76uH0Y7GWe/UmjuPNCQe5Q81aEcsmY/6FDJhylQQ2/NhTyLfYS+2x0EWxA/D3tzKPgMdScvkyek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715385743; c=relaxed/simple;
	bh=KDArExbg4fsPKqhB4BoafgGbIj88FjJGp5fznBsCocM=;
	h=To:Subject:From:Message-Id:Date; b=g+75fmb8XFeDjgzgMXLEBKEku7TtzVD4pKlVypI4rmmf06TNtft4u3z2n7EBPYckHmMRYn3GeXEHNlU0qRGFbTiGi6YtFOlg2MHdxZTxUFLZAFqIkTKHGA7mkSrbhuAG0b3RwTJxcDSJvVAadFpcRoBoAQ02tgOTpqICxfaX7h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gf5UVp4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gf5UVp4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C37C32781
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715385742;
	bh=KDArExbg4fsPKqhB4BoafgGbIj88FjJGp5fznBsCocM=;
	h=To:Subject:From:Date:From;
	b=Gf5UVp4k129H7dtoeGqn3/0emcJzLmEQ/PjbnT9Irhn5DRmDLwvZBTONb+fb2SK2d
	 Mf+kAc2Eo+IIoHpRx1kpu6sBCAS6jAIBa4Wr6daywxUboQ0a5FQVnu5Tv5aMN1iqq2
	 iTyGCrX7VNDQ4RKF6EzPwdYhesNmahQMOQ/C1ga2OpuvV/R3lEF/9AfaBuKLCgqsao
	 XsTM839qiqMaG2ZFaPJ3FjvCh+zvhbav49M425LIC91KX0rRkmJGYp7DfvcNrri6Wa
	 xRy2s970FvB780lIJMozqkviHfqlbl1GDvknFHl/jWBcH4VCEtRKgGvRaV4PPONOxm
	 xpPK+iyn+eBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8D9C25B75
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538574277.4065.14855479814530463888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2296666c25b49fc383e10907b96e3ebbe00dc619046904b03b23460844605c
Date: Sat, 11 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715385742
