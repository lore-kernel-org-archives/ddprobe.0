Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D309161
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720569983; cv=none; b=HrmQHW+OEnU6jQO8CKDcvdfWpDKiFpinGK50r/09dRhmQPG7WuI1bNAiSvC46JavQ/Dnn+GyLR5bTinFLxTgoAM/22r90ttS6SiD9ZA7rhs2LiomlOxmM6L4aak77+e5prEUE4Yi0W8Xi+b4WmCrmgJkMgeK3pskju0hv51r918=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720569983; c=relaxed/simple;
	bh=/QdN4f7cX+kHolAZK6xvxWxXIZO4A/qfuT358HXA8Ys=;
	h=To:Subject:From:Message-Id:Date; b=oF/x6Xvn0A+JpmK1NV2SvL34nUKswz+9iMLLB/XpCiOH4nImv9vOP1ebCDoMRnq6FDsXX0DRtpBLfNVJqZJlpB+Uu8e3hSU0fsoRxH6RYbngs4kZdHUos8f8b8MhEdyRs0Toy2FVSd4PyT33E2jVoPwUL90NbLOzBCbgp7p4P9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAfwMCQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAfwMCQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEEFC3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720569982;
	bh=/QdN4f7cX+kHolAZK6xvxWxXIZO4A/qfuT358HXA8Ys=;
	h=To:Subject:From:Date:From;
	b=HAfwMCQunKNcnTnZ1Eb0LM79EUi+w9j3VNGOTTGC+ihJOPocJ7pAUvnC3nD4t0Tgx
	 al4ZtQv/evyC9fq4yTiQCvGdZnv2eHk0vZ1V428RgPE6S5A0FFuMZKWCIj1KgKuKzX
	 SmkMXnIjYcDVXmnw52r5tL9nlNOCq/45j+Q6c8q/qtftJwV34R7ZDof/U8HV8E7DOz
	 o6OrUlSOTrn4J+dqS5KKciP206bm/ASGxAy6ghyImhr5ZAMbajHeRo1vJTaMYYRFG9
	 +S8eQtUUEquIxz6zHtwJ6Y55X+Wr9yhxrCmp4czsm4M312kRl+SfzlxC4jbsCdJeQx
	 CW0HLWLwlnRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8ECFC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056998281.14187.11535281370987016175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff796f00044061a9fbd8f51dd861ee091e4c00113248d7d4329b13a6443e968
Date: Wed, 10 Jul 2024 00:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720569982
