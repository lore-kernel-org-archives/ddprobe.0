Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CAE12E7F
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754427594; cv=none; b=B8shThYTepCRTlySYC2HfOBk2OwZ66zCnsFW4pg2iIQJ5xJLwdJCY8/7UqFL22FZvNDRJZmUNLpa+W2wfpLEvb49fppVGhxR2FlgfxCS0WGvbohpGTpOt86dgMGCy17sI3xcOoV4ztzcxdJoIrGPhCRqq7siPIODG+wmI3WdWu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754427594; c=relaxed/simple;
	bh=iO7hVnkA9VztVfanrCHGP2qxMr+gR3vgUvIMkxcsb34=;
	h=To:Subject:From:Message-Id:Date; b=ttcuPPGKs7iftAONkv9T+lk5/VpPoD02YXrK/tvH28Lwqc8/9ciRoK5m2F1ZbLOiRr3cn1coNovJdnburBdekHsrTX0F6bdELOVHPUgtERXBwb4GWoSS/dY5xg5QfH5j1rKSsUUOSIj4tcmWn4C4WJWkP21kEshYQrbyA8on8/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwXAppib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwXAppib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D6C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754427593;
	bh=iO7hVnkA9VztVfanrCHGP2qxMr+gR3vgUvIMkxcsb34=;
	h=To:Subject:From:Date:From;
	b=CwXAppib+wgJ5D0ZKcDmnQGqUU0rz9vbwn/gw/rfoHcNJmfWD/Mpv8kCw/DIDVw2+
	 /GLjk9oxqg/+v792od4mrHSKAfgGi0Oqw4hsoqfF2emOphHVNCZcGykfTosZddlPD4
	 eBWhB6HVEeJM8z1MZ/J8KDN0xY0KIqAcrYnmbcHdP2c79yULPup0LKSz377LmOMhdg
	 hp/ipGzf7mey3GKfQevS30fApQ3a+TSa/fkLVS+D5zKhNblvsKyO8XBfAvt/5KbAaY
	 /0vtL2MA0QFNrcwKAYC2cXC65XpxzD6jRC9Uyqd2kHtX/wqarHRSlBA2QIDzJHbEd2
	 wmkTzwnm+O9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B8C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442759357.2823.17271116693617811333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f624a33dc07d43603c0192ef679f33badd602cdcfa30a624824aa57dcab8dea9
Date: Tue, 05 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754427593
