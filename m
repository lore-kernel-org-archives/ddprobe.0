Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4A111BF
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753498194; cv=none; b=Tl0irPh1BqSleJwGZKogAmy2haHhB+D5Fxb+svQ15PJY+jvKtwPDxBXBsmLbDamGfiZD9zBfZZ999HKvuRkao5Gg+CTBzOPz7jMXts9fmPPVMumy92SCuG0AyTf4cFuGNLqUzd2TnT1d2Gu0e144sb6EvJM8b2PL6BkgMV8z4Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753498194; c=relaxed/simple;
	bh=282VsvWiPrLhqXC/Pb7W0g8D7AuuoVVa6bX+HELw6X0=;
	h=To:Subject:From:Message-Id:Date; b=R5mNL0TDGdQO/3UeBgbb1iP9dkHF2UaQq84b7cQpdKRb2sWZ9vJUBKwwr9IEtyOjzhOFINKApLLnAfkuCJzXoAXUJKKda3HNkSB/sCfzWHqlaLFUor7lN1uPEeFOK8kBTlo6pCbGaaVNoadRRphIjF/Uuqt1C80/PjYFEL8A4ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej/YATN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej/YATN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8639C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753498193;
	bh=282VsvWiPrLhqXC/Pb7W0g8D7AuuoVVa6bX+HELw6X0=;
	h=To:Subject:From:Date:From;
	b=ej/YATN+l8uga5VS81BzpfPpt/3BHn6dlBlHMxftjCVcKnIn/C22rzZHifDKyU9yf
	 TWC/292Lbi9ztI4YaCUA6xgLOuZnvH6Ds8dnvjIMS2CyGKTjTaZT5b84O+z4tcuGIJ
	 dI5GXB/gFYZXtKUf8wym7ZY2m+49llxMDOSIEY4UkD4FNbuk9uKIOpDF+9drPnEre8
	 H22QQ7yAl+roGZbKEq2O0T/0MDhcFI16/2zh6WSkot8u+GlY14EDzWvdcmtmX+PQIE
	 AmKf/J385bpap7W3qpVPeLWRo4Z/1Jq9GN92q4Jr7GWaMGGlkJ1uTLm/94BagytYOp
	 NmzGn5iGESKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA2C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349819357.9295.14348059480992277243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021829250f5ec5a9ea871876704fd992a33e944b6f4560aad0a66b929eac7b65
Date: Sat, 26 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753498193
