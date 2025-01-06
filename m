Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA093D69
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736132754; cv=none; b=UdpBp46HwLfXQfoN5a3mjmDZse7tvuqOAh73TAGKsd+SsVGEvYZVUPDyDGDNmljw+qnNR+bjfx0jpAR8QLbeVXqn9Z3rHZO6MYcnWq1eUUBF5Z7BdwMETwiQBFUlpEj//wZfn/c82W9nvnwS4Tv8LXVKsh3vTJGTibPBVOtnec0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736132754; c=relaxed/simple;
	bh=ca+gE7JXAK8RHu03+179/kx+3sZxLHumNPHNpMzHjZg=;
	h=To:Subject:From:Message-Id:Date; b=Lcq+bptwNwjlgbD/Zw5dRRFSwBV5jWx9C4SmRU6lBcuMLrYhv/tr+lO+dGbaDmAH5DOs6kcpUj575ye9RymvsOG2A9uWgci1RKIeIPyk3BxXV7MibPgD906Pt1wUV8NyuQFfxuIu6YPMvMB3EwUFM3Pt90660VU2II3g1tTpHCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThII1644; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThII1644"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC306C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736132753;
	bh=ca+gE7JXAK8RHu03+179/kx+3sZxLHumNPHNpMzHjZg=;
	h=To:Subject:From:Date:From;
	b=ThII1644edEnfJ55VeOjAmAkirjyRoNt3DF5/w0Fpqp/Da7mb/fyZr25FdM7jabSm
	 TBrVieYrI0ByKAxWqQ6nTVgFFt1ObWQcGfOf1Io8OnhjRB2gn6BTv6wpzApnqOOokF
	 hQhipCeIU8ir7uY6YWSQyvWp1MlucLOdMZSOyO69TZOGo21GivMw4rrB8brh/U31v/
	 nfoCYRPDQcNn6uhfypIb9V52Sjmi4nkRPNXDqzqdKEsl6PjlV4UjjqwycMw3MDonN5
	 sYSvcWrDm6AH7sVCxQXM2p/T0R+rnhtnw65N923psy2gu8JpoVpWzfvxdm1/+9SSr7
	 7ECtY2aSzS7hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E680E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613275357.21508.10782737612313367699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce0e2bbf23ff8597ebca31e5b15d0e37bc15411718e32020bfd0d45015fea36
Date: Mon, 06 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736132753
