Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F1E74049
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717055063; cv=none; b=A78XDvpXFo/Jm60uWS8OIpXwWLeOC0Af1rw0YzBEyrvK3q+2RsGIEnnN/GBWAvHCIsMw9sXwsfY19vkWJ2vgIRMLPMAsw+wuTNhsEwm5AwfEks2u7vA7Z2gIz7issb+EYTTtu5fDc7BcCMKncPkcFWpbjNfzJuDynhWXiJv7N5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717055063; c=relaxed/simple;
	bh=Eq9JWfY8ydPCivYrOQ3xcvL1JCGlB4Zf0OSArCAL95A=;
	h=To:Subject:From:Message-Id:Date; b=aqpBVWB7hovUbqz8bNd+j25MrWZOUC8Jl6PDGL8krEzvXi1ExpJZHLlpRX77SIZ+HPHWspnkscOFZlqDqbwjj9nmfMCG/pxWKE8JYN4zG4fJHVd8k5QMbTjLI0tDYKBXHHRPw4WKnWO8PCZudWyVGFO60thyy2SgIZjYOOvelhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuHeJd96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuHeJd96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC244C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717055062;
	bh=Eq9JWfY8ydPCivYrOQ3xcvL1JCGlB4Zf0OSArCAL95A=;
	h=To:Subject:From:Date:From;
	b=JuHeJd96YqYYTjpEakei0WQf//P/lh5m6cWxD0k3yxirZec3x1AtYH7ILw93lA8WM
	 pkYeCiL3wSbcMXSqZZPmmhYTjojqzGMbkZPyuTGTaC8zNzoke0gSxup1RtucVHX/7x
	 NNN4HbbeAYHV6YzSTAdAUJpdKn/QEnN7rkHfTMvit3vOpTXEiGEnFDSunKUc4g8i4h
	 txpxqBbyQ+m6NKnf1YgNbEt54zI8dIg/5+yaZT0SXaJp0e2rYTH4gGUFP1/eAkZA5O
	 ZW3YbR3a1s2DNtOPv1QB1PQ6tCdcMdiOeQveUQ0j4qLf91BWWJSn6Y/5k1B6jBUD7M
	 Nz7PCwXOYOheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BF1C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705506279.16035.1840682061660427119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f687dc397efb6552acd00285c14ad3f07986ae5ca5bce0554dbdbb976c5de43
Date: Thu, 30 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717055062
