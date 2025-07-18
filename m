Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E51E21ADDB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752828594; cv=none; b=NXJw3/tjRhzAAa1OQTRJQmoFohg5rsWdHLvCJ0ejI/CSKhiz7v7zrAC048O7sdGLrLu416/jDzhwjc/UbndGt5OtdwGPSGYlXju2+omwJRZI4eM6bkZW1DQQhbvTPmPjhsNNlD+QLmVH5X496wnHQN/08JsnQkK+R3cfCd5hAlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752828594; c=relaxed/simple;
	bh=UVt83CxdJGHfrcjWr1+bo0qfzY50Oten7N4pTe7qk7c=;
	h=To:Subject:From:Message-Id:Date; b=NQydfvYSIRKnCPOsJezSRFLmZ1dAUPR45E88fd/Tw+GhcHMmxyxMZF6VUDrJg2ifvSEZFjFMC5u1uFWX9Ha69gl2+8Sl+tmFpMRSwqjkv7GW/YAFfCGvoDcK6zOlwdTvdb0EMotxNAD8GGm87A8qz5EakjGzoIFT1cWShaxyyRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZJgnvUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZJgnvUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752828593;
	bh=UVt83CxdJGHfrcjWr1+bo0qfzY50Oten7N4pTe7qk7c=;
	h=To:Subject:From:Date:From;
	b=hZJgnvUQ3xiXFur6XD4kCG8UOGvCdZovdJsktDC67riCP76mVCTkibhgYrJsSi3jw
	 SG5QAKAhcRzWZf39ejArltJhsOKZBVTgy0huoZKpVUcN3KrF9rZi9jGutJuOp9HhK+
	 LmTPGgFzrkVkjjX6CbGIjPf9C/dldqtCH7bilWQCXbx7o3tPu7QD13LrWLv+ZTeTc8
	 pua73wI1qSYeU98bl2AiEPO2ptDvMubNtFkYj6qbyKK8jwiHEBNQsLnbAHyZkuVW8I
	 0EDW3iz1Je8UdKBQ4WunEZdSoFKQ+yJGgSkMt0lARZzTJF+rCBM1N4FtYw0EINjenq
	 a0QK2tvt7IjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E3C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282859357.18447.4760066754896624623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6808f1383f6cb5500ad44fa3a54a59c6b2dabd8db287682c5e21481a1111a34
Date: Fri, 18 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752828593
