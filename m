Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9474A1D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748572794; cv=none; b=XlPn/PWxQJhqrfFy+WYP27SLK6ImhXO5hR+xm6ms7BmafIozb98ttAqHoKRJOS4lL2ecgJOuweIYFJwm0PvDnqUHm5crPCyPsaFxiIV7p3sJwsgd2q2RKGDlSZClpD3nOxOepvt4V9Kd3ryg61k88ugMYz5R/AjlIRw92IXiKrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748572794; c=relaxed/simple;
	bh=nT334DsMDBMU81z8hIYY0oVIb71okTiviFLNo5uZ33o=;
	h=To:Subject:From:Message-Id:Date; b=M/ckLnLXEESlfYDK9Dndn+5v8R0k5SP0jDT7832qrPUXUnd/fjUU6eN+LOeSc4qKE1xdefm2XqS2xVyiGfyNDO0qqw1Q5F18auGVhvpXSfIDzSwNL1XciquNglhwzoc97k0f74+/u47LXUPy9FGAMH2iQTQzQDbt81z75Gw6aZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2h1zWoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2h1zWoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3065C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748572793;
	bh=nT334DsMDBMU81z8hIYY0oVIb71okTiviFLNo5uZ33o=;
	h=To:Subject:From:Date:From;
	b=m2h1zWoOg3Vdo3Vxw/seClX/2ehK2xz8C1ZMmzoCfAb9O/Q1Qo4kbANIpiQ73iFDP
	 +nXbQag18FSDxd8FFOsv7cyBgcVttzjx+lS4vV8r2PAGqELxbGLnGIMK1oT+JGEK+H
	 o7UuOvjUaET+nIuReww/DooQy193lKN7vqlmlylSbH0F0ZYUtxX/WXQhrULcu8kv5J
	 Kd05EMAg6HnWze0k2o58pSLEKdzccN1rMjOHh+5NQPMSccNkKMq0MIUuzs7jdVlyBB
	 dbCW+3Z4wXRG/Ndvt6W8npsD/Fh8c6PUWRk5qJTi487foK4TpTWw7gT0igfPoPU/Q4
	 xz9hjI4XvPLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90934C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857279358.2032.10980269319010514164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875203409a54dc57fab6714ea900baf35ad392509dbf00b222ab1290ede326e0
Date: Fri, 30 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748572793
