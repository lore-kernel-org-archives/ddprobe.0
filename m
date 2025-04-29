Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CD13C3F2
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745940594; cv=none; b=Fx6O3rwHMz7Lbg7HMqdnZOEpU1gdX8YyEaBD5mXy/eoi//LOOeIyUV1XGFakQenoMaRAgTkThfbUzqvjwFX1+hG38n7cQEZbuRPFcI5LxEUBpNBBs7bVw10XgmWcP7s5tgnFiROrP13/oyuc4JnpW8Km/ZrRiJI323MSphGt6GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745940594; c=relaxed/simple;
	bh=XJYFA1MUwKax+JeW6J8oBgpXz+nX4aKqloFA+qF97FY=;
	h=To:Subject:From:Message-Id:Date; b=c7iQTvFsl8NElMK+g6zQ4gFRt+U1ABZj528jpnngnCWE3h7tlWN62PEhP02+6OaAnga1xVWgyEGlWj0Vuj7eGblbIZU2P5pHKMc+P2DclTdpETVCiU9N4PU8EmOGGwe4Rpg+7BvuloLnrx+jBzfPNWM3Msvx9y2SF251h4iTa/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzlB6pRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzlB6pRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BADC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745940593;
	bh=XJYFA1MUwKax+JeW6J8oBgpXz+nX4aKqloFA+qF97FY=;
	h=To:Subject:From:Date:From;
	b=DzlB6pRUz/0UrPJuoSzwj+sJEAabXIgDmeY22urFnd4eGRB4wkClonBd6FLLsm9Fh
	 /UnkjqBfi9u5UL2qSS6iNhpc8zkXddDavFtlTfnsAe3DHEut6MeHwU194+r6y37ANf
	 7gEawuUiv+LU2PVort6Oji5/2569Zjuv9iib3JHm7sDwjk+mmaWfdUdzTQUdQMm2Ok
	 tXneus8+/kw96nN1gKkvblgBVK3VPLxL5G5f/GZ8Q7J7mzENMpEzx7tZw2tcMI+wI6
	 ZewcsTVFa8eNR2dSuycvtYF2t8JrPy7vYregd5i93H6QE+J2rdxrQNjpV6n2m3JN5x
	 thdxqCPIrhG9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91396C3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594059357.13409.2358199781761037913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2b117de32bf8a658eecadcc866b57600f82c57175b498df1720b83d3385d1d
Date: Tue, 29 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745940593
