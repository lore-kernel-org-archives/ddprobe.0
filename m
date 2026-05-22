Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D97436A366
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779473554; cv=none; b=k0IaS8gNzWVAdyN9j7cparMSZ+3vlZ27klD2DpmoafxBrwHhb9ZFgMTnWBYz6XZcBvP/YvUYFGjyjaYwLIzA42oxMtdHXbaOPPgmLiUgNODt2su+TKx6GIa1E8sd5ZlRsQWO0+TLM1SBEQmKu8zE81SciiW/XZ1Xtn8Ws1W9m3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779473554; c=relaxed/simple;
	bh=oh5zucq0szk1lQH3xbcexk6xjzZivAilpHCanEO+ofw=;
	h=To:Subject:From:Message-Id:Date; b=bc0UTuziMAbx11jElSNIC59i6HQqHjrZLRhKtwejtq4zv6IVbGqK5qX474GN15qloPKDz1wOv3DXmAUTEP0077yRJbwi1oRgtxJNZAAFYXXZDPdIKieL2mDorcL9f9Z6mSJZgIlJhDF5Nol3yos4V2rdsdV+iI7qqSU3XLExZ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSdQenGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSdQenGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ED3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779473553;
	bh=oh5zucq0szk1lQH3xbcexk6xjzZivAilpHCanEO+ofw=;
	h=To:Subject:From:Date:From;
	b=qSdQenGtfyj4QMJeVwpdnuyVlLsfRbtxwabwbrZbB4xVlbBQnwfFw1T5KM9h2BQVl
	 pHm46guZBB9Bb89EhpXRA6O6CH4iZnPOe8/wTImpNpkd91nPgzV/dK8aL0UgX9cSD4
	 QAZOzE3gpdCPm7OASiHAsnefvBFLvR+Gwwze2qpY+ikSoXzjjq5apJnc3rWwaRXLON
	 SVy5gcMrDGIyRyUOjlTNAryBsZwdb1GGmohyL92bvNfl//3QwdidPcRviyKnw0YDaV
	 rBtZSgS9HVNYFr6dlJKprtyu2joywHsr/2BhNc+qfQS3e5ilCxVd6m64IR0Gm92L5M
	 +IkJoGi6rIZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC430CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947355369.14858.18445162343527099460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c46aa36e8a4c56a246bd5db52e579f3961a459281f04a74d99c2ae406097703
Date: Fri, 22 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779473553
