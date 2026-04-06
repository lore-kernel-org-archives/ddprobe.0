Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4538B12B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775495134; cv=none; b=OoOugmZchadMgEuErl5pTIUw8aeIon9y8tOcnPU22p1FuWhu7upJT/cxKIMOsbBN7d11Dzoson+xYSkFw3o/GbCAWmQKso2lhe2bCFewZSPJMLJsLdCmoHDsr2nhhAa/MrBU49+KVSWR6rTboKmQk9NRUr2f2dXd+gwWfLQTreM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775495134; c=relaxed/simple;
	bh=cFSholD39m9py9wEN1862y6ithIafJ377IYK620cul8=;
	h=To:Subject:From:Message-Id:Date; b=fVlrF63YeSebnyog+3MBBO1uVlGj99ug9xgMHnslc+n0F/ycttqjvVkBABPpUvWZsoYZJaiQCSQXFFpETtlqVJ+tb8HDXATG5jzE9A5VsS9FDg6tvxl3vQlb81s6VNwZ+1OgzCK/fNFdJX0nLFSPthQR5Qvq4lbct3QhvKmJg9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2GMYIqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2GMYIqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5732C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775495133;
	bh=cFSholD39m9py9wEN1862y6ithIafJ377IYK620cul8=;
	h=To:Subject:From:Date:From;
	b=p2GMYIqNvMtr0eoUkYePG5DfsQe8HZ4H4BSDKyZWmjfONLbp7WT/P1KmhzKUb6OhJ
	 O6bHf3lK2xb5vMh/hmGRExXkrpZH3NGhleosDuRcdUDSNpWWuIq4t3PzgozpN9TR4j
	 tWfMalLjk5FJsJCXwEC/ImUxPKK1GsZKTsTcaudvKljA4aKU4Muqmr1Pmmw0R+43nh
	 fx6xqd3TM5vcKFH6wsOrgztw3DRt4JwFmG9SDSzfIvloZ82kUf+i74Eib4uCpuPhVR
	 jykq6SKyCTwYxokCF4rujq+4KVBag0Lt8swMImbVDPVduPaF21j5lvCeT/vAHMKri0
	 4y3Vn93yCwpHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF4DF46C4E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549513369.21203.1795645123647978638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981e407355ce5fda1f4c48f038ccce60a1b4f14e5f078fcc9f18ae569f996802
Date: Mon, 06 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775495133
