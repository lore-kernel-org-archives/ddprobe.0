Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287D8231CA0
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728078354; cv=none; b=OLW2k3/S3kGBH4rDgNhEYMh553GoDngWXfQn+HnfqYNitYaKuF1C6uBfh9A6rpyws6UpirJAkzUQqewaXYaQ5jN/xSACx0Pw6pVlw9sUcHx8KR0wDeY/45/3evHe9koGF2Ev6vhY2cNAdf6fmKljzc3QnILFFovqq4DrCy4u8/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728078354; c=relaxed/simple;
	bh=rmUqvMXm8kaxlv6ZzVesrp+00H0it/7u0FXNmAKJuDo=;
	h=To:Subject:From:Message-Id:Date; b=gxs6/ieAcGBZoobsF4WoU3I3ViJg1nQkX9Ozta6n3SvEqN4VIjpxIsikNtzcfuTgKVAdE0dy2pEmPH56ezPGwMNd0aoPzTxeBtY1oYNjY/EYC7oVRdIg0NKObUW/NnRFEpyPj22qYQXowD45SSTpXSkN7XEr+7KrRs/uG+kZjJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHuUO0mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHuUO0mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD213C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728078353;
	bh=rmUqvMXm8kaxlv6ZzVesrp+00H0it/7u0FXNmAKJuDo=;
	h=To:Subject:From:Date:From;
	b=CHuUO0mzQH7D5oJuoolqbdlNx8uDmXOzc9kCM+FK3ODnYWYM1IB8ti1lpuX6UlHj+
	 auXr9vyDNEiEv2CaoW6jrQbHpIou73RTYvkydRBTm3oFi0R32YxgFDbAOjjcAgKxYJ
	 s5nqWtbfK5Qt5fGgtAGlmHaFSsUO/MTXFAhd6a6GWrGwbKfbe2d2OIRA6259rLlw5F
	 5uw1h2o4Cy0AJe85cMwQT2sp+q30YWTtshP9oTQQGgAVY7PHsC9JMjVN0gy/hkSEXI
	 YOJ43zlUvZ25qw8Qqu1HzSrPHQ6ktYQSF9c8kBJtQZbkjS1DUUgZekc+0m9SXLpiXJ
	 LMaiJkWmiwFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F6CF885B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807835361.17164.7863441039904268388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e742d719858b10fb7c0625bcc4b492fcff05d19ec3149e6d5b9e50b81561633c
Date: Fri, 04 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728078353
