Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D627F407564
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777375053; cv=none; b=iqKPKhhv2DjhT0R6jS+BAZso70V0ia1827EZoQSegSG07iIvSmdUUMTHDhpA/loXXZ6MTZwRwghG0aF+7OXGcJkqmyd/8gpZjSFlKr3eTkdOjbQWXNejjJQFvpoDpvp9FRHCEWozlz5NBUL2zDANup3263p0AEk+PFdgVLB3OFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777375053; c=relaxed/simple;
	bh=tlIjmMTj+lycru2Bn4jfOmMVZP2rF7HrHGJ+IEMS35M=;
	h=To:Subject:From:Message-Id:Date; b=P9N45Rwx2bcYn55EmMV1yW5o4oPmNoxOQo5lzYMC2XB4n9vrvlFz01GjwGV072/uP+GC7nCiMmarFLK3cLuzT1lEXNWjT3lRs/hdv3F4z4r6Sel37e24Ros4lSHb1/7AbIdXzLl/1JWvWro4d0Ab0VshPHN8ETK35RVbpgVkjHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtEE/moq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtEE/moq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C85C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777375053;
	bh=tlIjmMTj+lycru2Bn4jfOmMVZP2rF7HrHGJ+IEMS35M=;
	h=To:Subject:From:Date:From;
	b=GtEE/moqGZphBBvcNyI23CbBnBkFubYOlMuau4Mz0b3G2tKXO1uHanK6Q/DT1K/4G
	 7g+bpliNZpJqci/yLyUZ93zhnYg+q+YPqyvbSy8T441fOsRUTKOjLcuJjLKHd1I99D
	 ERIMfSzmXBs+9Ay+vtxLazSeZp7o22mNxiwOwA69HC1W1jGxIti6uqogxWth+A3O5I
	 ywJAgLrx4XkVb1SnMyQ5NU+7Y9L2EsoLi9jRpin9gyIwj4olbec/tumxoaglLME6eM
	 hpGeQg6iLCI4fokc5urmZn4cftck8yYGKPI7pnsn72mj+kCw+WUQdsq3TYeUOBHAYV
	 1Z/dZt/WOyKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDDFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737505368.12801.18317473404669299835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cee628a06841930c6d70899eb8b630495e5e5a91e77d840b21a7b5bee142008
Date: Tue, 28 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777375053
