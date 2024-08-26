Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CAD13B2A4
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724670354; cv=none; b=GeCuHFrwWtoNZrw88gosAfyufjkffkQyyE7BkZPoYt2RODDhjyWdzfLMWb9J1kSD5My4PlD5wiO56UW8zCaBOHLuJdDipEENHT+RCz+TTb7rWKS1Z9UdCHI2UshWf6dPgf4s5htY0KR47s25a7klbHFKjKA+EuSva57t8nNF480=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724670354; c=relaxed/simple;
	bh=zn0/htl4ckQAdXtYaLmgdKm9blfo89kVc2gPBDa1l2M=;
	h=To:Subject:From:Message-Id:Date; b=VU4Nhd1a1kMnQpCdmhtHuUI19lkpsheGXTenqcjZQQyg6UslsnQ6n6/gFXcJA19WdinkA4CQCa1BYTNlWb3FS6MynnOUzIEObkHesAyf7hQdhF6S/x3eJP8r9WFnC5edklR2Erbn8R1Cmt5VinKL3FmZiEqK8ddJKfG4nFmCKfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwLxkriC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwLxkriC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB3EC51405
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724670353;
	bh=zn0/htl4ckQAdXtYaLmgdKm9blfo89kVc2gPBDa1l2M=;
	h=To:Subject:From:Date:From;
	b=NwLxkriCHztyxJW+H2VpItvxerhK+7FFcXGi0tmuzc5fexa8NkxGW4+j997yGxxaX
	 Uxlk/j6bTeuue+BlfD+j6cP3Ttfx14716okq/9jvpv7oM1sUlVpWgmPCE2bxkxCwZM
	 kM1um2B1IubGqdFjI90+SLWoKGM6gL/rKWsmXfc/cGLrsghQCXMQQTWuaLNdt9Em3f
	 r3HKXVqI2UTTaxMcWcIYRg3hZClgwKrS7oM4rnsL911eeP15CsYa+mD6LBNe64nYH6
	 g3l26AoXAJAaFcHzk1K7Pupdrpt7osB4ztE0Wkj/jpDEXAjQkVkMcb5jydNCsNoUoC
	 qwXXomJKhZLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E2BC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467035360.12376.9544787240907247637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dd97dd67e84535044d9a7aebe0866f926c57d5fb6660099c11e39b5bbf1781
Date: Mon, 26 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724670353
