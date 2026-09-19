Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD4C364931
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789830634; cv=none; b=A+ohgfxitYnoGr7p+RkZDCnmFJKq+/tzsQBeIlntLZKRuDeqFg6kQFN3qpKppI9nrKZvqUI60M/Q+G+noCqlbWcvg2WCMiCa0aFNaJes/xj5Jp4gISkAhB3nr6AkuZzSP3fmmtcS712qG2lvrQ5jo2Eu+3pOUYCmx0BLDOjmprU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789830634; c=relaxed/simple;
	bh=l5PtcdLmiBsEtXPUkrgyM7/oau3uKRJ4x1BDLbcCE5M=;
	h=To:Subject:From:Message-Id:Date; b=YR050EMJMvuemtLLy03Wk0m+w3x3hVmY7zRAC539QINRnafvSQCPscLedpvuesT9EhmFj2r95y9phs/oaCBLQH/CH1jiNyD+WC1YzrJhKNzKRmW34M5UYcUgg0zxtIp7vZKrjsr2Q+UsimfAaiQNNFXerMacTootKDywckUvqNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmdQTGhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmdQTGhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0044C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789830633;
	bh=l5PtcdLmiBsEtXPUkrgyM7/oau3uKRJ4x1BDLbcCE5M=;
	h=To:Subject:From:Date:From;
	b=BmdQTGheOWmI0ScNE0FRKujaDc9IR/wwwUSsyk62KaZvhqRnem15n9LXPnWP7T4OT
	 UKrX/BMPdU9AtU3QfkTU+GlrGhET7RH4wVDTrbkel0gNkT7RoX79+x5oHaSA+g4gzZ
	 yTyXbgrKIjTjRqHLDNOMJOeV0ltzlvq7p5G26gYyZgq78WaLF9fEG2Y8K3KojVyn+7
	 PogIYFJIiFFqeefSiLAQo972Q2Ba4B5DGL7sBWxHcHrsMa/5eI+f7rQKUSGeMBz6LR
	 DxfuhnJ9nReku3vFIe3TeZxt9WDvWfxk9n/gOGThdKU+Ig/QgvN8oln595HDFUQyE3
	 CyLjknOi8dy+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC08C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983063369.21449.10759315614522718178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25813c01f8ebdc5541e4f8dcb04a4e34d571bbcb530b2703df96e0dbe28d2bac
Date: Sat, 19 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789830633
