Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204FB273D6D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775111734; cv=none; b=dsr3up6Mo8chelLt7cThN5v3E+aEBGj4SAxhKfR3wR+ywAUDpYuMD7ibUbGKQtKT1AURtjwF4+khKmOAxHtHZWiq4/Rp3pw87OIatpK6h9YzM8ZBBYHH3Vj54ycIAW7fM4EYm+QM1ZbM3vydxVsw9FtU2GzThm2GW2cT3if3X44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775111734; c=relaxed/simple;
	bh=AzQpyPElBFbAgjzmzcmBmPokk/oNM1Nwk3rD98NOb3I=;
	h=To:Subject:From:Message-Id:Date; b=ZN71NdyIiSEv8V0ADfBGZPJT+4qs3JpwOM4U8ibzRtSM04tppmKgyLuxtvB8rcZyBl8hFW82XJm9mD+nCTQ17l3rtt65RG6h1tR3t4pE7Ld/gnSChHb2OBlSJ0oySCKwc8/0gjjGsyL0V4J00xY+Dz/8TOjkiY/+2dWsfNQxbKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOtXKgp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOtXKgp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10BBC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775111733;
	bh=AzQpyPElBFbAgjzmzcmBmPokk/oNM1Nwk3rD98NOb3I=;
	h=To:Subject:From:Date:From;
	b=fOtXKgp0i0hcTgaUqsvn65YO+NBMwe0+gd4t2U4aoGRdxzhBWGlVx984vCUl0QnsL
	 TyDrc/Ob+VldMiO7inshSzzYM0HplVqwZ1mqq/U+w+DIRY+V+Bx4sSOOW31hTmzSlS
	 AMW2H3VNxinErpvv05mb1d7DzIaNGE1q0oMChaVTc2BMttiosWHBYm+k8AFKqy2b63
	 Ttk7P6jS6Y0o1DIRU3DAuBROvErgNogmEOk5Xfr4a/RnFxFjZNTkSJJ9mfS/7wOe5Q
	 i0FHvqrd/3O80+1KbD6LzlsP2dXz+n6AJJRBTflCFv9BKZQtOf6crSe2lvys/h6Qii
	 qUyq+FEJCfHQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE40CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511173369.23966.1970640421055686352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cf57c9175ee26301e4c3814d6e5d6e3918e6dd80cd01a208cef4a042487b19
Date: Thu, 02 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775111733
