Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30813398E
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708808297; cv=none; b=UD4g11zylNP2litksM8XSKYj9l6cerw6BoCEnUQta+ttUxg9ny3xVntEMnyc7DM8tso8v5HeFLGVmOE2b7srdpq1IzwINsYB7fX9FXmBL21vDMAWahswlCUMySB6nmrHAcD9cuoRKVQU3VDhhvrLRpsTKgWpykIzI/xUM9IuXyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708808297; c=relaxed/simple;
	bh=bcZzq+dFBDPGhXRH6S2y/mNCoQclbHhdicHrc3yjuv0=;
	h=To:Subject:From:Message-Id:Date; b=IEfJkfOQTFDm4gBV9eTCm4NdSbCQ1ZUqMymxjSBn+EVPH1NZBQDivHHiIKg85ZbwVI295Bg+Y5tqSBzJV846EAVlN9vzAeeiKrF9Yjt+3a9/oDqxBvMnqdqAd5IudkozMozjK7yudLSLSdxL9wiTte7zgSm3K32rOZqo4wTRwsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7gwLf2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7gwLf2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BD1C43390
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708808296;
	bh=bcZzq+dFBDPGhXRH6S2y/mNCoQclbHhdicHrc3yjuv0=;
	h=To:Subject:From:Date:From;
	b=e7gwLf2WiHx5g89XDWzMYCrW/kiJfvZEkbNS4N4LK4X1MeCkFcrux5oMjLKXZurfA
	 26ZFkpG8oIn9shFYkADyKoZWUYgNxsuAjS2pSuP3li9WF2/I+AGPW9sHMvyCaTM/as
	 SKAiD/nfWu3kIzUgWXMHItB7vb2yxchNauWGGIUHC11kHVmwy94tbNHmbZnvy80Hqu
	 olzg3vDo0+4mD+SEq9XOZTVIyMRsZY7aHfKwTzPl/cAv2mc7TuFx/1uGlGmt1F2O5Z
	 f+52yBb3Ays0nf5VcnvboGtxAblpDafHX/mMd/3Sfs2YDr/MQDD9Yja3WuxiXqqvRL
	 s5qB7MqIBLHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DE4C54E49
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170880829641.26574.10117850049204945331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e33c6d7cc0772f9052f66d43738be24997ac73f536ace11e23b16c2203b9185
Date: Sat, 24 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708808296
