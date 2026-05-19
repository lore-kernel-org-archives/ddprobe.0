Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A71E1E16
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779164434; cv=none; b=Gw/YI/UPPPxzGzGRNYQ+A2adfG6LqkPGLiGTcB3ZkoRkjY3J4vqV256UqAF2TUQzHeUXJdgSrbl0B56Tob6q9C8UVDQxocF6JDrRJzSoX6pfcSG29XOzCv8qFNiA0m28YG0PzCxcMzEenByTirEkTaTCouIovNSq7lhPXeusQ2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779164434; c=relaxed/simple;
	bh=me2Kei5oJwCQDxzZc1t2f/anOIN8fkaVEe9foWuicck=;
	h=To:Subject:From:Message-Id:Date; b=d6C+RP0hCnl3IoU3g/xid1ozTHJyD7WzzY8DFsXQUvR1cynl+gphZGqBFtCYSgqjkequDEMKkhtKLXOtFoZ9Wzuyr3XwH5xmC1vaXx0U4LLPaRdP3z7sM+8AJtYsAs80M06tFnpeRl3/PHNhlDFddYH81MH/1zn5Xmviz/GTtO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt2ub1YA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt2ub1YA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD371C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779164433;
	bh=me2Kei5oJwCQDxzZc1t2f/anOIN8fkaVEe9foWuicck=;
	h=To:Subject:From:Date:From;
	b=bt2ub1YA4ktsrqB5PV7l2QFdfg9F/Ko3rCK0RP7awW//rH7DOL9ktMLDTw4NZFoQ3
	 CCb+UUEBYIOKl8jM3XyAJzUiJsWxvumnvoZkv5TF1iIDDfKQiouvXAZY8bEWFL8Vme
	 5G9Nol8wW4r1/EC8GnZlyuCfNWiE1BxnJ8n+4PM7o3HQ28I8TYp+gnTzX7WhQaKWX3
	 H2ih6b9UtApjlOPLjy834zTfdocjErhmtnhIYi8rwcYs5ErO/iSUYcLi61JnbcavTw
	 g++4CpJh76npf3e3JEr1yHzO+mCafezGY+f9GmY7h3nUjDQo2MOxGmS0s4kvt4Qp+0
	 9o7HGTPwi94Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9EBCD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916443369.14113.2239799762654023559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45cde90c68c9551cada625a1e7050b199260dde453eff97e405fc3d86e746b3
Date: Tue, 19 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779164433
