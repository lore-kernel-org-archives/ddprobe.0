Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7C63BB133
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780326274; cv=none; b=h5b7NYxuK6/8hG28jEFdFKb11Vswlx26GbXupZJUChuFpRgnhvQCOh7/a1MjcLUPron78TJP/a5zdhAroj3iGX75x5yv36lhb9E4tSyLLPC8x+QgvNiqUwKOJWCQy/gStK5jN7CuKMP7+k1+CK/gukvHtP0cg7dMbdclkRA3lv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780326274; c=relaxed/simple;
	bh=Pikfbjf78ej8a29+Lzz19vzj8xzzmARTs48b9F7JOzY=;
	h=To:Subject:From:Message-Id:Date; b=DhiR9jE6InjULKpf5dy+LMi5rC1qPGTrbsB1K6nJIbk+f/PdxWz7a4gC09j++5CitShBcZf81tw6Jow2TJGOtJVA70jylI38aVOVLQKfr8jrxsWakt8FnG5UY9ctl79j3e1k47B00rCpGBqL2C7IiXnaoJKAx6wohZEDK+rXxYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTKipidY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTKipidY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B23C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780326273;
	bh=Pikfbjf78ej8a29+Lzz19vzj8xzzmARTs48b9F7JOzY=;
	h=To:Subject:From:Date:From;
	b=dTKipidY22OEmVDTSqInhj/VjQaioze2CttABeUCD8QbDegBzeE0BC4m/2mKdqW14
	 E6u16gMQr7e+hSqzu23ymVq3eBhXTbjnTLTAoc+yrEiWrRJuPxwSJ+xUqDLrWtfasX
	 sO6PBkR3CCcdFblKo8DHZV0j4wCP1O/h1X7DD//T9I+A0YKeZgaq1GiyxrDrAYmJfh
	 YK3hmE09ylC6vM2Zdm0ygaiI1XKj6ydnx9kOid9m+Kc2ZKFyEoWgIaPGK6XuYvW7qu
	 lW1X+Cj+6Xg6YJCqfP6LwBBIAvPFPGR8pUyer4A7xAcESiBOUwJKNi1tA/An4gbqKb
	 T7O/f8pUYYHUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4683CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032627379.19929.9582914240600921403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad24cb07e030372d1e8bdd0ca7f66d2f3f486afac116bb703f799b22dbb109c
Date: Mon, 01 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780326273
