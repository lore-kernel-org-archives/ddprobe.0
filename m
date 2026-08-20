Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2612F8BEE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787258434; cv=none; b=KcO6fH+6GhAzANDWw/nCsNf1dCt3a83+RUQVEBVbGzstNTTmZJ4LFGpNnARvAWW19hF2OK2TPlbzOcD1LD1LUWP6pkdTuYGYVfB2KLfYZ85Z6qrv0HU6pSVXhGwgi0XGg2puHg6Fu43s9m6Y3wpoLCs1PP5/wIQaJmfK3Mm8lMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787258434; c=relaxed/simple;
	bh=XaLH8a0vmo8duUkriES2HLrISoDA3IDaacJJ/UMk8Cw=;
	h=To:Subject:From:Message-Id:Date; b=RNBLolPHynVPCsqVvwubTs9ilaQSa/dh/s0h7x+3fnlvkRKGX9RLxHmPowoG22HKqA9+4Jxpe5qwLgMxaSb2+BGqrLAhKNkhPXCqZyEZ3GYM3KSbB6/p7Ed4geKXfyd9O4xefAA2pBLFK3XoGnOGoLC0QwPkxtbEqf2M2BzawJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF/8F45N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF/8F45N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E31C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787258433;
	bh=XaLH8a0vmo8duUkriES2HLrISoDA3IDaacJJ/UMk8Cw=;
	h=To:Subject:From:Date:From;
	b=eF/8F45NpWSMqLGgB7FGdKIzDhEnwH14X1xm1ynuaUeE8uBp8rN2EGrVybZaWLCbh
	 qNtmmxJyrciOEY3w9VYjAiqKXrVwHx3fsKMkUljwqvG05s1BDvZ8EgvDEXcOpxpPow
	 ibKnlQnobkscG8MLu9rE84qboQT+vUerVCG0AW1kqqjST/4te1nX5LIlj36qsgvW5C
	 AchQ6qxemyYKJjHhIKEy9nDBsOOJ376g3D7tR1INfef5iTNjBhW5O3IJwxvZpCyHjB
	 XamKLKF4wwukfxLOG3weot91eLnf68aJb2jkOX3ZpWq71Nfj1c1d556bHE3RwBOBaQ
	 Tl1DDgdFbQDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA01DC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725843374.4718.4255307043275778937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04fac6c1c2746c13ba0796b4537ed3c61bbd8d9811b806b7b12f3c6dff456ff
Date: Thu, 20 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787258433
