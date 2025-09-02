Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F082E36FB
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756838994; cv=none; b=OZyT1ILa15Xdg9AA9J2ZDJQbATN8s2PXl29lRa9q9giSWLuWtHU+JXHEJQ4rWebr2aMxho8lhqnwMOeydpsrRrE/k8Hf2NVA88mLeUx0qu5R7wtFkl1uHa47vGHRel8CJrWi1ICshAURfAlPUyMvFl1SiFz4W+lYebF/BHQWx8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756838994; c=relaxed/simple;
	bh=FjGLA6Z169+ISwOcndAhXkg66kg3m/dRfX5GodIuhbs=;
	h=To:Subject:From:Message-Id:Date; b=er9BVowEg7XXLrf1BojpzMEfayPopbTnAPXLOzGnbTNRpuXrxXv4suj9tZgw6R6z0AZ+abBDc6phzIqF9/+krmhvvPDHZom9fJ0iLRn+KETL5RPW/4wdXGeVRHxCSzjSAw3QyOONjRcFz5THBXdNlERljkDGGpKJaq2elIumyxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEM0kavJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEM0kavJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2599C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756838993;
	bh=FjGLA6Z169+ISwOcndAhXkg66kg3m/dRfX5GodIuhbs=;
	h=To:Subject:From:Date:From;
	b=GEM0kavJS8nxmQvlY+M21YE8S4vvxQ5KRVziuswJ+iE7RRBjqIctoIzuXQCi+t4KS
	 tXsMffrH3G4uil4vFIDsJwIKl9MJoOAnrnvslFWpgoEEyHYCDyQLIRoqmWQf5kdwjj
	 BUFsNJfEWGeQDsgVGJQwwS/CTqWeHJNMWymxhYKVB7eUUpBwvimJ7SUqoE7tRq0/BP
	 uvOkWcg7pLnqA1XxI1+Uv2YK9zCf0Q1Bk91q8gEAgotmib1zhUELbEOfjRnEgNcj3y
	 KOqYG3j1Zf71weBhJRVBbgotkqWpHJoctLLxdBtEOxJpcBmjnsUPfBi10rONPaNEZT
	 GnD5zyXDtuszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65DCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683899357.16495.6817900399722755336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ae86a773337f9a17083b3fbf10806948ca93730aab47aa8a7ef1e454a6a430
Date: Tue, 02 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756838993
