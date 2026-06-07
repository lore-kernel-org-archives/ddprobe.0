Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BC6213254
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780812874; cv=none; b=rpD/wFa2ilvjwNGbp4bo00VFigCHSoHRk1gX604HIq/LksSi0pI9KI60zXr5lfwod4vmEMFCmiVjK3k1UbmpATIZbsUVKX/+VzTH6VaP9o9plxNUSbc7ujGm8b9BnnH6VHFq1dzCv7J3f2eL5CBnu2xso0Uld4XE81DGBCGTdeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780812874; c=relaxed/simple;
	bh=6whpWxCUiF/vCdEYoicRGnrKq9z+I6SzHiS83tpF0y8=;
	h=To:Subject:From:Message-Id:Date; b=Pcl2Fk8+f1C/iBXjnJ0ynnWSLRB829JPZGjCFmGmoo8kD124sFU0NbElVYorLNJm7dOep901mu7IYgRog5v6wTVL+NFgW68tQd8OXmCfVVWiwiiFTzRafCjjEfOQZ9wLiw+sId94aDC/VL2tUzJiUYMQVNtDgLvJezYMUV2JTMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puFbtPhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puFbtPhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83DDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780812873;
	bh=6whpWxCUiF/vCdEYoicRGnrKq9z+I6SzHiS83tpF0y8=;
	h=To:Subject:From:Date:From;
	b=puFbtPhZgIQKZpghP5e1u3aHKT5n1vCKQS1p+F5KvgfGtz4gNbZc+Ep/doIXvgstq
	 UCEDkfU6fpEeayKak9xt+xKO12o8Av60WS+D7oCmUXSpXCz7y1OyD/Z4M3TN/B6xae
	 9vzQudb83SaTeddxa0UH85mBUl3tDoUCssYR9rTNiu6ILkJ73/luGS1cCG0mEQdKAz
	 Kp8f6WjBFfy6xrOrc2NCLMDGUtR3YhHnyLo8rLjbbokcIRvSv8wEVPPtL+CecppueO
	 bRnbqryVNK0mvl3ygZ7lfmH/Xk2333n38cIGynSsqay3o3xfhHME5hQZL9p4Z1mw6a
	 jJh+Y63Pz5X4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C7CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081287368.29202.12586352861073635536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9cb3403a6c8940e2e0b9b59e706a68f09dbebc89b256f8cbcab8bb6f800595
Date: Sun, 07 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780812873
