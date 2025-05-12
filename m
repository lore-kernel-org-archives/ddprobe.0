Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8C299953
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747086595; cv=none; b=OAGUE+dlsTKzhCppv53DY3BOScNPAIvARv2KxmhiNyUMaXawOmudQPnnXUNuKQiugDvL0lXUc2AVDQFHJTLcREDot97gfe9NHh0FLE0qB+axMAWbgQ3YvIEeu+HBO4WUyvEgPvn+yPYoXQCMYYKcdpOqgSM7jC1EKg6yZJrhZ/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747086595; c=relaxed/simple;
	bh=H9SzstdIuK1SfEIXjG1NBrihhCDLFPVDgKPixL5gMAo=;
	h=To:Subject:From:Message-Id:Date; b=MvdZ+hFLzVwYqy86OG4aHv84UBgtDS8IOxnnqfC7jID0Q/xKe7y4EqGKVXf6ppxqdyhgNbIQz7v5Xuzf00dj9fzinKvb7aAoL5xSagbVazPf2SrxZj/8lhDVGjjF50tighKfNdZMPg8Xj2T0HJsYnRjUWhyhg6seN95b5UUE9Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpSeyGOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpSeyGOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFA4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747086593;
	bh=H9SzstdIuK1SfEIXjG1NBrihhCDLFPVDgKPixL5gMAo=;
	h=To:Subject:From:Date:From;
	b=TpSeyGOzcfNk0bcgec/9VR3p8W1kmb79ZqKqKOWn/CtJZ0KSXjBPol+E0LLshV/p6
	 G5xVAOR9GClIcgaAwuGmSpxIrViYdVv94zGpo2Z9TJPKcOoUdnC1wamR0p52/yk+j4
	 qrdRCgDEr2ztUNNK+e6rPDL+E++jNuUgOaA2eYwH/Vqfko+XucpTVwtFAXEzxSKjU0
	 ltGvr8BcuhjpTO5NLdaFvKEZa0cl8aeZ4udHi/UD3zDetE9SZ0eu/cEXRRufpecm3t
	 UePEU7JBZ3OEihYb1x/ijAbaC9wasuyYlCPKcK8XhsLAlGkWr01/8eTvYPRKlZu5nK
	 0iDsBNuKyZeyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98486C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708659361.3675.9529517096959422284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c362aeb15f25d687a3b73fb48ba980b1f90bc3041bb0f4d803e87c62f3f57dbb
Date: Mon, 12 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747086593
