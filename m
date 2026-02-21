Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FDF1CF7D5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771713294; cv=none; b=eohjJ/FfkhDmiGodozpkQn+lUtKPJhZZ2L1304MCUbsa8iEfy39WydOISlp/0Q4xv+K1bLaiqbxLH+nU1VGFxMHppiX3Uu960rm+UBLYVGY8Gt+8f1XJaI5rqgqaAGcEcVtcCyYwMFmGafATPg3U4zVaGCpjHNX0vs9iiqiiWWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771713294; c=relaxed/simple;
	bh=z8OEIII/6ig6muibEvEhP6rRJhN6/u2lyqeV/CryBww=;
	h=To:Subject:From:Message-Id:Date; b=NjWcjab4NfMW4WpVPCrTnmWqo7+hKvzI53Eo6Tbm4L6cMdGX5uv2zNfpIXwLhCfyRbujalsLlSfpgc0xTb2L+bXdeL8Qn4tiTAnETEzHwmgZEhxq/ONVYY9hH0TYkhhBKvdB7C+zWthmhDhrEduk/bVshbJnlZU+hL0UTBu5me4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv/6upYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv/6upYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E88C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771713293;
	bh=z8OEIII/6ig6muibEvEhP6rRJhN6/u2lyqeV/CryBww=;
	h=To:Subject:From:Date:From;
	b=iv/6upYxPg9+raunRWdqPvnT5BnF0NdKA9Kl4vBfd4F/pqQIy0KmtweqRf089sUbJ
	 IKL88IJWhYHvWMb3u+UDYqEKX6iHMHoe1l3Y+i9/AsxbEo3eTKqHwrBWesSylNzlbM
	 3i0ciEe8NTinsZ/PFpIjL6QdF/0Jr4T2EoAtuyWOjVoU7f9h/YEqAqrGVC5lVsDVCQ
	 kTRgqsEGmTgFGJhYKiZ1ZfvA2d5O6P0P1dL3/w/IbasZV1OC4aYkeJDK8+5b13XgcI
	 TQVCIT8ILtTdS1sYKbg//n+Gnyz9Sgga60ieb0fPFE28dIlONY6bC0CcgdWginr23T
	 R+581dZHMcXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96198C624A4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171329358.17390.16445623790301317036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fb1f390dbfaa00176f8ea36b24a1e4460b5bf276f11d8165a3903510553be5
Date: Sat, 21 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771713293
