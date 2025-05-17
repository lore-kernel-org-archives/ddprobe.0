Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C11B6D06
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747478395; cv=none; b=Ke0ukKD8Tru9gCVBBlki5CCak64cnGCTz6M6/U8bW2rMeNhJWwE4ZeV7m9AbobLJ4vipLLGg1QT02JTWx11lneCpFa3iY0Q14JxeCfQ0BUUAca5onU+y0bArtxX/I6fg32rzzfYDVfB7hIGfe5ddK3uqp3GsxcQHxNMQTGwfZ7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747478395; c=relaxed/simple;
	bh=Meho1Cj03xlMPwyWI6b/W6/uXTjsVpnXFBrv7ZnwmJQ=;
	h=To:Subject:From:Message-Id:Date; b=YHhinsbvfM5jJ09+JKTvEFnhOg0QOzZXhQZzgJ1fpR/lRY41ypoQmlPFoslVSKjJCjk28jcSe7hR2sFrp2lH57wkoXzevgPASJgyJ26DPRN74V3bb16Hc9+PKKQyjmpScus3igU8eSohzaoXvh/eKAk9IfN+LeYNBM4FkP8rzIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSDss9FN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSDss9FN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747478393;
	bh=Meho1Cj03xlMPwyWI6b/W6/uXTjsVpnXFBrv7ZnwmJQ=;
	h=To:Subject:From:Date:From;
	b=fSDss9FNoqGXqFPEantPqQmCVfNg6BGT9nuAUmotPkAxCImIw47P2bGx/VlGyvTua
	 V0R3rQLLc4laKYBmS81hbhLG9zCUACiHJH5PZ8cLhoO0+xfmHjgV7K+XvzVkF2MG5v
	 RtLbGPx4C0OJBlsWYO5Q2HZ1Rd3nH4BGGskRz/gKzPpeghrLNx7dNXCadzx54tNTaE
	 dPFIaBLHMvA1mmzFODNnBAdr3c78SUfYhr4RESBEkvRQlUAGSlFIVRqnTeekskLjzK
	 KF6sDLjtynoD2RgVEt9TFJAhKRMcAjDtjM7mVpIFMzIZrr4N9T54FrXjzSavkV1Jpf
	 lKyVwMO/nZugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E163C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747839357.9855.2448105743931208361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dcca539e1cc26bceeab9be44e2af74cb2b0ca646e51d0ac8760ad94d23cfa2
Date: Sat, 17 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747478393
