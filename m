Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0913F13FD86
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757230794; cv=none; b=HHjzFYGPHBvJqUS25c0VvoSS+SVN+JoerRsFYk32q1qnFtaitD/KJqb8lCI7TUuk4eyUpXAi5lZ3Dw+nqviwQTO0VteSGi/DDrKsRBbPxpN/dPA/6bpBw/aS3xaX8COGinAMPxtsj68zXz5TPOi35PbMvAasjYoSX+ipKL5IEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757230794; c=relaxed/simple;
	bh=l5/Fd2NtFiQkVnQc5ZUaW+i9hh/WIHJD/0zcFyO8Sp0=;
	h=To:Subject:From:Message-Id:Date; b=etKE8dzxo7KyYKgw8dkjTKM6glOb8BveG1q/Ic7RKtRWDGkjT5JK/hTRC5IrMgiqnxy/tx+UgAIfmGI0LqvCGahl9kHGat8LSh+eh8S5w4SUqQHKV6hWufk4JtvC6rsTEn5nCQiFP+M/bH/AHynK6YrHhi4LAmBm7T7TsYZjwco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn4ikTe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn4ikTe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757230793;
	bh=l5/Fd2NtFiQkVnQc5ZUaW+i9hh/WIHJD/0zcFyO8Sp0=;
	h=To:Subject:From:Date:From;
	b=dn4ikTe3HnDnL3PBtCKFwmsOOtCXzrJjgGQle2tV/eRJ0bApAxOSFSIHjxHlsqre/
	 qor2bcejxboJglp9CehvftjgqDUdwMFOxhY8EV0+wksjsR2wUftgO/DAT6B355wCD/
	 choVzR3ToqKdWZVAwfwU0BsT+Bs9wYBUzxd7S9hmRhmLLlUrGmDNfSpmHP3qUKLRa/
	 1XgM5Y3ikjmmZ+J9jgU3g4LP3DJgjV6cyonZYWdv4dwqh2tux3cpRwvuJeAC4hfWiA
	 wBx+kz2brMEw0gr5bqGdIoI84yJep5zRl4NK7IcIzAYsop6DTzOwNXmv4fveafytMB
	 YtmQ7/Aw+4WxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC6CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723079357.17988.1007228534279658593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4924705670534da6829bb8b35d62d9491ac3837019021cf14de003ced09d6b64
Date: Sun, 07 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757230793
