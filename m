Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A541AD9E2
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725865553; cv=none; b=EAwQS0TpBPEtpjRt3wSI4OfRKSZiZL1a+kmVpI/oUnehx52XrABiCvZttpLGF81LZW5mh0bTv6xUF5ju1dBVkQnqRLgtOV6nJOO8MhOvGsRhRAb6L0cRhb/rycv50kZshl/8czpuDww9wJQKIxT9sUwtZ6VZ1psaISYukvYhErM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725865553; c=relaxed/simple;
	bh=SPqxBKrVhFUHeJ+iV0tnfd9bpmfKEftiFo0zy+vUrVI=;
	h=To:Subject:From:Message-Id:Date; b=bmpjEQDx68LD6qoeKrfVOQzzPf4l9Z80cPFkzK4eYPDJM2YBnV0VBEASXKSeKMpjsYEV0FE0A/zBgiMLCRZVlWRTtN9V2K0ZF4R7K+p+DhPbst9c4OIKqXngdFUGAzez4N2yh2ibqTLpk3DcDrZ4ejsexbSrvs5UE4K7Y90yy8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0H57Y0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0H57Y0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D383C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725865553;
	bh=SPqxBKrVhFUHeJ+iV0tnfd9bpmfKEftiFo0zy+vUrVI=;
	h=To:Subject:From:Date:From;
	b=A0H57Y0BoIElkNLkPrqTwmknIvpNVuKOZiqkYqDaK6nQWyTjYPoZERjN8SACZkSc7
	 UPS/6Qs1QMGy30UP+C2nqdTAHIV6qMDi3YJk5PPAn7M/ylrv/OCGEG9zrYcF/m0Xpr
	 3F6JZANFbSUdtynfg/ZBu9Df+NDJtWNQ9PfkLiAAR1SX2R7MnUx2XLDPRUljoJ/Yzd
	 +OlMXZlcf8mbEp0CsMJJgIjm5/3yYurdF9wbzWLgcD/4ExpY9rGEFIedD8tvuzrrIo
	 E90ETPmzGSKNlKyJKVPNcqGJHpH49UfDrDHhJStHqQ8e+ZHKFVZery0ujW88HFWneQ
	 FVxhoPP7Zv42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB68CD4F4C
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172586555357.6568.5041934723806544683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7fd3a7bdb6d91fee700e24313563f82b27155c3c6e41ea510c23dbdd7ec9e7
Date: Mon, 09 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725865553
