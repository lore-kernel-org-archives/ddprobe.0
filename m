Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2238123183C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773465894; cv=none; b=Jtvw2iwt/9TgNY4RPfaKvM5c5MfpR7CYbjxIZSQPhEX5K3+LidKdn+uxNTwvsJ+nUNp2rTmEgtSav9ARqD6Jp7/eoW5Vq+RHqcwTDdPb+N44PlWTOAdIavLkmyIgXs+ib3YcOjKRFzu5Cp2X3TBr9bWE7Cb/0y8yUc8M/vAZMWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773465894; c=relaxed/simple;
	bh=7hD41em72fqd0CSG9gAmtfMT8VvH4NIXESibjYgLX8k=;
	h=To:Subject:From:Message-Id:Date; b=IM4gIZwobREB8dgiZoo/PBfYrk0glrUlAAh7KfbT80P7YKlKB9bNMSsJ8U23I+v92Wzp5zYYV5PRdlnolHetrlZidReiNMwrmlAqg29O5Fwu5v+CRgd8i+9LmPL9/JGoMYQ2bcMXKFVcA9MpftOSJ3nC81xvDjBByF2BKa8UUqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7CqRsRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7CqRsRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C81C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773465893;
	bh=7hD41em72fqd0CSG9gAmtfMT8VvH4NIXESibjYgLX8k=;
	h=To:Subject:From:Date:From;
	b=a7CqRsRCsfdzloKzwAzIhWbf8ehLkMaLLwvWnLRX59hFfOty2xJwsKSTOF0HFtcRq
	 o4twc1holi22Ra2EcCoLvtyfpXT01DXMV04R9P/jgVdrFhjmUlrmQooaBCZ5bOg6XJ
	 bUrpNXsXZ4eOYXqFoH3wqiKSBTL4EdkdAC2w2A8JoAgCp4s+4AYxAHsjYLIAWNJh+u
	 Im7NdXBXM53PAlVpOAMB7gPURry2ju6hMaEatUTxpbqaemlSTyVnmuVSSj3fld9yg0
	 80Mu3Qy4COmoEwC0Q/PcnF/fW/v3NZItGwcL6lHekEajnsSQWDZyzrepP/IpvmUnaT
	 wXZIvCznNU5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C48FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346589358.16075.2465707164060242442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb8918f06e2bcf27d4879db7a5384c33750533f407b46436ff7d2b085350581
Date: Sat, 14 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773465893
