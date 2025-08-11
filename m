Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0220713A86C
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754879394; cv=none; b=P7V1kgpRjU/EampUnjrtsUd8+/0Jlxh+09vX0X0tC+Vj3FOYM4Gse4P1AkIZOCAVnkZRSJ0wDgOBbK849RerqFSvDos4Tzc4M9DIMOH2mMhe7O4y4yYwbioGjHiJl0kmt13zC6ZIEoPfruR2tUZ00mWte2gt3OD174yGfbdutgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754879394; c=relaxed/simple;
	bh=nZLrFzI7DM9J4ytvN2wE6G1H4wOpbZ91LlaPX2h/sqI=;
	h=To:Subject:From:Message-Id:Date; b=MMWRB6y5PvUAvkSQIsvGw1eVkp1nk20iZ7J6fSfoq6mO+Qdj3GIJvLunL1to144CQCoKmq7nJ2VAwcDcuyd9ct4WLFlgN/aAbDroK3QJbErJITgHOFjluxqHwfXiCopSsHfC8udmvPX5p2OI7ca8YlnWpNE2klB2ROtbtqCHej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPzAUDhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPzAUDhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F88AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754879393;
	bh=nZLrFzI7DM9J4ytvN2wE6G1H4wOpbZ91LlaPX2h/sqI=;
	h=To:Subject:From:Date:From;
	b=PPzAUDhXIz1+CyP328mbRSCvdTdZsr4vaJT09Q1iQ7gcyV0AN3evUu9cxA3wqZw6c
	 /P4Xy0hbLslpKS/mPZdTTHyR6seSXjwH3beDVweTa7DD9ghHjUeQAtxRTTHW4H8wxn
	 kcCvC2m+j/QuCI8HGCi6d1R1yO3wY34JhebyvOxOKBzA+O1hn2BT5n07rHNz9cvNqq
	 H4XzKUhoLXHP2lAuiyQ1hiKnOktEeZcagYGf6eIzVR3Df7MCll2I64nMUIfVFHQBDD
	 ytfL3fpnyddsdEa9y1/ykQhKO23kI1UkZQs4IHQWEWi4yVHQuoxnty9bF3zyIUGvN/
	 hhRRM5ZmtaOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CCC87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487939357.15644.17658990665988061914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70eaa013726aa1e7d32ea7dd0acef55f10ba67c7c405c2f0a5d12d6a13fefb0
Date: Mon, 11 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754879393
