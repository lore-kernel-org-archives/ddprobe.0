Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9271DED63
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743277794; cv=none; b=F/78pDeGq93MN18uLjZfkGB96R4aoy7jMzp76GXTIyeD5EwIKf6/WHNiNWkiblpNmIfviBZ3sqNecpvRtXVDeemfrFUmLGPFJDOYHrUEVT9F15PK3c0GbLqvC/N2a+bvsgGcBrNhXeitYqcH3YJh/JhC6AvZjLtYoQNqkjgsTiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743277794; c=relaxed/simple;
	bh=uWYojAcYh451Y+4z4Vip1dN7PdroLt04GrU8FwS3jmQ=;
	h=To:Subject:From:Message-Id:Date; b=QIVLgoYh9SGuQN6tRRl1Ul5/HGnqmq+880OWCvDcjNkUgi7qsx/8EgTFt6k1OmtqFlS8ReRoGF7zB2rnh6FlkL7VskKtqkDFMJ6f8Hzo6vwcdxJbNO7HHmUZrgbge5qwpV25yS+0e54AElOP0l27LVP9du4nWUOhHRD74wMwDaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzVFUsn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzVFUsn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CB3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743277793;
	bh=uWYojAcYh451Y+4z4Vip1dN7PdroLt04GrU8FwS3jmQ=;
	h=To:Subject:From:Date:From;
	b=JzVFUsn2gw6g0UF0v3lBBgsKiSH2UC2T2FfdXKptnmtwkmyz+5lcCxRD2kDkFuydF
	 V0/DYIbzoqL1kTWg3yzPVrV2aIlplFBFxXC9nWaZsR/pVWhEchDBY2qEHQRyBqJ8fy
	 a2L2llx++MsuFNMm/NElu7ghuxFwv+g7uxwcB3G9H+/vp/RddPU/1/O86KGq9F0knI
	 T+ERgqcEDwQ7EiZSlvn5T/jJArmZsTloLLTTXiWQ3TJpBsSHRRZFGcWmcqZgOBLS5p
	 mGvB6Jx8xmsFZvrMXaHZ7yEjA6KAKCUjErkAeSHDIU05KyF9RUwpp0fHmyFifLrObE
	 M7rT1N4OKYCHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F10FC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327779364.24551.9197639144554052530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b55522cce5b9b9005b70a4efad2afad1a2f730f131b7dc2076ba7b1212277e
Date: Sat, 29 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743277793
