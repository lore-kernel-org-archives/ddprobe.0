Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326DD645
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724639754; cv=none; b=Y8IFL99imAwaF2Kl6h50ZVfZZTlJWmY2L99wU8YdOjsvfB2xJ1JYoobk4EE0Pmuy4WzSEtJCtzb8XPXkqpyZmBBPPt3S45R5MU+lffsrWcnA2nRhvQiBSNWkc1j3TMUms59rrTiowuHiA01F32kStUKaATFZ8vB2V14VEwi3gV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724639754; c=relaxed/simple;
	bh=lFUX9jDRFVXzojkILB831i+dZkw2hmRn7Lf/9nlUf4I=;
	h=To:Subject:From:Message-Id:Date; b=eVpsPHYoAHb7e1wU7VRY8i9KpraXlVpj9Cf4m/dfRdrJyzc3ED1EEnOJGoxxlBd+CXqRP561USo4UhQgwLBZsyYvFzyDfCZMtki5C+AknO1gqaHBbO5UbimwNf6cBak+/4rSIb3YCqUKp3m8gB7jkneoBBcfogQxGd3UrEqoYyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im0zhlBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im0zhlBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF754C4FE0F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724639753;
	bh=lFUX9jDRFVXzojkILB831i+dZkw2hmRn7Lf/9nlUf4I=;
	h=To:Subject:From:Date:From;
	b=im0zhlByDBA9/zPNxfdsiEW/9fIxSqx+GMWSpRP2HoWVuBES13P8A3Y2Zd1dyYsSu
	 evvta1F/PoxqeZ/yDf3lZyt5evX6I8MFiJjpFFeD8yrusmR9+MLh4nxsgOHZnZTyF/
	 4avYEPtOoa0aAfLoabMRZsaVo9H4U6SuUBmkW4M/aAYtF6EaNOSrP7BhWMTae32BW0
	 vX/j3DYKXvrFiZ87OoBhWnBSL0ImBYDSfnkRmjjSmx2sZCmlktglysueAunhp/oTxy
	 +OiyQS5Ilepea72Byq9GuxPx/r0G4DDIbXbXVGm+HPId89v/ZqJE/4utMs+8y8/b7m
	 Xw1b1PcGPUINA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6B0C5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463975359.1264.18030989268320180281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff53114150b932be7e0bbf5d8798f94b3e7c80afc56e2e3cd47733bfe7fcf60
Date: Mon, 26 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724639753
