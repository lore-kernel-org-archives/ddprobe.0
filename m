Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E32EB878
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763740314; cv=none; b=gH0zg0bnz7tNjtTlzd08DGNZTBzrVJnuxRPz42bbY3gibjrgVRClthXGRH0miLwOafj+uwXBoQW4G5YNSr4T/UAj4m3mjP5+Wb/yfAlxmbtTbLeBImFu/enuzWJRHeCA2NRHKnFosdQTYbvCWqIP/wYVZjxkVDAjU+o1XM1BpME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763740314; c=relaxed/simple;
	bh=SkBQgNOlnKfRevHPAG9U0mg6Sgdm27fhD6h5TCMNf6E=;
	h=To:Subject:From:Message-Id:Date; b=XibanoMTeWtkTnrEQ442ZVvs/xIuxIr1InXo5t2iKqWnU3gIYkPmPCn1UH7oREO+kcpEOQ6gLu7WfQw5LiqsUXiK/YpA9SFx8901h4XznkNRns6Fhn/RQvLzN7V4jnUkEAbsXY5aenU4OmalNc9j/3OZIhIGoRkHaeybUXlOMGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnHyQv0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnHyQv0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A1EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763740313;
	bh=SkBQgNOlnKfRevHPAG9U0mg6Sgdm27fhD6h5TCMNf6E=;
	h=To:Subject:From:Date:From;
	b=nnHyQv0v45euWlokCljtoDagrKlwOmoW+E6hZIHdBpFH5lACQI8axFB5TSy5tpWe+
	 3DWTiTrLji5dboRamBRKbnP3Oske/uvBsOWGrdeihutYnj8RZveGLxmiK+m7WRO0GP
	 eaR2+HkVCPWA75EGKasx+/76pS1y+Wlq82Fq7fhrgCIYSGfDavpxoFCSFHgQupD2Rd
	 aGG+E3kaUdCdAbjqxpnLk2n9TKJOUcrZtt99eeoGwKDcm539hQPhKjV6EDhm8ukFhs
	 senfpa4SApTQMDwCivxPsjTaHcSEgsWIfDoKDoFGdBhm2dvZtVDqpnVSxQYwj8rGAF
	 tOQhmSlbfKUwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95686CFC28D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374031359.8913.8580148724124951788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800d02c8dd812cfe345c701ce1aca6c46f04abdb88918ff520b988094c7c0b98
Date: Fri, 21 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763740313
