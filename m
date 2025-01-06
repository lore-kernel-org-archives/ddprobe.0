Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7FD469D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736129154; cv=none; b=HGk5Rj/1mCOGYD2nySRspMQ1/df+ka05/wsdOzmOPkv8vQNE2icU70rO77GpngH4PMrfXprjmwexFOSAg010UtGCK9/JjyfK2sj1egfhIOJOnUME5bjanH7dkg1rOe3B44kDYsizi+vIhRxgbvxYRkoNNVPYSjh2YfA3r6yFCXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736129154; c=relaxed/simple;
	bh=7eGAlvofJW2iVJNNnl6VV4WuVv5iQn2CYLEGQPylP+0=;
	h=To:Subject:From:Message-Id:Date; b=X4Fc5gWU4UcmFECSTc9NboDOgHP+/otLmq4DJA2uELaj1tPaLKUbiF5zOlpUQx/Hy1Kw6z2zj9rYHWAAmupRM5F16w1YSD7/3/KZJiVJc2mkOBOy0MyQ8ZvcQtHtukvmh7/LBLYHNIHAzOe2aVxia4w/UP5ssmSBfWQHwR1X26s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuHQHxOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuHQHxOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9296C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736129153;
	bh=7eGAlvofJW2iVJNNnl6VV4WuVv5iQn2CYLEGQPylP+0=;
	h=To:Subject:From:Date:From;
	b=ZuHQHxOEOBVKbhJLrDmpPZvrmmgP94/w4gkwMlbInTNKQzkkc1JXZGJL934Lkfu7P
	 v7Qa8/WCLauJeC5DJ5Wn3/e4DJq3LqxrcG/iKuD9A09NNUV6/m9TUoFJFgwGqhbMdC
	 0CMAGpRWwwU+JtQFA8F/3Fr+dPrPDUtXrS4KgWRZ7V7uVvXwCtAVTof4dTAQMAfs66
	 rjwzCC6XWCmiMESKtbSn2Vpy/mQr4cMlTSZD9TizC104MrmsKyaq1/Z/XXo43x4BqM
	 0K1EBPNirVbkg2UStehGDUA0uUK1O6E5vg5XrO697q2etpwRaBRYCM+98zaLr5eAKY
	 JMYOVhudS3RRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93895E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612915359.4472.1697319039955691864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a41c70d09b9a9657316ca24609de073d97abe813a1d91c5221648502ee36c08
Date: Mon, 06 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736129153
