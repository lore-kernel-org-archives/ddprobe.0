Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B2C1891A9
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787403634; cv=none; b=rZRq4gLKWPvLQd5K+eTBlRprvrO7RNKubSBpuJXAfVDn4h9T13iCQI7b8Z+o/jcOw2Y8ngExWvoftz8+5ymVcVE1ttb/gFGfq8hx7C3uhD9TxlsfSkSFEPOilg/jYio+ZiQJezarxX+UD7wRnS8RtHfGScPqd8YPHm1eTtdOyOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787403634; c=relaxed/simple;
	bh=z3YUcw4gdSAJgSZfTRanfHvCTjaSRW9QIqayJHZgweU=;
	h=To:Subject:From:Message-Id:Date; b=uu1uzfuuNJAFfE1AkKr4UgLuW7e0Nf81JMiKgds2+nEot7sNCNpmr8Y3QoU65RgCS3zR1kNfV3UhL/mfel4TBSvAt5xE+I6rsaELn2loq+70sCqZj2lXejlaz5Kv3R0MM6tgnAUZ7f0reRm5gdh9K2O/U8u7E5Tc/tPnXf61L1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKwbORfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKwbORfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47AFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787403633;
	bh=z3YUcw4gdSAJgSZfTRanfHvCTjaSRW9QIqayJHZgweU=;
	h=To:Subject:From:Date:From;
	b=JKwbORfeKWy+4kOuYccNAq2pRUemiFv8yGZe9R4DwOFr+nITdaYewRI/aQmWJtY4v
	 1RbOOgxhIpoKZOPmzVXLvLzXVgT/Q0VOCdeo8wRF1xmbLBI9JTh2OovY1VyoQUgIlf
	 HjsyuXg23gLG2xp4Dtl4gaNF/19VFQxBehGoKL+mDU7WpjvpYWd6qXbgI+1yi/0P5B
	 9v7LuyPScBw/qmwpAuMHwchBCqsYDBFZdA+nXGdKr1gS+jE9nhh0LLH+WwRBJtwNSE
	 6WVV3IogcJ9emYhbv3aU32xVQUlE8I2EoUWmDFzn+22hwbZY1J30kIP9XuhRDraygh
	 dqT8TI3+aXvVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D7CC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740363368.1183.9810608647216776783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4216396fbc1a8971af63767c7cba2cbe0304ac92f5fb1453ab497f5b534bbc5
Date: Sat, 22 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787403633
