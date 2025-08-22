Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D22A126C05
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755834594; cv=none; b=Ulh/HrGU8nt+946FClPabo2QNESz6mnPjKXviyuAqJS7/eWjzs1l1SyqjlLL3WwrvTV4KVTCnUpRm12F0iAwWRoU5FtdWeQKJzedW89red/KsnEpd1I5wT/hCDQtkFrJgcyq9ruoS2VdPIEpqS/F4Cfl8PHyLfw1H3PMCu2askA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755834594; c=relaxed/simple;
	bh=7Ptx0a9Ockcrxui9tx9iddEqLvoQ1DeTcySUlvvVjrg=;
	h=To:Subject:From:Message-Id:Date; b=RVMm9fLaGCyl+CI7r21YjbXBfU8pOyc17xlTpqxoUuD8xdSK8/zY+dnz0qd3/n5akLm5jy7/3s+JU1ZxWVHlQA5gnEYyuhJ5zgwMIZxAI7suM+45e0g4SqZKnI/4YN/Z1wuaG8vIYRsi696pgUKtQUfXP+ps7XPufNaJEThFEHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVjlRBJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVjlRBJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B400C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755834593;
	bh=7Ptx0a9Ockcrxui9tx9iddEqLvoQ1DeTcySUlvvVjrg=;
	h=To:Subject:From:Date:From;
	b=JVjlRBJbnoTRdgz4fDWJt8Pzj7kkM5e5D1Q7+ZcpGXUNFNnbVekRvqE8b/SI5lNXH
	 7pdmxf0iGFdP8DSsr4ZJURkGoNf10bBowMyKcX4SmS5wyAsOu6ZgLkxT5GR6cJGky0
	 eRJ3Gs7a3MikqqHuRjoBn5wh6m5L0oKX6y4pJC0KDRn2/+fg+3sADvXe8Rww0JH8jD
	 bVU8pMTSXhmQIaLRk7gqM27VC/SLqDl4chAsoGcVb+ZL8CUwcSNOcxtVBVcXO9fYmn
	 JUrCgdXHKACVlFsk9fiI9A6vUW+El852q4EJeGQJHLq0RM/6wZA7fly4AvsgboDjer
	 EIeFCFTSDjG4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9DBCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583459357.18559.11736595156242720635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752b1aadf348b676795a662a203f1f9e46d66bb9cfad01fd2738805881271a0e
Date: Fri, 22 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755834593
