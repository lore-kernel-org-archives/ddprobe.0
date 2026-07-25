Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56666296BC8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784986834; cv=none; b=JaOMcoOOGXJkk9Hivy+V0jU8Y65+Ddotbh9iO4ohFV+Dc5/u12Z5bZ9t1Ppm6BWBEaRsyhxQEzX0Ojp0iS6gl+jUt7+ZTsoKgl8CoKs9TaIPUTsaD25X8PydiUdopUIFPSThlogBSM2ZsNrU2SVjvI7DPh6l0/yeV0bqJwDXO4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784986834; c=relaxed/simple;
	bh=MAaFDfSNWxFxUxpJPityGaI6gDaFy2beosULUElz5sw=;
	h=To:Subject:From:Message-Id:Date; b=rVHtPV/X4OZd1wogUOnk/zxnDZkHj77cow74ve4Yjcrid/AYKodsLrXL45OPzE6rV2Wb4XalyqhuSnJFHUKK6mh7/7z88v0G/Um3Nlqb7gxLm49+TW6W3ZU3pa8MyY+avB49gIzQfYHsvfctAgbH+nF0jtIhavHPbJbIblHBq1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpUtSC9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpUtSC9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41E0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784986833;
	bh=MAaFDfSNWxFxUxpJPityGaI6gDaFy2beosULUElz5sw=;
	h=To:Subject:From:Date:From;
	b=kpUtSC9OmmyUrh41sAiDeNSG7nSbNaXXxpHbdJCwAmiITidkgavmDEr2g8e42P6KN
	 qxJIOJN1EN7r+w1vPQE0Bks7NNWHvpv7zdRID53Qq3i4JzBiPgHxvk6aJVJGKtftsd
	 OcWviHh7+E+vhgzGNMzGlgNh5db900+Zps9SLMd5/eNn4Hq87cv906dtjmWoM+scd7
	 oBq9oaQCz+e28RVVzfKXarhDwPrzQUZx3FlQIO/kgVt+lYKmM2uN4waxRO4EcSkDeC
	 Vxjp5mCaZ8s73e9Z4cO7NNrLKaxLnLLpqXtrhTn722k7QCJxrEa9dlZemHgikx0NMt
	 g4KrrOSCaSMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC59C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498683367.12609.6473626871924011120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f312414cc5dd410ddfd2a062db5ac2deca334fb0e7b4211884fd248caa91bb
Date: Sat, 25 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784986833
