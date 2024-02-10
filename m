Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075143FF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707537497; cv=none; b=qyZOmuEPQBs+MRyVvo+FuzF4LJQkz4cvc04dEqYI5eZGA8Wdwli+90nbyfIXKejfkUS8VV1R87p99V/idwii4aoIPtYQm9hCHWyePMoMoaT61Dll95VrT5SNOnEWg2x45RfTDRebiSpCZYqyOwjWwhTnwTCaNLVS9ub7eIHW7ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707537497; c=relaxed/simple;
	bh=5H7aypoWJcPDsMeLNwg2Jndb0+D8Bvxf5dJLOlCcm0w=;
	h=To:Subject:From:Message-Id:Date; b=WsFIIDa4q7EHgRTwqv3xonyKFYjNyZy8KoDCdIMzefKIRgt1OV71pQs0ue2OCViWykL1ieEvvETB/D6QMMcUcpBwJqNU1j3R+wqAi0XRgnphbU0SOwoIESGr0zBVBMZJwLSbhFyMRmBPnqBl+rsVfQ8r4z/2iitCGTp+Ai7kK0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjhEOFHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjhEOFHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE2EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707537496;
	bh=5H7aypoWJcPDsMeLNwg2Jndb0+D8Bvxf5dJLOlCcm0w=;
	h=To:Subject:From:Date:From;
	b=jjhEOFHQxTksEql2DiSfm8EiP+R4CB3nU3pN5CSuFtDZUrpaDJxCOjnZKVf3JAx44
	 gMBu66wapVSm1QBAcAxaSB4EctJ3pUNH0HJnaOuoga0mtbEKh39EITzr0Qhx5iESim
	 bZazOozfzTD093KDDMDnatQR/8QrTpwP+k8XFtTtBEb9W/o72rCrZlqSU1QkpgBjMU
	 p4XgnybH8MZBw2ilsWiIwHdZR24xrQqYCipKgXhxpPlWl51yyVrjQEQgQI5AR026/5
	 hWyzGlL/r/ZYg0IYEeZtF72ZQgOoJuSLDuFUnJer4gI2tnYB07D2gNztbl4pdaHQG/
	 /GBpDjIVVdIJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6495AC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170753749640.2843.6413907933607099250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd8913379a36e706b68a371a9187eff9f6976690b88a6878df3e28598c5d619
Date: Sat, 10 Feb 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707537496
