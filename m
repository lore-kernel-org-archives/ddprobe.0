Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0848A23D2A1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756139994; cv=none; b=SUnn0vdpshV/aYCZHB9WvOm/ScS1UGkJHjVADGnN/JDA572y2hpkjlK8WyG4uJc12cGf3TcFP2RHNkAuFngwJAWMhssxmK0SPy0J0nBKXLTWtFqUsE+4LDTpFEMXVf6x2kaIKkAi4R+M1vUzkOb8bF4i98mL4bTs4yRBJWclW8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756139994; c=relaxed/simple;
	bh=aWoKY1Yf27U9p9Ap3Iqm+jlAIPA3eENLRyBHA4JSSjc=;
	h=To:Subject:From:Message-Id:Date; b=tiDggW9X/VJIfXRhEbu6dGPIMv8eCKdJHp/AVvH4+2a3Mt4+1LAfFIkiLZXyhq0iG8OSB4ar/eQqazwadltzq4fGfg1B/ab0mJZ2D2SPVxtKh3kbWfRjU0IFutdzusaMdfsugBVL8lJlTeJUDDBXFFVriBATgnEyMQW+W5y5l3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZyiEMln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZyiEMln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE42C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756139993;
	bh=aWoKY1Yf27U9p9Ap3Iqm+jlAIPA3eENLRyBHA4JSSjc=;
	h=To:Subject:From:Date:From;
	b=XZyiEMln8zE1UIn7ypOHHeew18BxNRk+ajK0UctyECWEF1JxxLIrjNMyQDqc5KBfb
	 NnYxTQyjE0V1ypt/Ay3BJW/x2ksFQ3/75WAWeWO/b6D6KQ0h3TTDqgkigzTsTuLqYu
	 5OO2plbAXb4swPmZfGEbSSrx5J/2G35A+HZzNmeLGD4zeH6sQ0uaNbcNkKPi+8Vpf2
	 kldKh6gMhcm2LPdARD8QZ4InW5mzoSuGhFjJTBOoze2g4+apSrX1178OgmE+5pR5Je
	 1oRvZyV/1t52f1xtCHNyBG3kF0MNxpuUT60ZfT73+0vubjW6bOSLTZ32fkP87P8Jq1
	 wS3HTsIb3ScAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90742CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613999358.20100.15826634819974498747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459840d3d57f56187294bcd2c76678623e8bb483511decef06da58d329fd482f
Date: Mon, 25 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756139993
