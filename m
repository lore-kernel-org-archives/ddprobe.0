Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C527464
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750394394; cv=none; b=l6o+Z2N3Gma+KmvqXE47/gLi86csXHYISR6CM+AObPnlw2Xog3w1AxIzTi2t9NJEGW5dWpJbaDaTxwTiTYalGGZ2XSDeQ3dbh0CopDOjffCQmCrOLCYrz5DihfiZBuwf+bjs1ogA04wg7ieEECwZuLMQmiOeb9T97RbHxRcVFrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750394394; c=relaxed/simple;
	bh=2ujv1sGuC4jhyWLPvgB3iock3U9HxsbCJvlTRR1V+Dg=;
	h=To:Subject:From:Message-Id:Date; b=Pvwsq5yakC3eFmASCjZQj5P7UJa1GUqySUIRNCHA0/rENpHQSfPkXr8gIZE4Pjc83IbW938/QPPJXNQ7jQjBJyD+mXiJvFCbN1nBvEDi0MBR8TSGYwno79qRfEjjctKlPEm3NBybecIO2IWmK18aarpaN0x3u1FmShpQQYb3zTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBb01JKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBb01JKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750394393;
	bh=2ujv1sGuC4jhyWLPvgB3iock3U9HxsbCJvlTRR1V+Dg=;
	h=To:Subject:From:Date:From;
	b=FBb01JKXIghKgqLGhWKRj5cbLinuv0QwRtX0nsiEWY4cADaDXSjXOOuVOYUPJCFGG
	 3aFiVzK19AyFQLU3r4SnGXgYCqfnraw2MqVjOV/Q+WU8KEKXm1dDjUEoLjK3Y5MqIT
	 JIglJBupPRLX3bvxEYUBmN2+chMj6UlIRFZqUXin8dPKYKQp8GcIpKAB0uwNFzxRW2
	 72yBBaC1j/TMjjUeBnYoKnTNeMgCUvMFnNXb/TFI5Xl8CfVymiKhDvt9Q/7yg2n8+e
	 LRGzaycYyocSSMwGAV75nEk5/t1OomaJkiAz4Cf+EWB0f/98bV8NeYea8C8PXbDJi0
	 Nkq0EO7oNkyjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95010C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039439357.29589.12541165332244323461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59ada365bf71cdbe0f8c3471aff57b59d19f6302635251b541902dd5f4231a0
Date: Fri, 20 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750394393
