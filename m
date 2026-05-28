Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4878832B11D
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779995554; cv=none; b=bunPoPRY6t6021jSW+MggJ6/Lg2EdUHCZwgbiqzvf2+Ep9U3qDvIENEg0AaPfNxpmxA7dTR0PRmIKfbkw4zG/sX9dWI0op0+o4PA3l7MPMIdMhcnkveV0HSAhsMAuXw54PwWRSJG+qW2wMCFGPKF/1zoXY+v4jE+jP0w8JnKTi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779995554; c=relaxed/simple;
	bh=XV4b1gVwjcXz/1VRWC7rk5jIOYus78dd9tCSS1uM69k=;
	h=To:Subject:From:Message-Id:Date; b=KaMWawLCiKtoUdqor4uhvvyF2FMby5SHPxH0oS0DJ1MgfJWTh9tJGe461l2K4+VWHdkhO8Rz0BOK/iLfVLpOGLdYipuMlS1URV+E68PZu9Tc4fz+hLbTlUHisch1hDyG4ek5MclzGmc/a4Jf7FGeIMfvPUVLDEiwYo/0Lj/1o7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp0Il2wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp0Il2wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC86C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779995553;
	bh=XV4b1gVwjcXz/1VRWC7rk5jIOYus78dd9tCSS1uM69k=;
	h=To:Subject:From:Date:From;
	b=mp0Il2wceemZve0ZqOkgGqKikFoDqNn3t/hAeQdYAgM9tsHx2viQbG6II8rwESL23
	 f8PrdtSPegn13X/GYAgWR/3Vfx2vmnKB/FO33wUnCCjVerbnEYWZ8ZpNBuwA1YLxel
	 e2kKQ7ffgJexxqbFFOWg5B1ZNwEKRzkJ9eK2RaTjKbMLMZyo0RkrXGHATSGexMtrvB
	 AzVnhsQi5xAGNz40NjIj/WTx9MLV1Vj6ezC9IcJoP67GWzapr6dhDPt6yIkKYoHM3U
	 KpELXwqCB3kPOE90u/Blly3fF/kRj16nswOA/8BiAfLk+UxvvKs1EhVTAnQ7Hg+3aF
	 wb9mtKtkHEVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BC3CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999555372.20356.15139963085856076100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fc5f409729a88c776e4b621ea09c06b530a976ea35cfe8168b89ed13c610ec
Date: Thu, 28 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779995553
