Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59536156964
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 19:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713209963; cv=none; b=eiMG2LEEsdeEgG0Qb0Rwu9LI0BroPl5XOYL5vv/bOf+LPY1X9l44u3BFq7T+4fIbZQ2otk1DZQZcIkbDouSSd30b/wd4yH2BI0y+YZMon05BZzFOFC2t9Ii/HYzGcjT/kgt1lPYbl93ayUeelOniRhf2JsBF3o1PAFsy3shMIos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713209963; c=relaxed/simple;
	bh=D8fXurCYEPhXfyabPj1wIlLJAxWTfHDrUAejn8OIU8Q=;
	h=To:Subject:From:Message-Id:Date; b=tF3LPYI5Ftevo7e59rNzZCr2uO5bgDcD1rt46YEOG5gfXNsWB66iSwa9xICLtTM9ZPoD7I6zBlV2SUQ8a+1pkoaFbKyejGXh72XDRlRMcFwUDHp7nJQxK3ikIIfn/jQ6EG8txiRFxkn8M5AgYki9E/GwLhT421Sm41PcnFjsUUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K79gWAs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K79gWAs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86E6C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713209962;
	bh=D8fXurCYEPhXfyabPj1wIlLJAxWTfHDrUAejn8OIU8Q=;
	h=To:Subject:From:Date:From;
	b=K79gWAs2cUVEaU2GdpA2PzsYP/DiBXG4vAXciH9/KiTz8MdqeLQHdik/TdwomDAjy
	 G2sA8JOby9r1gtgkgyKQbaakl6CWbGin3SAhIyghtGIO1e+SyAJQ0Y8vz3/U+Yf9na
	 L1WDOSHHq7VsRtcJNhZbaMTpHAZj7VpDT5PG4DDXYjbciozuT5hrrzeur0meT8G8GP
	 aO1qEDTCpTgYZSRhWW+6aWZasmhra7PZbG6PGWcMBnJzSoGOlElQg76gPIYEYndy4T
	 2jpWRAjEqVT1uMk/bf2lo21ZQGibZvZt/9Ko20MOdtx/vpYVYNJlzu+3zMG3b1Vv0P
	 9N3BSD3WBZpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B88C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171320996275.23846.10088135919982842417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445c7177344b736a2559302a944b100d96efc79ed8d9e00ebce02efa87be1e20
Date: Mon, 15 Apr 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713209962
