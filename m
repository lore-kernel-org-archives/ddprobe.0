Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347C65674D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737044154; cv=none; b=kfRuWV85ojnp7jkLlulG8CNnFamvlizq6C1cAltFQEryCDEUjrVp/mmheLCdFVl70TyR9bfLvMszyo2B9Sfk7HXDaDj0zdot4ptQ6t5i314xyIUZ9hKZWzHM+6HFPR/LvsjRYpaCRFxcvRd/Ir7VicLbu9l2kCetUzb3+Av18Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737044154; c=relaxed/simple;
	bh=miq/iNbphp76NDzCdWIG346wG0cPNBT7yra4k7I/yZk=;
	h=To:Subject:From:Message-Id:Date; b=OtRYvnfKEiDSMfijwLr7YaP+mvPd0nSIDoFWmBKdhhS1VWijbG0NQSFKi9T5n5ZO8JPuZtlcsTYTyGyX70btm4//mp0ALBJ33PxoVseseihIChVVXiDx8n0Vh9hXEnZIowryWo516m9J+PR/VplYsO4y6zrkp6lgrVEAjYSrxk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3+A0d/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3+A0d/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC58AC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737044153;
	bh=miq/iNbphp76NDzCdWIG346wG0cPNBT7yra4k7I/yZk=;
	h=To:Subject:From:Date:From;
	b=P3+A0d/uOc5inoNWvTnAQT9vPVWSSbEmJmab9CxLiDRlNRlMZjNn27vmZFVBo5YHZ
	 wzE1ueV+ViGKYrXunuf0Qb75BhzAfvXbQ5izP2MBGV8ujH7UXq5lQfkpaROEN5TMin
	 84SWvjQSpAWK995KNAPYsyqAc9vLBJRJx7A82bmWd5jx4O6G+gW3jmpyJUFJlwZma0
	 UQ6o07n65r8J+xq6DoqoJLaURcGgmucvHtx+XN9H0C0M4J8tbbRoITMTkLAILXMyve
	 8YJcNuzBGIvQ5LylNFNepcQkA3rfdyixVLYfnEFEptvF0kifnDWYfZ5eKRA7RbNI/e
	 nmmXBvIP5Tsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93825C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704415359.5565.3289421766664559496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7b71357a9a4e41fec1ebb476524d64da8e1f5e150202b56ff9cb04b6a63539
Date: Thu, 16 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737044153
