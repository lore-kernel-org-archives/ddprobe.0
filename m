Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE7727B353
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354634; cv=none; b=mME6syR8OKAq0mHgD32XvjM+E0Thtuawu/KA0tm3+1unorrwppPHYQ6+DAuICQw+kNzwbHL1tJ4I58rx1sHbg53o+W6RxipTzwCeuPKcBlffqqdP5PwAa+SkKgmTsPK4KbBQ8b8+Eun2pDVPxm0vP48j2dRZXBazvakz+XCjDTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354634; c=relaxed/simple;
	bh=Hqn0cNpW66/1u18raFlaxsKRXJ2lz6nQXYjJdGVXl5M=;
	h=To:Subject:From:Message-Id:Date; b=R0vNKht5lnl+89/ICpi+K2mlzmN6rbTXJDYejx0JaPrKiN0auoFtjafjEKmynAnQv9+2boOTt6vG0Sg1E05uJGXUoNunpkcDbIqQEgtt2vhpsiMSoIzLLksASiAgO8m64pXCRLI5WUwkcI0sHKnxR0R3fNs9TLqzGviJbtlJ2zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7PErLnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7PErLnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E5BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769354633;
	bh=Hqn0cNpW66/1u18raFlaxsKRXJ2lz6nQXYjJdGVXl5M=;
	h=To:Subject:From:Date:From;
	b=p7PErLnEo/V6A05CQFeqZCRYpLhCWS3vbJS7SrSOWSMbQ42BdDwUOSgFpCO3oE98o
	 NCmJZpuq0lHfgeWP0O1Fzzu81qOsJ+wWPFMC127djg09d0AziM93NWnmdbgeOkAiFW
	 cdMEcr/1WjHr/OQKG3YjCb31+Y0rDPgw03Zv5oFrCIMr0JWDneUlQLrF4tpBTXWjHP
	 DFWQcmYgpQqvIRk/9HzA2INBrIeSHVOxaQ9BcfpHhmN9lg5y952kBJu+u7c+Ce8DV0
	 XFOY8Frbpn+Eb4I6A6vWYofZT9U14XCPouFXJ7Eg+1Cp3ibWlyJ/TSH59N0CyG2PXI
	 N7SQohdw2jJvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99816E63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935463359.8327.12716277287357935784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0025e90160da122bc447deb69b2f39b75f68fadc64d5338197b7ba097fb20aa2
Date: Sun, 25 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769354633
