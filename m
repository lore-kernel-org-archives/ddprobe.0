Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FF2275B03
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778893834; cv=none; b=ZXPhdpQGgtr2hDl6ilqB/fZx6tVhVicrHH20uJa4vUoSOsx0rYIIWaZ/uZC4Jlw/rZjTIufXHiq3Oy4IeknaJOkp/WKletJprguvFljI2pFzbx0KYtKm6yA/A90TjKm6Zi6d1RVtruy7lSq02/xRQDF11pCgIejnFEkJ3zZd1NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778893834; c=relaxed/simple;
	bh=vHBv4+eLJgAqUrJiFd6+iT54HhP+JRKiglEh0MYZkq0=;
	h=To:Subject:From:Message-Id:Date; b=JSDKMYkfltJBLEnbmiUr6DjNJ4lVMuQiq5hwjDiUZm3wdup6UmEQpA4MEZAWqpl1ITna+KZkHh/U/m/zPDBrfKxwUBDOPj1uX4YUSIqeqd4D+RXtl4Tw7rrvwVJZGHzY6W26uf5Z1ZulSmvrm6IpzvEhDNcc2FLFGbM4NmAmKxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O09ZWHW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O09ZWHW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCA0C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778893833;
	bh=vHBv4+eLJgAqUrJiFd6+iT54HhP+JRKiglEh0MYZkq0=;
	h=To:Subject:From:Date:From;
	b=O09ZWHW63keiOW3TSx8WvGauMyC8HfRoI+O/+pOnUsYggJpqAjED1O+/NUebSdu7B
	 i39gUk715KGm8rO2H4RejPBhHMEf/5yHYEmTpG/p/V+yCEGBwAmB19+jYzf1D2eSPH
	 rVtSFATsB8zdTVFgsSXZB9MiQC4GpYbEynFpqFHSEus+HAQp18OYYVXYJ2lnG1Pvw5
	 kWDmRvBz3bMIKZRHIY8+bQc6TLh6bYMPCfVavV19ry81pDfxMMcAjvRGWiR1MXCiKC
	 /g0e68NVOfHvLbUXeL5/x8OWuFeJ+wH5Ybplk68kBAsLzxum+CpSVgliN0rwTPOWDt
	 uDTmJ0cgA15dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDE7CD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889383368.21317.4928379971256368039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f9542919d16a748acc8c752d7165477215cfda871ce2b083b1a7c3a371ff7b
Date: Sat, 16 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778893833
