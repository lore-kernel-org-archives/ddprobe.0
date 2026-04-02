Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297CB38CFF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775117134; cv=none; b=GgQmpx/7mTJaT5Pp9VkuKa3hiFme0lx1akEiSMLaaEtUgjukTtmLUwjLGdmFm6XBMivtmnWAz7Qo2UHMeJlvcKPuoRD1v+eZy9MGH9KEuQhI03d88QVzU5Z9al0XdosyFuj20ynB0y0UT3GySPSrJdEcYzGE/XEVe89Fg5nLGNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775117134; c=relaxed/simple;
	bh=R6RM6hLmCZ9z2gMb05dbE0+fFsoOJtwGVHiRdTakCOg=;
	h=To:Subject:From:Message-Id:Date; b=SmNcbrTy4aj33pnBp1t62is2EBFPi2TVekvVtO0eGRf/G+n9BXSoUq5hjSPKhrw6eYEG/2e9LEfEFZxr/P6+I04L/7+qaTCJEt882JjgHlqUxA8n3vCC7/LrQ7JUiHazlY7IvC/RrHixgcGmw73MozNaPNncswo6uzSzVJL45rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGuZYrbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGuZYrbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B88C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775117133;
	bh=R6RM6hLmCZ9z2gMb05dbE0+fFsoOJtwGVHiRdTakCOg=;
	h=To:Subject:From:Date:From;
	b=VGuZYrbeLl2CbNcAYvfcVIix5HTSQQk+sl14eInZM37HROaAP5WHxWsYwv67m3IHE
	 0fXesEu7f74PpLkyB555dzNqLDnaBfvfzECyNsFfUVNBcxZ2RBgVy4Pn1HHDiBazDP
	 vHhG6T7suO6ToXBWUqFSEZQCte8bKzz2MC8jfxAeryr7v90V2JVAC/Oz4/bSRbf/H2
	 2EHn43hOrrff4i1/7xMYHB23nKK5JgkyD5+kqbzbjtSD6sCo5HweiRl2hDdkl4xKIj
	 7yA6tFqh2QIGjQOBch437ByVwtPmzFyc2Jv6EiXfeGyWgVoPgINXBASxreuxdJidVA
	 mNxov+blfDOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0663CC6B1F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511713368.15119.15658996698699371631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058d2c46861d5be6869e03e3eb2fabdca2f814e5120be453967f0ea5edade933
Date: Thu, 02 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775117133
