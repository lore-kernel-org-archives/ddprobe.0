Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDEF1EDA04
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741943935; cv=none; b=fqf/+lXbAMhuB6weFZooHA/x2MT8ZF2eBkdaVM8+0GpDYw35pJCYuS7kmhbZT9+x0sLppWyB8Mw0p+4Wn+Ev9pSPbYupTQvn1hUdlrjflYmjUC9N6kIWnJq239Tr8KjiWk42B53x7owCTtCfGKHJdMmHsUa239dUTZ9z1dBLedg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741943935; c=relaxed/simple;
	bh=clm9iPKj6gPGLHXfEvWm8f+0BR3eljjzPlSrSnUDenM=;
	h=To:Subject:From:Message-Id:Date; b=BAuZlA3SwlbUcrlap6JCgCaZgLhv6pOTxt+wjPhbnCOxCJXR7WvQX31z2GsW3nTFI9Pjdnp7gRJZj3Q/b+nXcAZ3s1dwjWTnuWcZW0NOQC8RTyB9EJHPNp6tiddUBafOapZAv/X298/Lo/twMj6/6ceNjHv2/7w3FtzTUSI3mlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdlXZGHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdlXZGHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85EFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741943933;
	bh=clm9iPKj6gPGLHXfEvWm8f+0BR3eljjzPlSrSnUDenM=;
	h=To:Subject:From:Date:From;
	b=MdlXZGHa2dzN+BKp6SSY0PR8mUV6Le2OU9zxl/8qRqh7SGGFx1L2OY144U0gYVqDV
	 ZL9eWmrIhKv/n41b7UYI7YLd4Vs8r4ozkbj2xIH8VGSTCFMWozz1rXtpiZQ9PXev2M
	 Kizk/L+iSMBMWeOOIBs+Pv0U2emLCkqLPMzkgpFteaik2phlKk9wtRa+Zvvh+u63dO
	 FwJ8tOR2WHKrxO4qLFRxBKd3yf6yvaZoT2jF5egH558URyQJB6EbN2nEp/c8Ei3mrB
	 GaJV7lGo8kplwInJ9eYc23k9Z8nDilNzrhMA5HPNwel5lzH0poMdp73N4DkfeAgD+B
	 hqb/FhS/jAcuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E88C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194393360.3276.8705635859925654311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14c099918e9fb96c6de2e609b96ade1c81f81a014ad5eca34f1bdebe6844051
Date: Fri, 14 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741943933
