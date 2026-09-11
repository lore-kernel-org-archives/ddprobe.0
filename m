Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741403AB262
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789150234; cv=none; b=nvRF0wRDqLumyI5Qo04yh1Tz/lHVwAiSx9I/nt7jHqda6sRRPQ/2CJcsYrDa5tE249POdJ3iDGgSBnWtllTd/i7DmYBToW1MlsP9V+9gTg2N3ezBdHfTx3uIcSljCm6u9/LH4UwJtj0/J17uOIG3PYY5QFUP37fdIdZ/vcKsVKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789150234; c=relaxed/simple;
	bh=nI70g3Tu2JdjdvndlC3ubY4i5+dthcsqjqXuQmZaoGc=;
	h=To:Subject:From:Message-Id:Date; b=Eyz0yuyvL5D26/be6ro+VOBPNTum8HC3nAHx7R4DJYdY4JSjH32g7OymWg7CMbK26f/mzmtKr0I2QdO9HwSmEhBnx97ZOpbOSH/ZPcy6xcRD1u1wdOPBwf7GRBCaSaou7CehnHsqhuRs22udyKvOb4lkhSf3e/yNxXIqZvVbfOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir8ulTrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir8ulTrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B8BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789150233;
	bh=nI70g3Tu2JdjdvndlC3ubY4i5+dthcsqjqXuQmZaoGc=;
	h=To:Subject:From:Date:From;
	b=Ir8ulTrBR0f9qQwZ6vP87rKh75BILMNqc7WPNo9hn77z8Ib8mL7R/3E3w1DUBN/tC
	 +o2OJPGGPPRdTCP1j9Tc7qcWKs3ZpL1P+OGkvIZZvgMI8DSrBVAqSO3TzxfI+Lymf+
	 08gBsMTIkcs47XHvT7ujgoYdFl9pn2eqj0jrDX/DXgnI6+aHf43nxQyMPFGguDCEBv
	 uZ77HuudyUtTKwtxIs7VGTkO8WArrIJFfpDLypebdEq/8N6czXRjVke/P5yGQZ/7qs
	 l9s2ljMnJBxj3r6+GLvC7Nj17W8HN9E8g3IEnE6ElKGB62JerCxIjL+QWed7DQuLyb
	 MD1+m2Nyuja/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0374C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915023371.16087.9142982241164541947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5746292eda304727435f1fb4ed64f5a75a608a2d66d84facfb050f617a10b1
Date: Fri, 11 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789150233
