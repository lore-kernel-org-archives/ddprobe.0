Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA70632
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712276896; cv=none; b=a9SPeHiPdVLeu01+nKjyeReNnh2qSrrRxGdJVm4V5sqDwVj/qiOEeLh22GRUNQkcUt7bCqC3CkzTZBb0U0g5G7KZTjqsVfAQJLlUDRBzG1UEXihrIy3/quT+W2WK3zjoF2YwwfrrXz+/fjXUe83pybzqsO3CwnrlUVI7n+3nBR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712276896; c=relaxed/simple;
	bh=FoeJijSTGluPbs3WbVT/ZNz4wqRFAznAtDILVQ6otuw=;
	h=To:Subject:From:Message-Id:Date; b=LCJ6OlfbKydAsTrNS8KoViMxtaWeRRCW7HpmLqV2knA194jEqOpBczVaKz4veFxSIixpQA1FsM95+D3imjAg2C3GdkfSSTbGftRZcnZK3abjuWxGTA73YMFkS6a1qzq28FhGP5IWW56FOxZ8PW4hSZkErv5V5SyNn2TWwqeZ66U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDHuNjCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDHuNjCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C147C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712276896;
	bh=FoeJijSTGluPbs3WbVT/ZNz4wqRFAznAtDILVQ6otuw=;
	h=To:Subject:From:Date:From;
	b=bDHuNjCvcqGzoXi4f/dk6tlalsNL+MLVxG2Q0K6H5cSCEtq0l3QPvzweD8kZ5n15q
	 dyzKKykdsnQBBG3OIvsfgrBelzzyFu8ClbpWY8YmZaTZShGQ1sVRj9NV8zTHqeHjcO
	 y54CegP2v0i2itMHWSQQSCeEqlUdX6eIyL6PzQRxhY/b2ZPwBnpbNLdRa35gFKujKD
	 HsEsd8OFQPIzw5r4LNc2g4dSiz3+d3StMKqHp9Q3PpsSDPNuF3kplN51xnXg0E/40p
	 mgFCBN9g1x0hs1q7p109yeO9efm6CNw9OBYREV71YBGK5gOngW0S5gxlwflymTFOxR
	 kDqMFAa/Gc6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CECCCD1284
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171227689637.32522.10446676217191029141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c88384a53f989cd87ab722c88fad65dd0141301afb7654b091cbb82244933ae
Date: Fri, 05 Apr 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712276896
