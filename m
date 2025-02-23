Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3975018FC9D
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740335334; cv=none; b=fI4BBN5aFXY2XBdD8+LN1+vutcFZCC7Zy9lzEeRVMGyou3+wWUeS2ojVSGUhUHFXWK8iBjNo9WKCHXTSYr4e3KjM1xzX519nr0AqBkBA3cLD13psEYsiYD/QJlcMOsd6RRgq/Dc52e3rLKbx8jPeQDxdH8dJzT/CAqF3kaKcCeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740335334; c=relaxed/simple;
	bh=b3dZUSV2jg/8DRok+gpj/EVCPhLXoZT/qyp1GmiAloY=;
	h=To:Subject:From:Message-Id:Date; b=mkbhG5rfFXiDJntTPrHcRU0Z9EUhpZRm1lXt10A8f3TKO4TjprAWacPMhUyTnnSAEr2iE3lWNuvWRd04sc90gzToayi8eU7FFKnHTuEoNnzglBoI+mHgY+U7HESY0871qcFK5EsPAsg2Ih0+IV8yd2cwsD38P2CagMJ2pO47bLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTQW65WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTQW65WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D0DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740335333;
	bh=b3dZUSV2jg/8DRok+gpj/EVCPhLXoZT/qyp1GmiAloY=;
	h=To:Subject:From:Date:From;
	b=KTQW65WZPVHjRXTKbo4gFt19VkrVdE9NkkuexLvewDn0TaPY1M29e1AwvMoF9BLjo
	 aUDYiLHVSF/hvxRyn/g3AE0e04kv8KUWFKJ6XqC6rci5vc9rUsYf1QnkEgxUm3k3la
	 QAI9PHxvUMs2FDMYwpk89NmOO5G+ZwcgU2zEvb3GQACO4RoF5Gwsad1gBLhFLtqjaz
	 M3PNPMVO23tvmDVIA5Njq06phANZmFTZr/zxVeKhlYr9x9gvwuem4lsezD0GyBW117
	 fFVuMdvT9AhWB4xZ9SfKu40Kfr/WYh7MZDZWALqMLGJU1K2yvt8D2jWSrERCgheKRH
	 aqjIzvspp0CXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92424C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174033533359.15751.18210697724730624351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85479fa13af221676fc0f177161668bac5e4703f9180617fb86c0e877276aca9
Date: Sun, 23 Feb 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740335333
