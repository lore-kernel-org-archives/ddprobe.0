Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D631721CC5C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776665853; cv=none; b=cl8nCVSinhUyrJ/a8fY45SW3Kvjc7wrUm4ZHfqK6DTUk+UdiLcngwD7lqQ5pBNIXVZh1OrPeK4yBG9fBTwaO5gY+h2CUVgijk4w/4rRsE8b5secp0VZMBOhXB0UGKnViycxa0LbDrJBjXIt6iwOnjKNPSDCxEzPRlyO39EAzZDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776665853; c=relaxed/simple;
	bh=dj1OdODHLkxNPkAscZd/K92KvFLBcwkuRg23JUVq/WM=;
	h=To:Subject:From:Message-Id:Date; b=M9FBfBxPpQwAPln7lRSEI4HAKcuMISmaXyqfre5n9cjesK0e/b1TEo7D7TBSmaBYBd3mA54qJf1zm4n7pSTo6SyHDHkyFEgleIXq6UJ7734HYLk1ZFlzs1DZnplGhi67oBLuAyHrrrwIFyN9SaMEYNdtOliPj2GOd1a1wJfY4D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBGPKvEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBGPKvEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5DFC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776665853;
	bh=dj1OdODHLkxNPkAscZd/K92KvFLBcwkuRg23JUVq/WM=;
	h=To:Subject:From:Date:From;
	b=NBGPKvEdH/uZ29BMQo+csVuxbaEXIt2pKXi0AjGx3LozVArtfSxwJcXQXvt2JV5Mo
	 u8TxcKjy//n/q9+XlVqWWBfMKDZKGBsiaJrnAJlIAgKw6AykY0mcf7Yz/wkmclsZDv
	 UTPzNWundcJJHpY/slP8Anko8Mq2yjFZy4ZLwoIvaOs3hYNdRsGDcOCC7h3owrpmOv
	 0qh99M3KqFhYWc5vs3NSL8fDJlI3dGFJ/VtQqJcKlSsQrarPRRVk1skfSR5rNxXW9p
	 6GkunPZRL3zy5dpAdK2vxSg5V1U+WDOJNn1wemz0gdTv8XsBt5uw+P1Rgea8IMTo1F
	 DCfdiorhY07DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9910FC72A4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666585368.25244.14612759944275697425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532ce2b37be445741148a52239d1d7a16d8ec50589f098c2659ce9fa614737a6
Date: Mon, 20 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776665853
