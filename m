Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1143E249E5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769246634; cv=none; b=CICSSrGOd8YbVWIqmWFWzW5lo5u/g1kKzTlJLmTaPG4PLRN5wtPgNSnbc0FSWSEasZ2Lm50n1P8Ipq3mMaTWt/4vtwTxj9ekgKh8nWlGwAHBw/pSf14yr/DUiqVKVYz2RYOZE0DU5Cex7YGKk49DtxvDYKBh1CIWIBp90qWKx+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769246634; c=relaxed/simple;
	bh=B5wLnnr8vol//o1yhp80/qXUYLkq3PFoXou4a1W6B2g=;
	h=To:Subject:From:Message-Id:Date; b=fddTL+3Yu2Ys3FM3/3yRmEWza/RfOeN9ZIMlfGi/qu0PJVI5ITsmxOvAAQY7u2MEcjHS76wYQYfBmwz9UujyXuxb8vW1YdU9lLr5akXUXCihRGmpASzLxz1tqb1oYofiPGAXaqCyxr7n+62wKuRm2iz0z+g3MGH6MPhAMAPWSpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3PxoyLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3PxoyLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF63C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769246633;
	bh=B5wLnnr8vol//o1yhp80/qXUYLkq3PFoXou4a1W6B2g=;
	h=To:Subject:From:Date:From;
	b=O3PxoyLEmIagLN/eYpbM4P1TC5HzH1lYn1RSFpKSrSbzxvYQMDNJecCQjQdEp+pmE
	 gZ8gfrr/KqkE1yTMp++6EGFbgGEmqNBEb00/W+Xstw1jsnQIkBj+ljkloscP+6jGr+
	 6Fkux1xRV9Z34YdmDJECwlOdXMyhJXbA5M9osByLLZG8rTupyyXW/wF6xN8jD3k8ys
	 jDM9EKBvSIz6QHd7kOVKbhkO8tl1mLEvs1TsPXrK39n7DBgUUXKU4QchvhWFIWnmNu
	 YI5bwlBsRoaFZEWecK7cfNETZ/4ViTUvisyOVxB1gpI8kMAXFjxti9uypB/kvgp0Xc
	 yTWOXzNM+b6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B13D715DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924663358.7252.17575808129413275686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61c67ee2df583f5f366e18ac8b636c2086d182a4cbad49b37ddb9029d7b9508
Date: Sat, 24 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769246633
