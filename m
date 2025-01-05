Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200702576
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736121354; cv=none; b=Ls/DUoRbCGFwCRh0Lsrxj72RPV28XvTY/a9Ab9MTojGrTXUMZI3oTHWEjCgD7t96s+KKubxr35RMM5KQCveBEh6G1J1uxCtK2zPwd9hYmAc5Q0m6nD9STMkuNn90ah1OvVF5GO4TpclGYWb0Zs4ocMkmUGrOh3n5EQIDyNQK98I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736121354; c=relaxed/simple;
	bh=zjp6z4oClqenC2NysrbH9YUeI2rJ4R80d7lfOxtG0xI=;
	h=To:Subject:From:Message-Id:Date; b=byf9Ff7RRD/M9eq+hEAkyap1bTrxSzjgAueK2dI3Gyz6/zSaamXnNDo/rj8GCYzlAIsqgZj1Vm4eZ78CunuV16w+K/WjPIpjNCHdpmY7hvbhcNrwovI1Fe2Dkfq3Z5LjxWjFH6PRt75UHLjPO3bxxVJnUxYA84Yn2fdbjPmWJpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDMyPEMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDMyPEMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A360AC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736121353;
	bh=zjp6z4oClqenC2NysrbH9YUeI2rJ4R80d7lfOxtG0xI=;
	h=To:Subject:From:Date:From;
	b=EDMyPEMxMBXXH6g/WVwpngD1juyXJv4wRwUTTbLjKV63Cfpde8anFHSuH+/zCHkoY
	 eSXuCHYm3XWF4H6SdPXC/r1czorlQXxwmrkSU+SCkX+UupvDfHp3u1ZqXB1lNOCqUs
	 RCsPZ9S2KWSJpyfDYkaa/J03fK1LQv+j93YVRUMYvIS4s0pEHvpgkLqLDdRvBCZs7g
	 VYgwnJKfineYDoa5XckddzqK1jm4t91wiiL5pa85hX89UgATvA/22BG+fJAoBMHZaN
	 YsCOPKrXM2SW6w4OIBLXF5pxMU9Zw5FS9NeP853FIE0b7vfDYjkndJ1u+eA3Jd9+QF
	 xPHcCehn6zWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE7E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612135358.32065.12861993113054538110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11ce0d3333544e4312eee433d33ceccdba1b5c383516f0698c77b6e3578d28f
Date: Sun, 05 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736121353
