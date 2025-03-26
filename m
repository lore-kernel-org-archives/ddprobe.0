Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D0C3AC17
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742960994; cv=none; b=oeGlkVo5/0i/gz4C6BXY/R1aiO6ec+S2UPoDTK+dgTS834pUVN0/o0jVM4/FnfV16bRf3TLIN4MgpDEjFx+8DBgQ/pQrphxHsCPSLJeq2qdQsENv9Xd//sJqvLAIvlKGBCz7QiRigq7XF+/1MFs2M6mxrQo8TYGPux8ZHd62Al0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742960994; c=relaxed/simple;
	bh=K4lueWZ9FrXwWOipi9M4yvxQq8rue1mNOBgZo7jVPi4=;
	h=To:Subject:From:Message-Id:Date; b=p+CYNoGi21jdihgKwsATavPP/UN93twEaXZxRAiJ85upRMaSbpY17M1HVXxbpeIFif5NxzwjntPjG+ZuNEkmetuInZmygZ5GqUh6nUgCvC/Jnz2v7PQ384FTn+s1BtLyyqXFvMPiihacREe2Lkww0OsntEiLv/BPOlKdD+0v7kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkFz8awN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkFz8awN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7256C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742960993;
	bh=K4lueWZ9FrXwWOipi9M4yvxQq8rue1mNOBgZo7jVPi4=;
	h=To:Subject:From:Date:From;
	b=AkFz8awNQabAayEFsniBmAit4uNwEcJGgxVHm7AHrOOQ9CdhPwt8mLC5oaykUFQNF
	 +zWs8cRf33aT7WLvqJf5kXLdxxRNGKhrSJIkPV7qiv06Yr2fiTo8xK6lW97GQErS7E
	 q0F0WT3q5MJyv9XLlWN9EoK8WpN3UVB+ELwaI74NeBHn7bPH3NK1Ev1C1ia1sAqaNF
	 2g4vN6S2qI/OMJehMly4iDsd2Oh2WCotjOpGdH4R0RLpYeWwB4r9nSdCjbL5CfeUFF
	 ao5xDQ0zBIxiIG4xJ1qw8GqT3CBOhtOQxkZbQkNrFXJrGAGh0rhpLuEltxKN7iSsQH
	 gZUPOkEX5T87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A820FC28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296099367.28830.12690369181297644182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2dc0f98864fcb90e0908c72ffd5e0dd0c0016c8e4e988b5981503fa7d4d7e12
Date: Wed, 26 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742960993
