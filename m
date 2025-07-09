Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B91EA73
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752046194; cv=none; b=mo/+1Kz44Nq7J2exnVIKFYdkYLBoCl3zLSgNnYxXGIg3615wvnVoQgpn9r4bPps8jXV8opVigH1ZjHshkX8WJFsyUugCwjn68+8mk5ZBZAgxY/BhMTSehk2pSzFRKlt6zl5wvwQVXp0mMGnDMN6KNYg/P4Xg0cpZpJYeohFQMiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752046194; c=relaxed/simple;
	bh=7ibH4H9VswUsclEVOuz02808RSpC//x+TMK25MPik3I=;
	h=To:Subject:From:Message-Id:Date; b=cGludRaaL+ph8YDuco58TW3bw3pRFKmZiMdxBtOUzC9dLGTAzHuFIXuDch0f6lbNVQBn+RClOGuDADz0eET1ziguCvfHzQUehqacrkZhuue6yTqn/j7BWyeRuYKz+pg2D+fJJrtHpzXSjvXMPCmQuCXu00BhHLoRdYQIlEHIqps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9+2/31u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9+2/31u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752046193;
	bh=7ibH4H9VswUsclEVOuz02808RSpC//x+TMK25MPik3I=;
	h=To:Subject:From:Date:From;
	b=r9+2/31uYYZm5Rq92ZjiRmVMwrBsio972/H/LMQJ7thv8erchXeJAuy2jjjG1SHw+
	 mOK/NOyfmPoSco0nQJwWCWTf8FF1wutyFfx6mcT4pgpKHUHRzOv6kGW3IS147YttqR
	 aoRoB/1ttDaMyTt/ngFwrvej2lZFqrDDv/d2ywr9f8mqkusqflvDh0UwwJ+Cm3qb9U
	 HSLfm5EO+o88gfqAGs68gKdY+kcY8O0/wPymA9/p+gt7/i7mj/s+IwJ4yeeZ3SFWMQ
	 0DNuY3kKY95hywgh+2Bk3uuhzthdvRdv7I2I8VM6I+oBxSBQrIxUM1M30q9Wl36Ibc
	 Z3WrDodNKOqpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94861C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204619357.24611.9876369896946681944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03be72f52ad1a057c1d8b8b4e54d10ba1a0c9984c72632ce29097beb1f1dda19
Date: Wed, 09 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752046193
