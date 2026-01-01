Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2549F2E7BCA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767284034; cv=none; b=X6hFQI6+Z3oNth7Gq/hPjrCNWbkQXov4Ru6aTtZgCdvV9yJvR12GZwhdIq5WX7aVEh3r4cJEhosv17pUfSpsCdFBev2H1O9UZtNDIxsoPz7mjj+2HImMnicimIuHR/6RGwd+UH3A62eLk9aVVd+6CcBIgR79q9T/vVpl9eys+m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767284034; c=relaxed/simple;
	bh=5kyuscvWC6JVgfI4l7Tv77oGOVsB71ZebcRfF/MC9rI=;
	h=To:Subject:From:Message-Id:Date; b=WhGPi1G5sSTYKTbVjyXVK1R6Vjz3ffGo2XAvy1b2zbbsZ5k/WHKQdkG1GneTpJ6Z78AEo3QAdORVi8CUMpZYJRf5XhNuVFK/JCfJ9f+ayXySlMrYd/8oKYRr/5NJcYM8PkZ6ZLvcEzy46aUCLxHGS3GCVPdEhVRYkQAWhoSYlTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlGN8Jss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlGN8Jss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767284033;
	bh=5kyuscvWC6JVgfI4l7Tv77oGOVsB71ZebcRfF/MC9rI=;
	h=To:Subject:From:Date:From;
	b=SlGN8Jss/aj8hUSxve9z9xH/A4w2VhrE+bfJPXEu9jJa4kHrMqI4MnFC/A4scFUa8
	 B3j+P7g1527Ls+RosdD+G7iElIx01Ceh591bcxK0ojefi1I38t52tHDyUx3Ox1OnWP
	 mTSn2hrEDE15qfz+Xlgs86BozliEMkxRnujN2pF8UIoiuNeYJoRWuTk4rjAi7L/lvd
	 LRg4KgoCtbpgLf4l3DP5piyz9F0RV2F2BiGx/q5POzAC8yMvQLnOsMQg8jnNFUWfjL
	 TWMQSP1Ydao4wXqExRtLlrn5cxPvN7u15BVKCqS+AGpKI/hkT+c9htlr5jmWEVmIkq
	 O8kowI+pArUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F134EED60F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728403357.9323.2491368101115647491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79bc3c2d716c78648b5a0b452673e55716379e6c6ad3a778010031c8ab9b962
Date: Thu, 01 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767284033
