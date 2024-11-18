Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0F13D502
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731914754; cv=none; b=qld849qaELXZ/1hCQ5XD0AwwcphAh8Lkri9Ak9rZAOz/KD6I2UKMqHM5MjFbXIq9rXLifX+5q9nv9Fp3c/wRaUUnyHaWl+/7DQQMbcsIrWXSC88SVgqHiDQwbzmeeCfOJpLZ5Gzb+fXXPx7dg6Jl7dNhO/jEALHBTi0KoPoe3cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731914754; c=relaxed/simple;
	bh=HcdE7JRJURuusatogpMpeinWRdvdMHmraLU7Ob/GEFI=;
	h=To:Subject:From:Message-Id:Date; b=IDsQB54KVBdFs8e/PCBrcskMeinDtP6TCCJha1lOQKaO/+cMAnH/QRflDP8BA7hAk1fHJAsVe0JdIn936vlIz0pFokALgUZD5Ng7lVCBBAUYjl/XOE/yUUPYD6EQv5NPEpF6PMRlXTmXhPJRPVut7YjpJMqayEqK6HLRaFgCKl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngkkHM+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngkkHM+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCA5C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731914753;
	bh=HcdE7JRJURuusatogpMpeinWRdvdMHmraLU7Ob/GEFI=;
	h=To:Subject:From:Date:From;
	b=ngkkHM+EvBDqWNDD06/w1RoaCO1R0+FixUVZhE5OO2eXeN4VsP+ZtQHSBmdNJctWM
	 xUfAwgQ5AazlzxSLA3B2XvwheskrGatvLP85FA7k9mYjkogCQAJ3RS7RSMfsDfoZtE
	 5ZR86DLYMj05M2tX4uooefvl9W2cdWwdPpMczj3lRjX8qf1Bdeo+CfPsHlorUTCumt
	 SxA5kIC69WTJasxF7kelps2QVzxcU4jK6nzbRRnNR9Zq+zcPmPjYwcBwh3zFFwbDGg
	 qR9UkmFS9tCBZAryY0mcso2GDn2QPDVH4G9RYsfubLhOUjiS2os3+515YmaUN5gA4f
	 mEgvonrYqL+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB31D43FE3
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173191475361.26865.13984881021266577942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72514f77c88fb20abb749ac4a8f97fb8e960f893fa29909a4ef1e682b16e5516
Date: Mon, 18 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731914753
