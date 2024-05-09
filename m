Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612E51487E8
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715226143; cv=none; b=KklnP0TEUXbT9jZW2XEvKuJToNc+xOvdTHmim+85mRN7s1NvSro9VCjBo7g/iEQPBHCI4ZSeObVej1xPaZfEMbMyHhHThMTSTJFA6vTDsjrW4fEjWOIqDfcuOFs/sHcFdq9FpbFGrxEx5YExAFGZy9uGdiJzi8v02r5s3/ntRg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715226143; c=relaxed/simple;
	bh=wbBXmPGl2dDl3ITSLf2lMXfISGfyjPwjh48izuMhXM0=;
	h=To:Subject:From:Message-Id:Date; b=tF+kBuxKKdrl2q867OF4pi6rDov+W5KGSaalg4ANvnwoWgwlW5X0Mg5+bCO/9P0530BHG93/6UyWSsnCYU7WweihzVXCDLViusz/znWaYaEY6PZ8P9BLGvgXhIqjiY197QB2csqI1ZMDPF91mVfy5lGEwJ0iIthZl4NaxpZ8wJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSZJ2C+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSZJ2C+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD4DC2BD11
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715226142;
	bh=wbBXmPGl2dDl3ITSLf2lMXfISGfyjPwjh48izuMhXM0=;
	h=To:Subject:From:Date:From;
	b=uSZJ2C+Kbp3FP/us03z7lMayKUQN/sbK24vTISta1kO6J5xFy/2A5HbUlws52gx+K
	 crEltx768ebD9f1+A5qtmcIVx85ek21V6nnAK6biTZoFUb4woplg8JXpkiVrZoCX7G
	 va0h0YgI0X1wxqrvGOGAOAGS9PMf9OIZCfdojOTdGIY1TrP79tpV7AOVmTNr1kpIAc
	 J86GcsMmzWaTHHUxKek/tBBwQyH15JgCfIF9R5cu4v7evqQuKk0NA3G3Oi3Sb7o0n0
	 gS+7B2rBTBjzzkrGRsA6/bQk67qBGLG3jCbuCQlkf8isvhIaNMtXcrUhMgTRPYMYD6
	 MoaegDvUTjl6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88E8C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171522614281.26764.11619104600630652124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cb728dede62621ddeaed4362848717df1be6f483bd3a4726ee1b371cf71345
Date: Thu, 09 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715226142
