Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF21DC9B3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741946335; cv=none; b=ltLsXTLvXW/wLlL+rgB75uu2/xXIWZNKC2AaHZAx7ffaDvPVD955K8eRHgfE+rJ+t47tZtJ4+xYlPmygGZBma65UCu3Th6pAMgx6SqnYHDAkstVr4/0JZiVGAMgPetvWV9x/AyOCzw7pG9x0QXkDtxsj2S0CecqhYz3NaiUe/C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741946335; c=relaxed/simple;
	bh=x/BqvNiLo5jraHkf4TG7ZdadzJGLCMTot7uOscbZZTI=;
	h=To:Subject:From:Message-Id:Date; b=JxwzdxrzlOEVhk2ccj+oVSv6Jr1vVLN3IEepgnmgAJk3tUHPxTgDISaOSpipSSf1QJbgu/88qcP45xshjXL4BfgZARPYdZ+XJFuguiToOG8zyB7jWwQgPfWL3ynZ4j8qE1tcb6NQYiW+IK30dL2LwW3VbUO7nbnebd+Li9Gbo0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYIXBY+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYIXBY+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC765C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741946333;
	bh=x/BqvNiLo5jraHkf4TG7ZdadzJGLCMTot7uOscbZZTI=;
	h=To:Subject:From:Date:From;
	b=hYIXBY+S0KyccCDaysgMg9DH4dxB9C5XM44ToptJpk+Uy7wtAjDW+8QyUkENscC/J
	 KPs0X11pq6/lT0/WazB1v8v+wm/UxO6/x0xmwXPplXrC7lK+urMMAmvVP56iciY/GV
	 UFjmC3wd0w4mtuS6ODb9UEEM0nzQsyXZcmyAYEYTxy0GMNoqFGkg9FYSZVvllGA4bF
	 XV5ANKlzCrI/93y0zzPXT5BIZJQ55yGsvPMG4M/GXkrarxY2iwSCZO0SSmGwPxxw6m
	 1GikQVZj5tNvFEwI+1TciyPyGjDNr1yoE239taAJypU5qHTGOQvY3eBGImN91XcWz1
	 Zz1KiLMKNYV6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A81C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194633361.23927.17159837835441056520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0534427845f53e11015ff716eb22db69683100e3192e5aefd3b39e63ffef47ee
Date: Fri, 14 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741946333
