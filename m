Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A23C2192F3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746761394; cv=none; b=pfnR4plDOHp5D/I0CiGAAaoM9cMNWyOrYatayERvSF4nwWc2wjL1WCZHOn/4FK2px6QUbGOAXpFqoo/qW/0giLjmVZeDZOXjbyqDWXYTmmCIFlnzxP3QCa9kUkwtyJr9E/6KGxdSws8qxHUwYvfQM6TrQsfyRnMUZrBLccyHAzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746761394; c=relaxed/simple;
	bh=RvfyAHP2XU2Aq0aaFPEtJF2Elb2fYy+ynS4Fsco8pkM=;
	h=To:Subject:From:Message-Id:Date; b=i8VwF78sLXElKsDoftP6qormEp7ghF20R/ANy6LdCQe8IzQBGeueMCCguW/GD6mgIKRe5auOICTry88i/WEvsxfxba0zPq0k3/D/CurJqWdFFqnrqdM3H6riSmGKxf+eyXcGhNnfgJUG70eTWtqK2cpj9jj9exA8FJ1LYFDD2SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkIGecgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkIGecgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746761393;
	bh=RvfyAHP2XU2Aq0aaFPEtJF2Elb2fYy+ynS4Fsco8pkM=;
	h=To:Subject:From:Date:From;
	b=pkIGecgBSf+d8R+F8P6Ur0nd9Sel3oNKZtmVPkAihhCmVtEK/o814TXozlP0rFQfe
	 q9tb6fWCYtmCC5xex5hM/mrDV97XRZ45W64YWOOpXwgZjcUgEFQD7u5etFRf59Vdp3
	 Qrcn7cWICTuFkP/p58QhtkXyoVfOFe0bshrKvAwarkhIXDSo16KUIi/6nAS1Ss+iGb
	 81xaRhYwyTjlEUFIvxRJzKtGLtOrnSYJPT1hd7AFo0kvwUapOYHvSTE6rjs94EeW6k
	 RFUMg4wiPo7bPGUFkurdQ4Psmfms2sbPi3Ru9rT6UXcUNL2US+FZqLuld4X/m6mR7r
	 4OSkX+zafUzfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AB9C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676139361.24869.2612110669745230544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7b47023048e5bb044d9fa70161a311a7495186b5f39a89b398817ac32c7a8f
Date: Fri, 09 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746761393
