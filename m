Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FB52D5C68
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785665434; cv=none; b=itsDL55sokIBsPv0D2IqczU47p9pMXE6CBf/yngRm32mNprt1tcgnlhANFQyXSlXHBXQ+Rawiv0dmFbuy/65CkbbSYOgS5JsJ91qfWYOVlG2CYCOi9ErbiOdJe47mt2EGasHrITCtGaQGTKnbUkg3wb9T8lgYiZJvnppmrLa3W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785665434; c=relaxed/simple;
	bh=D7wh9e4YhGhnlblj1YIH4Q6nEw8V9eP+XslT4LyjY40=;
	h=To:Subject:From:Message-Id:Date; b=dAwFzcW+EXiDe+W+yvgVdZVynKxDBhCQCGJfLOEANRrDerz0iqCWwN1r25VXmeYg5PdFZNigdJupGTtXEBVXhWcG9DIhqO0wtOwYSQRifyOaV5UJxYjoXqyUZ+vS60IVJIQgORNb+EvvK8jwR7arMhkoDjPMimlAi2p2gF4w6aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZstt+BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZstt+BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F0EC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785665433;
	bh=D7wh9e4YhGhnlblj1YIH4Q6nEw8V9eP+XslT4LyjY40=;
	h=To:Subject:From:Date:From;
	b=BZstt+BGh7EvpAtL34RMgiczmNkqYb45J2n44IFvmmv/K34+XCNs5aqxzvpHQq3ns
	 kHnDMAz2vpD/vDgZULBI9d0ncXSJBcZAhUDMa+4NpIdZlfC4p1Vxc+2SOExuE8E18/
	 K9CsunESSb5jg2XKtyuwOmhLW9WVAZh4e1ANYRQyzJ4iLhpAZCxyRpESRVMCIXut6j
	 lUvaMosdjHRW6czb4tLN4W6dRl0IKWcgwTWtoBbzS+RtZ1P8H59da4sYSIzs4TQXZ+
	 K/7szJQJ8vPZH1WhPJn903JiYWSI3eG5C6p9+FW6zjWl2C+FVpY3/aIyIZt/UW6+yc
	 nFJJoS32kzEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBA0C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566543368.23547.5745922338742534121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b938b3b1364f0444e4db6b1200abacf20f05a2edc84cebeb2cd6da21750cb5e5
Date: Sun, 02 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785665433
