Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E82B3E2ABA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782408454; cv=none; b=YN9S2ww2tF/pnYzKEvw7RyTm/XfVFWU0OWvuejTaR15Y6wF5Uwd31TvcN6Z8dhj7UDc/4g8/PxNrdRYFzaZ2qIwW4eqkPu+wVwMCaEkxNkyLpfIb2UUZDomPwUddx+xb38xaXKfjlSmZj8InJPNQi9jdNML0l/DOfi2wse2qKh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782408454; c=relaxed/simple;
	bh=0k6MUHlcp+aBrLRIzsOcwxno/ksx3gV1845RpHaQ/fM=;
	h=To:Subject:From:Message-Id:Date; b=Gb2qoNZAMGMAOayH08U6sBZ+kFbKwVDZL78ShMV3R3RwTTIq4Cu2dgfEsHeorFrxksLiHmhWTkcDhkfXMVdjrGBRLsf0XCNs0/T5BDf9owlxfF9e0p2DGiLbvihzww7QG+i27F1B7qpP9zHMiBf0uEHORdzgdIKFoR1eKI558Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crQYlx6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crQYlx6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78FCC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782408453;
	bh=0k6MUHlcp+aBrLRIzsOcwxno/ksx3gV1845RpHaQ/fM=;
	h=To:Subject:From:Date:From;
	b=crQYlx6B6/U6aZo23TikjQ/q74E33IggbwsXMxKkFTFq8eEnwMBHPnajV5MQtH+E3
	 ts26Y5BtUQCKiD5bNxuX13YueYjWfsVUuhS4OyRBhR5vgVmHjVh8+xyskTqTC6j2XM
	 BpyoRjOB81SyKmHHVOwb6A057Ys66mqsnc8Q4aa0ZJXC9gP1yZk5JfPOUGkHynAci6
	 /6qMzN3tKfByQpBVPiTUtX1kJlmI4QKx9yq0eTJjkLbJc57HSCXUCP41QbhMCYKKr+
	 RJpkU3Ix8pTwL90rDEKMye6LbxKLbuVrGT6c8BFOHl94P3mP1pfBkcIPiHc5KruazH
	 kwT4t175HA9sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B882FCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240845371.20717.11975515311145097365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807e2793e1fff4915fa9e8ab659c83d724b68a93f87bad0dd94db3846e2bca1f
Date: Thu, 25 Jun 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782408453
