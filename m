Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D37A46444
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727682354; cv=none; b=aW5KxEfJDJ7z93ZgCcAvP3rfiWD3qllb3tiEC6n4nbE9VINSPPXIUeXLihBcsHpN/NFUqzH66B01lP3L8imzYHy5uoZF9tw654LsU91ivqduAI8TxbSPYX3hAC9hkyeCTVI3m51K9Ja6tb+OoR5PR/wZL17WR2tYAlmkqsjvOOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727682354; c=relaxed/simple;
	bh=Z9mMZdYn9IGN9ux2Uk3e6CetqfM7658UDGR6GGC6quU=;
	h=To:Subject:From:Message-Id:Date; b=F50oOP2s9DjmFBUCEfnzOOGCfCFTTeowf9YWJJjMvUMv4q4R+oLHq36k8V4BY5yAHoJaUErtOsL5SI3YXRsqvUIac9hTHCwqdpSFqrF0YRADTjXN02R6y/0/pxM6QPkn49RNW+7Ams7952O1Fr8XF9atT1/rYg4nLFlWJTzkVg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBYrhk+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBYrhk+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A06C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727682353;
	bh=Z9mMZdYn9IGN9ux2Uk3e6CetqfM7658UDGR6GGC6quU=;
	h=To:Subject:From:Date:From;
	b=eBYrhk+ksn0MqI1PPiftRP1hLA9RdR0+Gx9SDLjJS03O3Rztan0JpG+Yk1lGrLbp1
	 CI6zoERNog59Nw58Uj8XguLb+P1VaIffys17k7zkibPVU2pKfLFdTcrkaOdyIndWlE
	 EKYcB4h2ARIZ/3vaTIWN7ACl/bG7FCZasYsMYqXY+CsAn4E/q1EKBGgJdjLhIiXAtK
	 3Z1cym5JThUzXDllTAQPPhgT4SLJtO/6rLwNN7vO5QWQyX3QeHa5g3rqHGc8AG+L6M
	 UtWeaUttux6ImZq5dnH162xggAHDptpPSsOWK4D7Mf8b8AcDVLCL9tEtqnqnBGfaXS
	 +xcyqiU1OQDkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D8CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768235360.17156.2856816254685266825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a97000bea971a2cd2fb73496217911dae7c6bfc78c0940e763e0a0814faca1
Date: Mon, 30 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727682353
