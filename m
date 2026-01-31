Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB8A3191D6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769841234; cv=none; b=WuKVEVjFKM9NRaBUW4GK7L2jb3nm3IPTiBZaSyOnXwfva9RsNHePcBuF51WsFuAraEiz4bQB8OX3F1nGckFY3vfpvHPpJZ+M2IYAPDWAekhOQJM5KUHkq6HvI7xXkJv5pGgPkFxYIyrF3ipxJoEvLLAof0Um288+tL8FuPWbst4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769841234; c=relaxed/simple;
	bh=8UCQHLmGYeQiiM1FvxR9Yc17YeP5eeUij2gw3M4NFYM=;
	h=To:Subject:From:Message-Id:Date; b=c8YAvgbl0FWkfltNALdYG0kWi9meQs+z0MiBRKHzG7BmBM7xcshi171KHbXnlKxdFpfs14hPEBvNLvvnusUg3y3L9+zVwGSV3sqv+HRMliTcdC7WAMJ26NnCP2DS2ehMEvA7/kZbGju8cGzcPkWNR5DlUFHGINBDHlAJK08y/dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6TuyuJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6TuyuJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CC4C19422
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769841233;
	bh=8UCQHLmGYeQiiM1FvxR9Yc17YeP5eeUij2gw3M4NFYM=;
	h=To:Subject:From:Date:From;
	b=g6TuyuJ651NpKkPyI7VyV7pmAwgQ5qihWHm0b15gT5dMmQgjVlcIJLRro3YvEMYsb
	 LKyF0BGLKvOv8pCWasTqqbfI/7ehQgiefF+bdZ/eHTLglNxiX8Rhc4MID75mU8diW6
	 l8ReeBXdj8EJQIrvyh/AkYYGEVpUliAJrgWTpHxjgUr4V3sTkAuW9JhN6rFQykKtuY
	 ueNtdg0YwnMS8kGwglQdssYYU7XVxT7ljsc5UbYeyHwFErPSQBxzf4SiDrLOXZP9fF
	 /OLDDXVwkhgfORfrv4n94+ftw9a9m5LkfYsb64tdnVmoVDHWtygimzUxPClZX6tiIg
	 iRtTevteGWKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93837D79742
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984123358.28558.172709529720601760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc7ace7df517a0c6dc3bfd2fae771decbc6a7b6ee41683c02b9ab5614cb8424
Date: Sat, 31 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769841233
