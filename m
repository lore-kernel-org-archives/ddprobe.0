Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E5D2036E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786149034; cv=none; b=KS8bz1UtQMc9oFzqgGAPsvarzLC5VblPHYZzFpjOvTcLW6BwJhveIu4gUzS6Mvjuebp/BaQz2RQ+rhRvDvgqwggwhMr8o/xBvsE4LCm4PfPnTL5FOZ0zcfStLeSdgGxUM59a85gIeFlZnAnzoHjMIvmv8hYqujEjHvwPJe8+Xhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786149034; c=relaxed/simple;
	bh=JPR9bKsSsFM/lO0LwLMxsZbujvsyOZZjqdZCUXCfd2A=;
	h=To:Subject:From:Message-Id:Date; b=eLdbXaJYiIYxHT7BdYnwQCt/ws9HCBCXYFDt8QDIG6qJ37uDgp0LwZU1vPpBYeHzFKOpwXSyDwxssh6N1kJzK4dLWD5agjuYgJzTbQwlcFDjuumve13MsmKIbbKSTOF97+XEj/qn5YKJ9ILe/TI2Vr2b9ybPpD3SaTSYDFJ1FOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASZvA3NE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASZvA3NE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53E8C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786149033;
	bh=JPR9bKsSsFM/lO0LwLMxsZbujvsyOZZjqdZCUXCfd2A=;
	h=To:Subject:From:Date:From;
	b=ASZvA3NEhid+g5ti+EoCvRJwszRDIpGno97rki3Qs1wHZzkb7tIu5x+0K4EUBs1Fe
	 X6V17XELfMYbIL1acL3uwyKaRU8uacxPd6DGjjmBPYiCCG8qhGKu+Rac0u9gqlW0vx
	 ie7Rs34FDLxfrwQo7CQmqtyACoU8zoa4paCqgaVZqboSOjhoFD6qXdGW1vuOJsf2LD
	 Tqh+HWf/FsMIOwKzlM+q3SEYBsJ2uwWKqW94vvalSAJaQrl0fEaUn+ItI+pOSiAjfn
	 UZ6bydfeL0qtHo5jYlWnq88b65/RVUw3bk0RxQWO9iZRCs2ftKnrXY083zwntewfUh
	 F6MCieui/UH3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0D1C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614903369.29042.4900450714784919141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2dbb6f4fd504f9edb2508ed8fb7ba44ad387f56dab3e0e1d23f0f0abcab6cd7
Date: Sat, 08 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786149033
