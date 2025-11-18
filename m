Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD45273D76
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763496715; cv=none; b=H840V7ujZWUSxguuFn8rJNMmIwx47jbubdtdKLVe22kD9FT4dnFsACNCjYSEdLMskvfFpoVQL2ZyOuzAWALjBrfC6mfZB5GI90HnSMJ1EgIZnUKKP4fQ4BW5yfZPPCizdZ3mtWVxVgBkQBjcj5kexdlz1d+9S68JXCBWRLf8Uc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763496715; c=relaxed/simple;
	bh=5FbOUa0VxqtQ15tnSE3/9hYvIXbvRL2PM2yLHUByMBo=;
	h=To:Subject:From:Message-Id:Date; b=iQ7gIPg5fcIanBjeDyHtNcSQIQuuEXyhPalV7qBpKIjlmOYazib4HbDysuaMx69jD6/JHLiEdJ0kbN3Srruu+mau2C9Nwd32wWw3w7CikxVvTPY/RMrhkY0lQUFUBoKUVrlBxMMNFkoOmBfZgUB+1BPrPIGdNkZJKQ6aR/U1iMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDCPMDj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDCPMDj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA442C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763496714;
	bh=5FbOUa0VxqtQ15tnSE3/9hYvIXbvRL2PM2yLHUByMBo=;
	h=To:Subject:From:Date:From;
	b=TDCPMDj+8eSut2zK0ZIx6gFc4vfSLplQBaithhzutIVGaS2xIQh5HgvJdlPaFrl3y
	 eopXjXSuH+UyVBUbxxXktkY9LflYVQe1ohBj/gf9lvYR9FVUDfGy01KIKCBbEwMrRW
	 YHhwlm8DRd/WxFL609+mWhYg3WTjoyd16Nwe7bJ4jgrLCJgwHc1M8k4yZEcL6lay1Q
	 nGsbt1y8vqBeuHj6SAIFELqw330xM9gn4dQ+t/6FbYqZe1ODFlkrAIcQBhaIaeHI9y
	 +i6maWq4/C/7mqA4Y33Aq/PQuFxqqkrIjzHk0zVT5gjfYDQcijke6Pk9DZzxUcqgh/
	 iy1x+1O/cEBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACDCEE34D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349671358.5571.9893476818133129026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31fb4c38fca33fbdfe00f71f1f6156b4bd144cab318a8ee369d97dd1b0c5372
Date: Tue, 18 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763496713
