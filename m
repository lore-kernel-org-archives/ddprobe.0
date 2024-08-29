Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C224A18
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724899554; cv=none; b=Yh/M0SpmVlWAZ0fZj3/L68++NG4OCEKfDC7SDZHqCp6B6MUoofVCar5H3kMVrTf5v+I2rdaY/IWsFQB922OK+ezS4ZP1q9nPuRy07JTihBI/MG6LiSCMc9fxn8ItWBPtItBpCvohRI7W64UfVsLjS3tOlQSIGruT6wDUG7g7DYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724899554; c=relaxed/simple;
	bh=1p22YSV41a5OB3pBijqge34MjofzARNEP0sUt9TELf8=;
	h=To:Subject:From:Message-Id:Date; b=Ew/d3ohpUgmX6OgQUFf5f4BOcisl+5bg5Gnn8xxWZQut5SIwRw/D9xwQcqp2sJMrbOAtRh8WdS33lIejjcogZNhuH2it50OtkvE+mJYNLckFcEBEaZjFarTUNQg4GFqKqjCNTAQECStZw+zKVGyaqLwPchGPfqjjuRIQBsSHd0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKzjp77l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKzjp77l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEECFC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724899553;
	bh=1p22YSV41a5OB3pBijqge34MjofzARNEP0sUt9TELf8=;
	h=To:Subject:From:Date:From;
	b=KKzjp77l7xs0k0it/nJu/hakzItocJ/8ArAwX1Rtbs0f6GSxX69yd5g7YQM8syoDY
	 FXcYomr0nm16VVUS+E0n03gCrSzUDA5yzgiC7LJIra2/DDYdOzqSKsidU4FUC2qDi1
	 vz8ZNpV0IhVP2XTvuJhBV7YC2dDhlz1Dma/LeXp83A1IxUqzStpGbohE1SRmQiqBaA
	 I1P5P4KMw4wBWAB9nOsXsBRpnsOtIfZlREWqvdCpB16EqkrFt6kSzpRQSCdWpc/9hi
	 B0bcxQgxYkjfgueCJv4Z7U0APW27rWIbVyHixw3tpDWTf4yzCJJUkpX97WmcU4zOXi
	 qMexGbf9GPX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDB6C54FC6
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489955360.740.4350841158635559486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 779836d9cbc426440740afdb41d8a8bab16d36bdc256549fdcb8e5d82a70af6a
Date: Thu, 29 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724899553
