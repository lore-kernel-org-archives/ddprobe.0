Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198FF35948
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750725594; cv=none; b=dyV7Na3WyneCx1NGRwLuN53TEqrmfsCAMn1jpEbArjJ/CFjv2tFxxh+D5E14sg01a6wxMDFSh4TQZEqHaPXRkZ42WaajtA8vsWsu1J0S3tRTQE2E+9Gmo8Omcj/eQUefHhIvAeead/hY7io9bmZnd7g1rRZKIXasYn6DGyluh9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750725594; c=relaxed/simple;
	bh=6MBRsVR9Sr4Y5UAtninWrr4vGQriizL1K1XVwiScKNI=;
	h=To:Subject:From:Message-Id:Date; b=EV+WDpLRG3PKG2ZufnJE0VNqaBJGqvIWzMUkPfhiONfVQdcZQisRQlMC1UQdLvPl4rpVkzFrICjq3qIp7a3t7MTtUOXxPJSaExo+y/8sgua/zEH+7ut4guf4mHfhbxutXD8D6OJC7tMIpRetAZ1YNcVL4ykvPkhxRE+d6ag3sl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNgA/wi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNgA/wi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF5C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750725593;
	bh=6MBRsVR9Sr4Y5UAtninWrr4vGQriizL1K1XVwiScKNI=;
	h=To:Subject:From:Date:From;
	b=JNgA/wi2Fr8n4XC6/XnUh1HFdgvGmuOefhvLHCwcsfP0LfNT8s95l8HGGdSsvYNfo
	 QxlwXZwOW07inrJDbDl0yG2xOhjzbs/kLGXDyUWig4/rmxRGPMffG2px9BxB646+ch
	 /RHPd+2p/mfB1IT+GQ+xK2l/T0h14UtqBR3h2ENF76vc5ZHg2VIY7F/uMVii7a4dtK
	 IxmZNxm0Fmx0RKdPoUT2CCsQh1iX3tLmrfSbzwyJOpYT0ThEObHsSdtNLBH0j+eJiz
	 bOSBIZ2/WApnGSg6yZyeSLclj6pFYpheq3wuuTRpkOifI1O2il/XR4t7nEtu91stSa
	 RX9dkzctd8j0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C04C7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072559357.24766.18232360941117792778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06908e7579305be75537b1a87e95f528978f036129b773430b4cc19ec2e5b6bd
Date: Tue, 24 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750725593
