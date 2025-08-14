Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608872623
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755133194; cv=none; b=rxSAL4/tFLREdY89nPHsnaHF3S/PJ0MsU8ZP0casIgynm3XLJZ6BgV7XGkVJGH/str2+pdxi+YRKK9F837b+lwjB0uchoCXVIvJDtuqvyV2lbLqbI8ihevYAvC6vY6/Yr4w6a5sDY3WLSjfk53FH1AicTkGVzmNKZ2pIz+dUcyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755133194; c=relaxed/simple;
	bh=0b2HBuhHO52xcr9lnhPv7h4DMTIL+jzya0aRvDMHSQg=;
	h=To:Subject:From:Message-Id:Date; b=ct+y4HzWdNVjEzxN/j+1ly+BT5RXfSLBYM5kYiWKAq8oQuhMF6HmwLLxh36JWsAui/R1vEbJVgy5Zci5DcHpGf27OM7cI51cjNOwmlwAMLJA7oUNuUOjX500IBSdrLnQAA1ox/mKm0rqtTeLhOEBpyqNr7MPjkvHPF58bez2r/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQBBzJQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQBBzJQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50ADC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755133193;
	bh=0b2HBuhHO52xcr9lnhPv7h4DMTIL+jzya0aRvDMHSQg=;
	h=To:Subject:From:Date:From;
	b=lQBBzJQo7T50I0+T8fUjClwPR4VVXPVf050MBtXPbT1LHhndaboL3TFGe2W4Ned4m
	 6qfVlxYV9RgagV7hrROLYcfwtE2/tlEaE2kKsPL4c7b1i7kJtGINzzZOM/a2a6vCdP
	 RZ44HFXt4HlDJTL/Ir7J+6+iyAwNI2QIt1WeDEwA7fg2kXS1yoemx+PoQ3hMa4mcVB
	 q9hZClZ+E/LTfzPFOW5mZH01Q3uZnoc3Wfcppj+iR9A4dK1DejN7rUlDke9wJYrYSP
	 Na+krkW644bLm6mLdRGjNfojwmGC4umS8xdNQoAOA4nL2CvMTn0A5Ahv/02kB4yKoU
	 twYUcqPrnxdHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBDCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513319358.14328.7364458851250085473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1914fb35d43842a666c02944d1dd967afdb456e28e3a909bb06cc76174398693
Date: Thu, 14 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755133193
