Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF851FF1B5
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760635194; cv=none; b=rgEtxMv9hjfF6AAVB1C5YQYugZyjRuNtCGouR6JHBDj+kcPGyfl5u1oWEc0J4YB0xuOC0wWpCcnbGVHwCyjoZhPT5mQElu8h74diDtcMBXSxiBqsixTf1JM6G4xyOghtu378Ex9RTJpCGyR2TiLXOIY7+blf/SLR8M9vpC08p+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760635194; c=relaxed/simple;
	bh=UBrqm9qtRBdCPp17W463cRvkRE6blQ/+bELo3iHts2I=;
	h=To:Subject:From:Message-Id:Date; b=IO+vh3tLMMnACg/TYS/z4CKfheDHJdzbKLoavwJeRFwAPl9pKaMF98qAEjj76c2IwQTLc00PAfqhJOiFi+lynotFr8JhJh2fPQHO2U/qm7Qt+U33G7BFso10nyuODAkAkqsKRunsTL6nliyL+Swi5533RhUh9Yh1Hm20ATyXf88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq/bvlhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq/bvlhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B820FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760635193;
	bh=UBrqm9qtRBdCPp17W463cRvkRE6blQ/+bELo3iHts2I=;
	h=To:Subject:From:Date:From;
	b=lq/bvlhQ1u7fuN1KYPMk8CL+CKxLJvXxJtY8TyIA1ZqGvo1WWmxicrLQtc2hHPAdG
	 Cv9ZhlbtJf3ZY07hc3sgZS6LS6eAuLdDNlTHojuPKamCZZ8FTfMUay4H0T0ilvjdZZ
	 nfeHqRo4g/Etiu2xU3Y0ZTQ11rqrlTNQbNkkw9rZ0bmpxRBidgnuREUeIcbWyf6Ddi
	 ZZ4hFCleP26gbyeZQyfg/OsBxJszAZjoFJPqVZxK4LliYBMBogsY5sLwPburHEdLyq
	 NtLaL2Q2OW4hyJnJpm85OlP/QNlTIiUrH4xl7m6BOaku5hPYEPHYQ9fvjhSob4qgHQ
	 aAOWPJ+mDg6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF0CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063519358.2885.10171321706315983605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb09887dce3dc2a918da176fe9a6630e64b42cde5dc34bbd980d1a0342b7952
Date: Thu, 16 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760635193
