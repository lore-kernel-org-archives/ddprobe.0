Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2FE1C6FFE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750655994; cv=none; b=OjjJFIIQ3tRL9UUdoKQ9sCIMXhUMA9epUdhrZ4A2xMZcWl7pRnc2gn3K0QJazOG2uRpX9R+8+v6fxF4Xfl2xtr8ORD60faAcrbtdeFTfKBgeNU1kZqxRGv566i8Dq36jGjxvCYCWLLbQSZpXsEmbB/oKRS4rAZIKJ9ctJDxEMUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750655994; c=relaxed/simple;
	bh=Y8SM4PPTjNGwdoVoiKQJg94Z3zVU4hiuINbAftsU8Ps=;
	h=To:Subject:From:Message-Id:Date; b=WYEEq00FfYJ3Yu7fg189jIoeAxZk5p4aW4YBmj6JWw6qeDsLexKLPUG6x6monPThjc0128WQ3bTvKRfhehsE7A7YijXFTNgH8sIwPLEw5a4oUyXOioAmBwF29DpioMjeBTMwvdWpwfmOfAcnBtdOrufJnZehWa5d2amLMOoFagU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+YSR8Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+YSR8Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750655993;
	bh=Y8SM4PPTjNGwdoVoiKQJg94Z3zVU4hiuINbAftsU8Ps=;
	h=To:Subject:From:Date:From;
	b=J+YSR8OdJN/2SEV/GSeYtitMm72TCPEkokZjp0UfbantJjFZ57jsELSY6YvBYamM/
	 /CXa6GB/egBke5070BqXyQHQ84v2DJ8WeT/i9M9IKWsEvWUuYvZ/E7GIjBBmUzNPLD
	 1pBbSvGUTctnBONQ/DBNz1EO/eVN47Aa0X0lZo6jkmH6vzjvVVISe0e6ATUh6BWDBs
	 lIQw7QdVsJ/oRZ8baxJQT28Bq5qKaD0hvd+jCCEgfrrc60MlgIeQrqInLL2qFWYjj7
	 ZA9EZ//njlCvhnHxy1Fvd7BjrrLMpubbu3sr4MDIyJrD47pv42IUSlVRi5rhcGAO31
	 WFfG6gJt6Cyjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93567C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065599359.9193.8490224456384441711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdf49e05904e9c72d29b3307b4429610d6a4f901eea5d1e2cec91c1baa6cca8
Date: Mon, 23 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750655993
