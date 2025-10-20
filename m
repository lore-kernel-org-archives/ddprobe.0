Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3691C305051
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761002994; cv=none; b=aCslELNFBacSyZhEzdC8cpqHaQ3MDShqEfVjglwUPVLAJdGoKmMFeOnbVY3PJQlhvhzfMvVP+wkTo5XeVR+VNUyS/jb6SV0DiVv6JYATb18bouWKdx5MZqim3SVke1+/F38gfK+uln4ifkN5OS4Zd3RRfd79XGgyjT61OAyfIA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761002994; c=relaxed/simple;
	bh=QKFFdbtnws/5Sl67qkGR85Ji1x34ALmteUPvNHTQqC0=;
	h=To:Subject:From:Message-Id:Date; b=gqwggs/KpxED968tghtc39WRymNV3ARugr+hscH/WEQmXpdC4N7+KDYsT39pzCoNHL5d6bmrX/FjmO+2vP/zaX3Bbq/zXnx66QSncSDcg4b30SniS0lk14V+dRJwTE8IOqQxc/0c2d05kiVtDlnebwHMD73W7UULWHi+SInXbv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0Y7z7qX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0Y7z7qX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761002993;
	bh=QKFFdbtnws/5Sl67qkGR85Ji1x34ALmteUPvNHTQqC0=;
	h=To:Subject:From:Date:From;
	b=g0Y7z7qXmvhUTHktXas1nq5mmY1GhPF8+a6P7t9P7vD0TpqapD1sKkAkkwvknUsaI
	 wysoXo+U0UlRpkDeYjlPLJIoZtWmyRr9h6Na5ViW7hIfe+SDizbF+0bVPQdvrXRHXY
	 h7E8tyuwvwCd3tAGkrnr8h3qeoIo3/baCuZha+kGuisO+iY72PWxz3yjSe8l6F0yIe
	 VjH0VBJu5ytzGFMC0cPoG48w6j4F397vgAOfst1P9YODNlQR92o/XuOHswZPPGqYVK
	 CZOQwI1fZ3GYUM7n2U8kv2xi+xFDrywpk30YYvmC+U072wgHBSM49IWP8AeT0M3E4a
	 kvDNTFAfFFtEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DACCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100299358.28249.8437417316703391514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1898c35a5586b3421c662ddc9ea4f84a41866342af0b8ed1cfbbf2decc9a8340
Date: Mon, 20 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761002993
