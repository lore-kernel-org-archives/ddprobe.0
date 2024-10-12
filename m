Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1D11474C9
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728773754; cv=none; b=HkfuP6GK80W4PDo1l1OcnEAnEHEQPASiwoppRNKDQGTVqU+tBt3xLlhOxUKWo/XwtDGBRUyezJweCu0AyyKTdRiLg8as+WNj5avYj2kjuv20hj0KnodZxQe0gjOSEGK/5YXGUMpR1GElUDxsW3fiLq901urInJ2bksSuo72ETI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728773754; c=relaxed/simple;
	bh=vl6dJS2vdlD6DqMA3/1WxU4TK4Nv0eAm8PDXj2c2Y74=;
	h=To:Subject:From:Message-Id:Date; b=e9Xlcmg770aXw+up+vU/fX7Jjh5eBWl1tBvJ8jRL6ME9t61ccMCy9Cu5N/NroJTlJeKezyuFKpo3eY+A9vPavsofKXRdSG46BeBK+cQV1lxhwS1bS/t4P/3SC7GVD+qOc1/hNTsEwyCH0/OZfo+yUK0yTNOCN+IaNOgHl4xwsgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajR5vFQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajR5vFQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E2BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728773753;
	bh=vl6dJS2vdlD6DqMA3/1WxU4TK4Nv0eAm8PDXj2c2Y74=;
	h=To:Subject:From:Date:From;
	b=ajR5vFQho73GHfPEpd4twWJkSHSpHwr2jWiBASpWKOlrP5b3QOIXEBz1JEV7oda0B
	 ci+ACsufFMSaVPakfUG5WxeDhBO8islr/ZiRRzfOBPQZ/am2bqUXhIPz7IjD7vjiu4
	 5Dlkob/avgaZYEPmIdaCzzJj1N14EEAlbb6QOHHl3VlaCx+HEECPK73dzixndot+Wb
	 CiIhy7hFutJDm1764f9dhOojxZHHR/b2QG/gQGOT3masX0tMY/60VXcNnd3DPfKO1+
	 YuooWi8VZ96004giWVeJ5GZUyHnt1zPrL4obNFBJsob3I85AAqn8AhqznRxFvXf63W
	 Q4jOq+1PcTawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6198CF2586
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877375366.15122.15685212035571331363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560a136c6d5a85bf9342c9b35aacd4ed5f94302867481bf000d2bcd09d904936
Date: Sat, 12 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728773753
