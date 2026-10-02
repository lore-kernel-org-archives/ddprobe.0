Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5080E2F90E0
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790915434; cv=none; b=UCZBNNRzEiir5aJyUAj4xUaNpQv1oEoYaNKHW/eYt5BKeQhSHDOYsRYZLURryHRfpnlB7J66LRDc69h99ITtUKkBfao/8yGr+t0BzqHGeNGqN4MxbOAcBQyxMCELuRtShEQX65TLXGU0cPd5k83hATmsxlFj5XMDRu4TGA2MvxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790915434; c=relaxed/simple;
	bh=uNSw6wU/XxDGEObZHjdw917+OWwuOibeb3OXAhtFPAY=;
	h=To:Subject:From:Message-Id:Date; b=LceAZuXwlwigYC49kGiWHNwhS0iiwZ+9rzovPi8TP6i1XznWQBFKidc7Fni+r6NYlJvzhIDjxOVTOJzcmDPOjrhiAB82bXnfr4hSa+5GW/B/UDDf5AqGKsWkVsLcXhAzWHJMIQxQt2Z5Jn+7pkTnX1YRC4GTGYEXjrPSasYR47w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiMyEHUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiMyEHUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B07C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790915433;
	bh=uNSw6wU/XxDGEObZHjdw917+OWwuOibeb3OXAhtFPAY=;
	h=To:Subject:From:Date:From;
	b=CiMyEHUEdnYSVVGBAmS6zYSJrkMzzq2Abve7fMiO7ev/WP3gVFE55c6QPYg4bLYum
	 fIPPMceky2Xv3dVotQyk0fazK1WApesjgpsAVMsbfnzA4QFiOPJbU8ul0KNKU5HKFY
	 X6oeldRS21bAj/ZJFYCRtlqSoWKRoKBT3Dj0X76P5yi7M76qK+QO0tduJHWEk1Mhyi
	 6X1yemacIpud8oTSQ03JU4maaTzCwlLPfDV3nVO+6iZzOjdYCzt4GeCVKjFfkvaLKn
	 57ofh0UAdbnEF20/4jLKydTw2cfl130Q71LHhhjE5mV1JXH9bsDSguq+LkkwdvxyFQ
	 v/VWiaSG+fLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2016CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091543369.2002.8909103714960430997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d4816d0874b6e77450220cdb679156423e03a60f5cb12807b9977ae8d56487
Date: Fri, 02 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790915433
