Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C9E383984
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787066434; cv=none; b=HMzu+rk75nGLD36LQsZbXYJwSPZM2F4mCK567YGBzEqaDWdskyJF1lhJPVpn7d+UwNFBuxWidSfIY9bOMK9hLXqchwt1VEFZm9LaZTNK3JcIln9bt+slSU+STUJQCHDgtwhVjMsSsIw0v+H0uRjeTGnwyGN68Q4BxwNdZACLrjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787066434; c=relaxed/simple;
	bh=ksFx/ErXZiFc8G81ldut+A+We56xMVmdiNLeWHD5HgA=;
	h=To:Subject:From:Message-Id:Date; b=b5pRbe0Tr9WM26bUW6Cago3Igt7nZXClIby/90veAKXcF3btqDB8ZJwjay7/ypsRTZvb/kqUwqHWW9H0adIX5apGZTNTeoFrbu67B92LoxlTC2EY/7PT0epyknrmoHSfsMIsUOrbmMLlW9HZe11PR9h5h9rVen0RmN6EJGKGlnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdgxNDxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdgxNDxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4DDC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787066433;
	bh=ksFx/ErXZiFc8G81ldut+A+We56xMVmdiNLeWHD5HgA=;
	h=To:Subject:From:Date:From;
	b=UdgxNDxg72f6Mo6SEAVaNCJnfLLIueLcUIy1YkZjDx7h3cL7RwpqTZeKU9GXCR+04
	 ovwvypCumdd4FLKXjcRpk+Gorgf9D+nVaO0EpjSIKMDSOszlG4a9g5g7ayCHl9a982
	 tihT35+0xKXo0IyCsDIjv3s9qSE+8kyGNDYtFUH5pufuWQWWV+gOTMFXf15eLuSLHE
	 Nfll0ApYf5UVDCsn6WjPGksG529e23QDj+uswZqAi+wm3yfkFB9ACg92txfBOMqQu6
	 F6QmAhkBV4gGFB1PAm8GTkm1Q0PWdBbfKnBM7NIT4XTseGOsW3sofU6EhvVz3f4Eio
	 cc0z6X2bWGWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD06C5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706643368.3611.6316991759571282953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8c9e7369512bafb2279adbea9277b6591b87a0794437a73fcc1911cfc6376d
Date: Tue, 18 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787066433
