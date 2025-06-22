Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6A1A47
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750582194; cv=none; b=BkuxlGft4rxVcxgoHA/k5DB30b+1D7tQQ4X4784VqtahhRaX/bevO3QxZHFUYbZUWeQigJz+BWZZoGx1EwtNOk4TH71YzyS4v1PiVAMHj+fFcXFlIDLR1TtUOlLOtDYYXk9KDZRe7ktLEZce12bBSlys4uaBkGpFVpjNMlUKvdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750582194; c=relaxed/simple;
	bh=yPnEsFIjkA4aorNBSVka9VAa78LZ0xFn8LDatBZ5SEA=;
	h=To:Subject:From:Message-Id:Date; b=gyk3tsg8b3fJAfsH/aTHRCma9aeN3clxvL4a7RhXUkGdCEiBtepAZdDlfJjd3XYOkz5G67+QNIOVQ3gt3HitLrF8AYYzXZzQCiK3UOE/KhvC5PZ4t/6CuzWAfxdUN2hwH4Iheuvuxq6nmUkHR0A91jW/RNseiygffLbJrtUCRg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZEB1dzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZEB1dzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4608C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750582193;
	bh=yPnEsFIjkA4aorNBSVka9VAa78LZ0xFn8LDatBZ5SEA=;
	h=To:Subject:From:Date:From;
	b=KZEB1dzgV4RP0v8HC25x+iYWcOwfKIQY2ZXYes+5+SE099+FvCwIay5Grp0CJzJ3m
	 ZQf2JfLWxEk6PRunhIaPXTKlbJwAE9DvpYwlyRBqMQ5nyaKG30HLz2bpSwlrQOITKQ
	 gxbNtX8Tco7UeizLQ6tWoVEEy1/M36mGpvfEBtIsUV/TMQMdrEBAZPiczqiIGL2zCu
	 nm5roSsSkwVSltWp0k5sZF7P/jkgW5wob/XUBbN5HmZPFfyUPVbewNZeNPfG//RB3U
	 xQg4+TBImWfX1zPJ7MdPGepbcnQ69QG21fxcUP6LzU3SvF+C3BP9aBLilWioaJz59n
	 pOUw0gdnFA9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91930C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058219357.19085.5651425253235385366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ecb755b996ef275f44ca768e9ad26e215f2167ae396fde92cfe3110d5a5c84c
Date: Sun, 22 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750582193
