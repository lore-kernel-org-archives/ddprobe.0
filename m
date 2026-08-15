Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5EE29898F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786780834; cv=none; b=eZ4OxAYRaq6uaMEkvfyvrs5OohkP5MZd4C9lMTSnwPlsWvsEc249L+NUB0k3oHEQQx5QOEMHo2EZccCdSxGZhserCrzHqG6CKn3HtxfATyrM4idOonlLDE8oFr2SlxC2q0e3KK0fN0kc6Lio0A1Apup8cLuhT3wBZWM6jUC9Xoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786780834; c=relaxed/simple;
	bh=js+R4Zbo6ygUZBhSU7cSFc5PB/LhA7k4okBWDILIM7o=;
	h=To:Subject:From:Message-Id:Date; b=fyTf25SNGP+5gk9nB8JwavYTn4tq8H+8lT6oXryYZOH4v67WRxEuTcdwFUDIpmp/Gb+bUEsMhN/W+yk7LgvjMfRl5jA74slfOrnc6QpvOXvCaaceR9jf1iqyB4qSjzMA8BWeH88G2u1yNhYM+GPXe6pz0kqgFMStoQoEkN9iQIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPpyQ/l7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPpyQ/l7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D021EC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786780833;
	bh=js+R4Zbo6ygUZBhSU7cSFc5PB/LhA7k4okBWDILIM7o=;
	h=To:Subject:From:Date:From;
	b=pPpyQ/l72wPZP1UBvZuphxJCau0gHUGPbzWhGjrqDBIiwJko5/XLexx8de+yC+xI7
	 f2khoUDyY8kta+icSZwpABDOZgfBHhNScg+IXt76beLJ3e4j43Af4PW7y77020gf5K
	 4UmhLTqJ08SDaU+p6MWw/Y/98XO1tuhYs/joqsU0LgToWCdKzq3eSFxkSqYmzt88Jo
	 07Zcr9z3FP9+X2MlX8WsqFtavHLo5+e6xp+5jo+rJFHVVqdGcvg7S91t9hCSONi40D
	 bkx44Dy08luWhuY1w0ksw43xti3x11DZUS+KtDYeAcyDLhsnxM6nsvWZO3iBN4ib1I
	 sN2SLbN6FVMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D6C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678083369.1388.17744148713132092544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cdaf2c2466cd407d14b85e023c4c4b9926b4e3ad9d7caf5f109c9f305868a2
Date: Sat, 15 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786780833
