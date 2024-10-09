Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECC11CFA9
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728501354; cv=none; b=thHmTanittQvgeRECcP401Yz5yplFnniX4G+nv2HjMLBuapjUSTCGIBWEe3Xgdm74YuQzbxWSsuG63rPMIWflDMOfMzu4yxJ9k5Z1qIkRbvY/o/iQEP1nWrjM7ZK11LDFeM+ag7gZZCifV4N00WARLUCnqvEZ96Zp7TwapWHnwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728501354; c=relaxed/simple;
	bh=7ba63gZveq9T+bMbbxCjrDDG1XEjirDjGi1yIL+36ps=;
	h=To:Subject:From:Message-Id:Date; b=Jj6kPu2aw/EFR2qQhAAY34i8O82yRFVFLEsX6zX297+Z4U68lHiI2rnXdhEnIc8spUXGaiM47zb8ZV+uU2SPFaRjE9qV41kZipBZ08607j39K72lNzUnV3Dx5KfhxJj2bDwq2aB/EamF1NLmaR9+VbYzwmLO4hQ85ncnzp4nSWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOvUUQnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOvUUQnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF57C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728501353;
	bh=7ba63gZveq9T+bMbbxCjrDDG1XEjirDjGi1yIL+36ps=;
	h=To:Subject:From:Date:From;
	b=ZOvUUQnPoLTR/qeIvtndJUs1MnGbwWd0JkzmDz80zqLLmcSwnVGqD7gHLUESBsIKS
	 gFODobZBchLMG7ek+wDAkbf4qTQ/JKSDYLl/WpgPP9ouPHWXacaLKyk/kiqPyR2Zis
	 /QXCSgwhRAlUHEEKHs5m2/F+A2KoJ0QJ0zvMHTS/LhuNvofTbkZyL3DUoNQPrS5oL0
	 rh3UcTl2rfQPhGSV3YVXAHmYFb5IF3+kPOVVfYFiY/HUJzeUwW2JSTERsSLbT04oR0
	 nNRGfDimrzGyImNgmKMcnwfStGdedCdvxQQXrxRzwNFhLNinoQvMkRqUQbjv+h2O2z
	 xSnYfIzRkZiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9434ECEE342
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850135359.24555.5638863330169877547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e488f22259c1e5a064fc9c7c57d1efa1f0ea050c2cddc25e282820278c842d
Date: Wed, 09 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728501353
