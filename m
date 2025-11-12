Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147FE3358D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762951794; cv=none; b=PCl7sAZpgpI8BvAfd1CeRlySzPTIU6ovXTpXTs+KY4BBV90VTnp3feDl7iv4fHLMeSBKy/Mbq5QCS425AhfhAvbHtJuMK7mSH/dI+W5amYQSoHqm1KyeuPdGvy14sdxI2/aPyM5/jYRcYQJ7OZrg5ZF9O6txffce6juThQ6sUlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762951794; c=relaxed/simple;
	bh=HDMG6o9PTigmWbUv24isshzeQpo5tXX3eeruE3njmlM=;
	h=To:Subject:From:Message-Id:Date; b=Yvfov/YKmsDLBzakiB+Xh+QqZOl2BLiVePtYIJPukAa5ybg8r16GLtk0dSsu4/9GFGuh0dO/0At/tE1KTBUY5ZvB1KLAgxWKoqWbu57U2p1iLwUYnDj67YBRM51ZZMyssnZrDrXHBDen1FULOrM7/oAFR+yf0B5vsR2S/kshZmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIstg6kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIstg6kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762951793;
	bh=HDMG6o9PTigmWbUv24isshzeQpo5tXX3eeruE3njmlM=;
	h=To:Subject:From:Date:From;
	b=tIstg6kFO+s4QHn4KFBGgBxl5wuXy13Cp0KyZzkc9Nn4j8D53pICfKsnAg1EKO7+i
	 DsjP8IZ0ydrUI51U+vQZFG5a4cm156C9MOCyrMOTovFSvKSGPCG+xU7JHZ0fnxg1/t
	 HzAyS4IbgZ1F8ywJ4OOiF+PMDZy6OYAQd1Xld4b5Vr2NdJicCfNrsNCIHovukWkl3I
	 5EzM3tttCBjtXSC0VrH6BlR7N3DLr9CopB3Dexz0QRfe2JXk5by57uLtjL77JU83E3
	 Ffmf72FNCxTliBWu+1ze98vvL/Y02fPtbIXZJj7q4NFOc9henfX7jaL4tPV+SjKUEI
	 c7qfPPBgzZMLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D25CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295179357.25415.4243581781694720010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3511a60cb13149212561bf27810275f77a335d6d50d703993faefca679b55f2f
Date: Wed, 12 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762951793
