Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F8830EF85
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768533834; cv=none; b=BJUPGGvzUutyuId/nsLGs6Ll4RQVj7NOoP/bxdmeFdHDyxuXwgeft90cCLavyEprM0ZKdrdEkZnSn+im86IOP0j47nAvqN0m4zkd0W3H3pwio7JMZgYuHuuh2ysErRkwR4wO/tm8+O/jJNsXUdmzbooiKZEFUbAZLsUMLalc5V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768533834; c=relaxed/simple;
	bh=NG+6y9/EbrSzSsIjsefGD5FPzIfpi3IKI9U7s9+jDMA=;
	h=To:Subject:From:Message-Id:Date; b=gzwiIFa/uhff/9XiRMykMfJz/DrgJ/pKwQHO6dkJHBps+yZUcUrqC/PB9LrUA+AdFsujsHgj0Mu7mwvP09v6GzHmeY71QMKhmUbNmGcIeO08Gly05cP19h99auLU45APPSTS7I3Ny5LawhohiK1pOhpVAvDkEWNKkPU9yW016q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChKiP6DC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChKiP6DC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC5FC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768533833;
	bh=NG+6y9/EbrSzSsIjsefGD5FPzIfpi3IKI9U7s9+jDMA=;
	h=To:Subject:From:Date:From;
	b=ChKiP6DC+ORDoDu+FnynA8ronfZ8iNED9sZkF2+B0TL2/3nzosn1tzkdtjnXFNFbI
	 P0Ski7EV5lmW7HmGCQLM9OA1Hdhn+NZrk1ZFwNG0pAeOxFTv9fHO1cKQp+i7e/PShW
	 YKaGeGZ92I+P26w07JMCiiHyFLwvYBNw6b5qkwxFInAVigALVoNIuor1zQeypI+6GI
	 KBWxYbKt1uOaCMMLjntH0FjIAnlPsNeLdQzcGrSXYt47XwNSgqX+kM/eRoqrPzr/6k
	 MkDsHPxlTuBB1v6T1izNm5hY3aM0o607wPuReG6hFaBWUFDvIwOZWmFE4mAJaIooZD
	 YG1EqzLKIVzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85DD4A5EE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853383357.1593.934453885059870745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559d17c9642ebd7917155e5df30d144ba74a49869f7c0ef142a6e483f9e2e160
Date: Fri, 16 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768533833
