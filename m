Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4351A23A6
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748341794; cv=none; b=nJMd6/5Vcjhsvbp0Z4D9ewkgNQab62/z3XmCLKxI+R9DhmI1d4ByNUCXLx1VSzhSBCihjph+qUm3ocwuLvcN6IPQQNXe9JZ9Tpkwj5v8brBNhZDZAfMtf9oxRAaJfvgPhqmpam+fp5+lmuf20qQRcdxoLBfiOVPh/yVZkajMnT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748341794; c=relaxed/simple;
	bh=+e4fycJ204NUk6P94cRc4RK6vSTeJ8QJVMKlMVxPXXg=;
	h=To:Subject:From:Message-Id:Date; b=diKXP8t3b5qQEL2FVELCfbOh+YqNte656zhn4SmID7js8bgpyhotUFSAm6bvKoNkdInHqrUYtItLEUmutUetS8TOHTESfmF/mcmddTHP8FfswGKUDrRoVY0LBTkG+1Y6/gf9mbbN3r+iH/rEU4OV1DGRP0h+p4Kdyxbjp+4D7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7VSUS2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7VSUS2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02ABC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748341793;
	bh=+e4fycJ204NUk6P94cRc4RK6vSTeJ8QJVMKlMVxPXXg=;
	h=To:Subject:From:Date:From;
	b=a7VSUS2AqbAtHmAi6M02sTdWwgGV413HZLL4xa2AzgRobADx3rYG1KNV8ex/i0WWl
	 oqmCgTAhh/SbpJREAAtxupKwgO1t0hY9Ywp+ySdKcOydTaIPvjLC4h/WcmYNp/KBXX
	 bUbrsDHOf3jGg667557Ny+Y7qZUMokLKdm5dMEP7YqSn7fdg17JRjdlqq7w9aGLqvp
	 38aOfZpb3NbRpvOwxD4pCog3x8NWRviOWLW4T5Y1wlf9S+k/TnfcagnyfX1PjX1Slz
	 PHjy3SulO1kUzzwIYyd5dFJseZsU6+9m7riFbUNRqakLu0UdD6BwDqcyVWQ3iIVitw
	 kjAAQCfQOwA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF32C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834179357.23585.864932332764212188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff01bfeb72771a6d2b656b0a704b1c7073322346748b5815b5c95304d7021625
Date: Tue, 27 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748341793
