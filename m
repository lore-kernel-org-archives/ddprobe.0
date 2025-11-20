Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431FB209F5A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763607114; cv=none; b=fH/cP253SprDN1TSo77cuJzHSA0R6i0n+2cNXTMZt7ShO3LtoTImL0rk3W5R7NI9Od2k5GTO4ZwCtzNVuUjVriv9Y05+4bPqD7LU041MF3O4QOwND1qztlVdnhXAN4/owkY4RA4KnXm2lRWtSqoLWwXp+jN+/kdInNJIGylCgi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763607114; c=relaxed/simple;
	bh=Qkhqeey9KwDI5UUhPzh6Eh/J38Jmb1aUKdSwPfdl/dI=;
	h=To:Subject:From:Message-Id:Date; b=OP6V5RKEQAxNSdpLpenRbdHWU/CjfPkRtrtgF2W4Tnd0fiT6ShCYgB7NAwusQbk+1ChQ/3bwz99svD0ukohvWQIpDo4EYoRFU5/8V7v+YDgfgrqtcAO7nxYCQrmx+wW0vz5GZnerHJdaCyBJGqEVnLGMIFHMEsLYRdrpJ7roy4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4I/Zd2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4I/Zd2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7046C116D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763607113;
	bh=Qkhqeey9KwDI5UUhPzh6Eh/J38Jmb1aUKdSwPfdl/dI=;
	h=To:Subject:From:Date:From;
	b=g4I/Zd2DhwnAMSdgJB83w0R937r5tuYiGaPPFGpUZtw66lYiy4XjDiAlICvsw7NS3
	 6fE1W/BjnllW1ri0hk9TLy0dggnzdfGr34qfBWutzgH42EBi6xPNytbIiFA5H2cn4s
	 dWhH7vPRQnznB/XDew42NKs1NZ5LNNtvhVsQ2RYc8bWuvePhpwvDlzRPfrP/WAyCpM
	 hqUpFWhSLuJbtUtr9v+ntHSIsoiqgSaSFetCbf2RK1xwpUGWYInzweHT4x66gt3QBb
	 Y5zaXeK4CA/mvl+3U0dGvGF/YL6Svus5/+nYNUaImEG/3Uz3wjL76zwlbZWfeVmjmN
	 hx6C+tg2Rk0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A0CF64A6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360711359.14234.13694988747225745759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077294ced01670cf72309fb1099d09a436e3e8183ef354e98fba5563b4d64187
Date: Thu, 20 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763607113
