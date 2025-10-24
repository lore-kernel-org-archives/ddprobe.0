Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1751124E4BD
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761327594; cv=none; b=hvaJC3IMDdrhaDW95dMPYW1moyNTEEhvq0qtxr/VSb0MIt4Bv5jf7RCTEgkogApjYA5TjiCLlDyCjqFVHhm4Wgd9jsTUF0sC5k0lcW49cxLKjAwm2NEWrkM0rMmQum3aoQugsg4UraRSqo3akLv/OYfsS0UsLkDP1Ii/HGIWgMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761327594; c=relaxed/simple;
	bh=ACOVEYeD09fZzX1w2izSGEk/EA0UV5N6Xw1qzABMuwg=;
	h=To:Subject:From:Message-Id:Date; b=RcDcj5ws7QfrynbcYJJ87HPf9hvIeIYzTY2/JrLFm24o3h5z35nbUoyV/9Ziyt1QfSmuNx4ziCTyvGRkaSFy+jpjNGT9Ta0xQdk+Q6tvIX4tKdc0B2zcrJCZkWpfaw/6z9wRtinE60FW6iMQM4N9ac8aeYPXb6+4k3WKNGyryWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2xPrZX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2xPrZX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761327593;
	bh=ACOVEYeD09fZzX1w2izSGEk/EA0UV5N6Xw1qzABMuwg=;
	h=To:Subject:From:Date:From;
	b=k2xPrZX/Dx+gsG7CUt6pG2EtEVfLmSzUSgfKUMoZw9+yHEKoYWpGUMJoROm52x4I0
	 cWcYEWn82avebUP/f7a+RLHTB3EeDa3ahXwbRX/7cZ1N80poSljJ03BPUdGk+R+8Gd
	 B5w5mKp/i4ujpQDEHZHvQlwe3Ivg/4llyCXyd5nNWfHOHxBwy+NwHPihgPCZENz3ax
	 4ITOVKFr4EV7Gg5pYZEAuLZsedoJ/+X9ESDZLItLM3KteBveRu1k1U/NPzTriz15iQ
	 QPNXaPd3HsLHorJr48nqpFKwl9xE+QnGMgFk0XLD+JmvKV5DCaetn4H7PQEkam0/Uj
	 Mmiv7VkSlSTJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA13CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132759358.11303.5397640193321764733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59483431748e0228e550204457c3874892c29033ddc2bef144c80b65a9996022
Date: Fri, 24 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761327593
