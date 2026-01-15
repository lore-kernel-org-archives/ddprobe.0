Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DC72C028F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768496633; cv=none; b=RxV8724w65fXgKHg9jp3x1PIhDrG6lOgCtuulcD6Ajmk5Keqa+u+UV0k974hR37aH4QR3cPRaduiUuofPzIfZdrufsxaZ64dowDyaB2WUvnz2RLJoRIIh1025+MoDOsmwXafzwtSLLBu1GE0GnZ5SAlKy2XybqOMbNHidXW1xwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768496633; c=relaxed/simple;
	bh=ehOhkjoABNn5ZALKK9DfjcDEcpDglgDuhm99vWHtppY=;
	h=To:Subject:From:Message-Id:Date; b=pFcIkQFQvjIG6bkxFM5aweQBqVJhG3jjBEzzAXixQKKTCREI9dKEffzNnETlZbhOa2ciu5WPPldsJJIG+sQbQ27sxZV09ocHg/H7uNCjDlY0VXWLxsweMgfHVyVvjHRdf1y7O1xlfu4JglW6Jt+yP434TZOmaCExfg0MLtt+534=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcxWwp6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcxWwp6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1015C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768496633;
	bh=ehOhkjoABNn5ZALKK9DfjcDEcpDglgDuhm99vWHtppY=;
	h=To:Subject:From:Date:From;
	b=gcxWwp6wBo2D4aHew02lsSCxuo00s3ugKV7LAbO0gJCdrDSMh38jzchHpiqflwb8c
	 pVKP1kG1621Zz7RuLHytUHFq3gWSiE0z3Bl5cdDgOFfoJphrn/Iez1qQg58cH2KYkO
	 EBFNkzsB6E2umG38cGwPnFoc/EIQam0J/8G0PWAKr+AJxxl4A1h5TojFoBptCpcNtZ
	 P+4pLH2RSklPMTWzc/zeMjmqjxdo7qHZG2QDDtyLwOZHEb6O9Hxk3dFrmBTRYAvpHM
	 EHvoCpUYQHe91aXCiNmCKhAy2s82HNGlyD26Jg+/aW95AP8/xlFyuaI8m8HZLRqYtp
	 qmYQi7M2rwEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90872D46602
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849663358.2586.6461676759759971757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ba6266aa54bfdbf136cf05d1ef493e3584c300def36d1a180768834ce1f467
Date: Thu, 15 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768496633
