Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F204437C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748798394; cv=none; b=dsE1a06KDmcIemq8dhG5NS0RlmK57ZWV6KITHxmdpGc34RWLmtXw7DwhabiqiOaL1bX+1kTgIV0JKru3ZN0DlQl7MMdyUSLtgpgXpku8xkolHUk8r680ApJDGKI9SU97mmLil9+yedvf5VWjmfbwQ+HJlmF/5+HreUBqM98XiIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748798394; c=relaxed/simple;
	bh=DIFsuBX2hAC0P/xCbqhrKfz0qmx9pz5SosNg/sVPcwA=;
	h=To:Subject:From:Message-Id:Date; b=Si6nfKrOI6tM9sIVCO1bWPvMfbJeHRd8aEDb6kn+ctBvJT1mdUpWJI1FFvxgN5B949V7DNuDDzf9ZiduGObNOFKVOKreY7JBWYWtwSYP/R/8bEOPQYx9bPdgsr0RpuwloJhHnunRXX6JePpUb+WBjZ68tH99pVGx5fN9hwC5wmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqHrMRUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqHrMRUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD836C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748798393;
	bh=DIFsuBX2hAC0P/xCbqhrKfz0qmx9pz5SosNg/sVPcwA=;
	h=To:Subject:From:Date:From;
	b=JqHrMRUOtluHNEXStYgTuS6Hc7xg86P4GGI/qdDpfs6owISg5jTTE1v0Ohh8yfDGx
	 a2i/CAZWvlOwaCCsTjY1dUN7OOiPQbXdDRZ2IUj6pjRa4b2GXk/k2zSgbREOtLNP0e
	 lLnSCLE2FmwMGdX2cArmCPvlOHqYlHz/MY+0mQ8xahcDsSAWJTvH+Er0XrQo4B/HK2
	 zU/RMkcQauypCU1IWh0I4udm0fN0n6+oaDtku6LDWup5VdnumAuSdHzILhxJNVUA8D
	 j9ODGhQgGip+MouXbA1YtA//QBwyjtjr32Dbx5mTK4gpx92ELOwoytHDRNexCbP9MI
	 yIaA1iRPu1R1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5ABC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879839360.2010.15081479166908120267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5525eb9760ed283c7334d9ddd07aaa3d0a1e591635a1d6bee244b9964ead2869
Date: Sun, 01 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748798393
