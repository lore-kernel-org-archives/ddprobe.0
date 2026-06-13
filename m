Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD0F26F29C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781370394; cv=none; b=O6mXST6r6MF8Mwge9G+9zhDH/DcyYrrlEllKjL+MHQMP0H4WvRFBVLJ7ZADV/zBBAdmZ0zlZcn0GOfxt4Fu+7NwDDn3kr30EA8La8LpceKyVItXkkB/aJaIGtOrxBhHfx0HxEdcxEx/dpDrW5foIV9Eq0AEH820unWsQB4TzaJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781370394; c=relaxed/simple;
	bh=4YyViEc4Ccp1ggWdy/gSY4UwL3Oq8NxnPbEKVPjZXlo=;
	h=To:Subject:From:Message-Id:Date; b=eDpjzCL69cmfGzAdznrsizBM1kXWPrvWQt49xXotB80by/9b/Wzp0OeC/ozhPUZk+HTJDQZq7kctlBU4roTHWtP+Lyu8jxJY04FHaFvDuzDdrh/3Oaj50rfjxQ5BtC1VXBDjHsrdpLtqVdRgf93yo7hanzFH/85Qqw0iJR88etI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPpmIF6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPpmIF6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35FEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781370393;
	bh=4YyViEc4Ccp1ggWdy/gSY4UwL3Oq8NxnPbEKVPjZXlo=;
	h=To:Subject:From:Date:From;
	b=VPpmIF6O0kSDz+miEmSg2X+fse0n0dYCKVjbkwFKGofzd1IS6DH3e/s3daxd+2IGm
	 fvQeoKIDHASRH8LsfULgMvzpOZXcykFLHodBJFHVjIDSU9sWIo9DE8DPbMyOiwW3q0
	 bIvuddmD2iB9cUUI/y/hIV+nNUogz/nMZSK3E4pp4oufzFS8sCZlxtNGwq0mgAYE3K
	 edrgzchBVatot9LCp1ILSFtKeNfe0ocoiJ5YB3uYnooou+dhG29I6sgOe/So41rXwd
	 yisqiyaHhKg/K3GvcLFX7XOgkRsb2Hf+PYyauZjatgE8UAaRDy6UCJC5dM9d/2T0h7
	 X2d/zbS4pD1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C62CD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137039369.23896.10125839093310136770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8c3326b05bf6e93b90cc6dd000d5dc91d13827aa9a549959b8b5fb31fbad22
Date: Sat, 13 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781370393
