Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42370BE4A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750123194; cv=none; b=WywzT9FH8Sd24j+Og5ynSJsVlbVtZZFaivcUtRN/s+zCaSD4pKodXl70HQFaYJaUukKKkmScG0nHUf/Htfpg1AdR0p81XM+kLhpWODhztZO0I0SsoF6nc74zevSofMS0RVO8qt0+gw7mwLC5cjKYDRcYGrAPb4T5ZQPK51wnPBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750123194; c=relaxed/simple;
	bh=mCOSL0kAHLbpN7ycWm+5MdcP4yep0Arlgy0//mKUz5c=;
	h=To:Subject:From:Message-Id:Date; b=GWIMaU6Nvp577JnrWWSlPjDFOIV33CgVQdXxTkJETSzFFI2vbA7DVfmy+FrPJvoBjJgdexoqO/QUwMqF1Ea+nFxTdQzKP6wsl7Fn09+cjNFe2FONYZJYH6dR1KDw6x6UfwJqw3fCbGlBJbasYo4AbK7NL8YhpNktGXnvMGpiplY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0qH6KaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0qH6KaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD1C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750123193;
	bh=mCOSL0kAHLbpN7ycWm+5MdcP4yep0Arlgy0//mKUz5c=;
	h=To:Subject:From:Date:From;
	b=e0qH6KaHCWEaPbPMm5612VFW/jP3jUpJ28lebcGagjEnVyfCwiMBFZul7GW11Kqza
	 uAW46QyEarV7Ne15bsEuKKYzRoctwuPKcKHgnKuB3UGv1DDdZbdbWGKxz/JL4NcGE5
	 Ni3EazSTSBExsgsgXv8UUozcozAqC0DMNNc2Ke3cFnSt8K8fWKe+jtqDjHt7XTAAhe
	 oUOkSscSA5ZbUR+DMqh7zB0bUIS0WjyvdNelFpDmhVZb4vxJ+YcuzhTCEvDdazK8Mr
	 7eeQagRsFJB5FkWneXBOsokAlmSTtTxTI5rvbhCLbP0s6u+7pUsL2tIGBr/1yrY0Fm
	 GgMMLEysS5ZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959CCC71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012319360.11793.13926466297228447028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d350f9bc8b2940d60f22ccf06237072fbf91c2939654250225b9c1eaddcfc536
Date: Tue, 17 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750123193
