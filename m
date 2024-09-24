Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368E71AB6E8
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727196354; cv=none; b=LX2nEunsyfhvN9zjJpGEvHMF730MR1Z18XGk8bMsyqyGEjXwcHDkNHscbKO+mmPBuMlk+5knyKVRWBh1+Hk9cnC2BQ8GfEwVv3Mh/vMUaxp1+SrRA0otgoChopBBe/woeuM66N5hGUiTzQM52vIi3wFga/f6c3w06H/VCmbaIC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727196354; c=relaxed/simple;
	bh=kWlIgX8yXCWh1qKtOubitnHdLsI5Ba/wRlApktndDgA=;
	h=To:Subject:From:Message-Id:Date; b=DfkH3EAvLwyTWxtG0UeG+9wEYkeCZ5BWZ2rxheDgK3zcIfb7OhRLjGfK/4zir2QetqbsslR9hVIG2eFuM5cm4ADqR9+ZIsVZK5zIXAkFt2G4Wti0I/sdqOMDPPvxqyUQweCd3Mb9+bx81Me4M+AlPDBiMEvNSqy3DBMF5vLp2wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiQg2neo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiQg2neo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F8CC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727196353;
	bh=kWlIgX8yXCWh1qKtOubitnHdLsI5Ba/wRlApktndDgA=;
	h=To:Subject:From:Date:From;
	b=RiQg2neoeagdD95nJ5G6FQc+PktSxkD1rnLN02hMOTVmNFgEc1xxIBm1g8sLrBZtr
	 Pqsyeexn1NSTsvnXXMhWePbhgfvYdhHrZ95mi4jDmlMNvB3Ns9zDjE8uVQj00xQgst
	 cRJ33ZxrUfy1QnT8ZjE4TXb6BSBnDwCLCaa6K6CqlfokmlbUjEnTaUl8FGfiCJuBHw
	 U4WxIyqz7r+IYMENQJuxG7rdJcxobTbXyoCGYDERPU5ddGMFt1kLDR3x5QbsIjQZnh
	 n8EX/R/KgbtQBQIswSUIGhYoUr6jBjPaiV7t6tQCqjzMLTZZ4rTvATx0eiAIoFaEgR
	 ECaJgqr6hg84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94061CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719635359.7572.9845112273080362989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85c5b66917bdbd59569582b43672410707d86666f66f923153f5eede021ea4e
Date: Tue, 24 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727196353
