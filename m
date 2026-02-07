Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD633E356
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770497034; cv=none; b=ZM4muoievPb8cLAyY4EGLFjq6eBL+y+sRd5X7wi3n0/rnzy/YOXDJe1OjjX2bmmopE6swxsvheoJe1E9hrjLaQDivuaB3pFjkFAjVPVze3gKm3yl4eeYViovhr6IvJEb/1e6nOvL+iz/1HbKCh/nogUrtER2dUU76rv8qFFQKJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770497034; c=relaxed/simple;
	bh=HBMDTSQhGxX8mjGBvYTvmi1I2KPvMCdJtmGbxdrHPuQ=;
	h=To:Subject:From:Message-Id:Date; b=GPF8639ViWYjJtV8yQMNG5R6CcqIroAihNNM2pTWg32TInCALWokrAsLyIZddgpVMaQmoPHr3+fQqHfp3ysWA1RLklxe0gVcevxa1iwS9F+/murtZ6Q/T0Na3afEK8yXWPGCwA0auAsOcPJwDkMYow+/lR68zKAr2eMgWmIQoNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oec0qdIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oec0qdIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE52AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770497033;
	bh=HBMDTSQhGxX8mjGBvYTvmi1I2KPvMCdJtmGbxdrHPuQ=;
	h=To:Subject:From:Date:From;
	b=Oec0qdIp4tKENU7nAhgC3IWUWvxr2NbgXPgrLldu+Rdv6cM6eLsa62jzB//LxBDVJ
	 NYjo6teqaAj+DS8IneDVuvSiozTkBMCl7IeG+e45dhOmk7VAeG3b55JS8N75idPg64
	 xg9eLyLQEfA5s7rOlxBuA5Ua9eCOXS4TcbID455Cwgq4sH72ZlZ6g2W2oFB2kfXmx/
	 LLIS3m3SU8CnS8p8NeT9OaRa6MiD5URfYS4VLsOzJV6UUluY9RofYoOH2fqUxkYsIL
	 BHmDAfXNjpwqqoYaJC7NhUW+FfDF6oMILWzL8P2a+XaFdix11pQPF4AYTY1hCKcnMa
	 Cj/34bvi5GwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987D4EE0AE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049703358.16069.5080085010708275604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79864c7820068243311874d76e27be8bed53760eced460bf82c7571241aa478
Date: Sat, 07 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770497033
