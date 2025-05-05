Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F714B96E
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746446994; cv=none; b=ZCiAXLMdbv2r/MmojYKB7NN58PU5c4kkhrcLrPaPXZFBCKK+4KosP7d8QhwnaWHu0qz7bRyr/Gs0zFtJaq66sDrWxW16myYpQSe96q/EE74Q3Mh9dZ7/ClSSo6kncx8alpc0QVbVV5y6JWKwJadLO4t69rMGD+3u86jMdiS9+bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746446994; c=relaxed/simple;
	bh=TI+gpYDUJcdCbUSy2So/tNbFxVMPE+Bj2oHcHAf0Reo=;
	h=To:Subject:From:Message-Id:Date; b=Z76Wg/XY/vYcxft5f/y7ocWqnELG8sfvVqOF0hk6rrRIxnTg8jNDGhZG3nMthJ4J/AdMBJ7reR0FCE+9CIJeEFGjuTUJq/tm4yk4Y0eje6r4wOq4NrqQ2BWvCeMaY0zLete9KwNU6NoYRSjgg4TJc5R9ZySZixUd2HlQuPFDvqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdt7y8h3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdt7y8h3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4BFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746446993;
	bh=TI+gpYDUJcdCbUSy2So/tNbFxVMPE+Bj2oHcHAf0Reo=;
	h=To:Subject:From:Date:From;
	b=bdt7y8h3s7GRqbOT9RbfNOOMa9xIJerCgnakG1edePgxNP9yjuHVlaYWQEctpavc7
	 Bu6LYTpackctpeysbi+dH3PJAXw2/gPTQp9ZnZGYrPjGMMYyW8w//vYGQrxYhH08/r
	 H/9mjI8/ELQMa/PMGLHWh2cO8TMu09TC/7j8zl5oHffO3IWN+BRIoC20tpGdRBHd6y
	 pOF3MfUiknNLPR+DvxqCCIebMMPYtA4fCcFq5gw69oEvfeccn6urvNGDki89cSpwxx
	 AS9tHAS+k1rsBYvYeJbdN5lb/F0eQUYr9C3ZKS7b3AnmQJqmxo8WF0Gg2oylpHun9N
	 CREUf5tgzletw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D988C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644699357.8119.6665540471877818314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2716cf6b2d2108c662d9efb581b9dd766b5d21ce8161aa6f72137076671509d2
Date: Mon, 05 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746446993
