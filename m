Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470D02EA47C
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779914554; cv=none; b=I0/kxXxj1VUPj1BLaP6gq8smocvD4Wom6meIsyZRkiPe1cKly3oyv1dhDLcDNfpPGvBrzPs3TYhzhHywNAM7bT04EUe03WkYgUXF9HnpNkLfJzKTHb0VrLopegyORQzucW3BBMjIDrGYpMvAXq3yt4eK5+GcogKK9Q3BJpuH21Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779914554; c=relaxed/simple;
	bh=3WvHkoSVJxzJwXCm2o30snM1uK5lcuZbn9ewXyM091E=;
	h=To:Subject:From:Message-Id:Date; b=kDOk0sbNODV+pqaTP65Gs7Zr0Oi7rF31flymvLxMOoZPX4LTFBCWTxAQ4gsjKuk9tRVswvxX6czc/PXwgTAw6YyPuvMkuxH1llYtpIsnm9n3oIoK/8IrT8z6mPQGwbIo0xpHv4jdEsyeW1NWKYVSRNn4b+JJrIQg3JahSGKSb9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkgThC5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkgThC5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82B1C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779914553;
	bh=3WvHkoSVJxzJwXCm2o30snM1uK5lcuZbn9ewXyM091E=;
	h=To:Subject:From:Date:From;
	b=FkgThC5qJux7j0tHBulcayDjxkqNqGgPalbNpAsHhapoyRM+ZiE1A5VzHMgQOdpH0
	 Rb1V5756PT+e3aPlp8dJu0Quag/ykbpvNd2u1XdQXmHi2zG1frdaMtaBcTDj9iceU1
	 yRfTz5pPD8k1kTXmP40Qpyt3V75nzAuCG/Galz9Id40+PqqdhRevHT2Z59GJtx7Es4
	 7ykmWTMkL8VsUAP9QOElpGIPzHk+gs7be6HoiIpZF3b9pM99rSxk5jfr2NDFzFikVP
	 dsqTIGpIkS3TzDcfZo301nqsG3yzLFuMsm7LsJsiaQYqorks67MankkSK8NvdnEn/t
	 AmqUtRHAXoXfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA538CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991455368.23718.15212057598129676095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38e9c83eb1d2f5df00da7a544f1a3a375c30eed8e1dbc43b9ebdb19fa0b5bec
Date: Wed, 27 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779914553
