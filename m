Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DBBA927
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744582794; cv=none; b=c5lIQcoqmV11etHpdWRjtiSZdO/IpCV2a3No+G6fWWGT4zrGN5EhWAmUlcRPWH0OHOqzZrvkx3Pi5Mk3oVZh01oQBMeg+6LpLWK7GTq/ExfLSPk2vrDmKgt+PWzxhruJBjyARKCNcjzaNMQ1KlhA8cajCTvOPe4mt30Aw1EyCxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744582794; c=relaxed/simple;
	bh=0W1BBJvScXIP/18/I2U2QhulGgSr6D2Uiu9rtoKXnZo=;
	h=To:Subject:From:Message-Id:Date; b=ORWxJpFBYQfBmhKj5WqZAzlHumT8IDusDNrsYP82oVThfjo9eFDpWFxwBpcA+CKUR64BD9dqflnDTjJkzR4JivaEow/7RaIyYqStG7oSDrlSy/XsQ89hp/gEamaspZ6y/un1UHs7wEO4UaUfAu9xN+kXpF330RVmWv+VHYYci0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdEExzis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdEExzis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A24C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744582793;
	bh=0W1BBJvScXIP/18/I2U2QhulGgSr6D2Uiu9rtoKXnZo=;
	h=To:Subject:From:Date:From;
	b=JdEExzisSI43H+sVw5Pi+KpV+v4ZDBlKXlO3lm50QBNvrvyjyBh3/OMamn52Vm0UA
	 9MM6Ez3bSTXWA/Ly5nv7EOY6dmOwobw6rUAl8rGa/9FlGgINMHs/b9Fe4DsPOp8ZmI
	 A6iqQ6pC7+kwo+osSZk2JXVVNFk9uGSGIYLjgZatsv/gWbNyClHXY0KnwCZlzZHNnS
	 +kHC5ZgASFr8AGj++hqjoRWc+wxPchp0zEBpBMZb7gz7QpxwiZW80vKQwBhmdEBttD
	 S/x2l8GgoIbtU1D3yUtgdalniFpVWN3EMnoccmMjD5/tMoLuxo1xnXPVnTEq3draNi
	 SF5UwXUcWMmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1997C369AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458279365.17441.15046009022084921432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8af24aabb3381aa3cc2fce80f852450c5f331fc78c1ec55e05e6f602e5ebc40
Date: Sun, 13 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744582793
