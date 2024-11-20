Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B08F4683
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732064754; cv=none; b=TDnaFi6Sts9nm3eWtjtiZvdkhsBhfYYUJccVxAMAIn3/zGISy56DcsrlJR/p3fjLbcbxQgISGwBNhRewqaZ1xxzudbN5V62UCwlcllfZmZ/syjgJtO5SWttRfnogc7QZ80q8ekQGDH52KUdR1sXy/+Hrbb+HiloYBzKQlWO0nfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732064754; c=relaxed/simple;
	bh=dq6k3UrYhjAMddVUN1m/+cphJwEHb4M8NhQUnHB/YXc=;
	h=To:Subject:From:Message-Id:Date; b=n4wMC+xGBSOzl/u9h/loRE4v4XHSQiUGwS7RSNEUNQeE4pFWqak5fNBRKI3QQSmr61Y6JJ2ouTom5zVAS6/ptqTOSosIWBXRFHkL9Kakqpll8E89oqfybsR8X+4Vn4oK3brxh9ll1YMT9Gb1w+gDVpysleWqlj5qFQjdjU9/a5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYPuauWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYPuauWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99E3C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732064753;
	bh=dq6k3UrYhjAMddVUN1m/+cphJwEHb4M8NhQUnHB/YXc=;
	h=To:Subject:From:Date:From;
	b=HYPuauWTB8CC0/TYHwN0H+iJ2Prra1ynIHMDiegLLKU1R2upcbOqiSoeQhotcddEV
	 aS3ICgErGFGngELlMTtDFqPUFnhqz8PFPk0L/ukjc+id3hK9D6XUv+I7bbcj/SEKCG
	 +o1MxVvssGO6Aj7J1aFjBt8CcEdohFIBXAnOrxHsiAwgGuJFnUEFEwi5fgoEo3oGg4
	 Usl080abWNszXTJ+ATKtZTI1wnw2Q3Chu1dqv13DFVXPGtyQTYdQAUepnkBYXn2Hqv
	 efOoob1mFy4ihS+SFd4GAD8GCD8527wTwMK5dMwi8sCVmYr7g6307cZrgzLYbY5yIC
	 nTcX+8a9EUkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB0D6C2BC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206475358.19791.13694715179279597988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68533975efa4b58c3d6c359be0c60028270419f098e299d491d59580babc652a
Date: Wed, 20 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732064753
