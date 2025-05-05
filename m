Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25606A31
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746451794; cv=none; b=PJ9UEHDHQ7x43951w8PJ+ytoaHv5D1wtEREbyHPFdxUqu89DjR3jQCvFkyFnTO26vLXASFCwBaPTlRQVY8vn0MQ8VluQmmThrJpFoSFaSGg/qofJxt5PEvJEnZLBoSBs5q7aGC42eq8wcseducCZPvWIfQyDD7QCazlw03prjrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746451794; c=relaxed/simple;
	bh=CgiKd33QttzWKI/2VigPG53Roqc9VnooGDJb+lCKGIo=;
	h=To:Subject:From:Message-Id:Date; b=V1BiMp+d/rHTmnKe4PjmT4l+VAdToenwXk0bjqMpTdqF11yIFhugiJZE+vv7NBXUGOmzjuSwNjuohMbI34S5lMViyInfwKpBO9/tKZw1KvGX8H6HRHYX6C6SD+4hWS8Dxc92PjpAZe+V6LkciF09xbdKxQztxWg9gLF+EvYwxCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idg76vdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idg76vdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D58BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746451793;
	bh=CgiKd33QttzWKI/2VigPG53Roqc9VnooGDJb+lCKGIo=;
	h=To:Subject:From:Date:From;
	b=idg76vdgOZXNJ6s1N2M9fwkSogfIDYvENtucyOOp7TJX10PyoMVV5gcytGepQWN0L
	 lCw8ZS2s2X+SHkl/CZmh1MpGFSnI5cSE+fV/Lbg7FSWmmaNtc7w6Vi7Mc9PTEvISDn
	 oUrvM5bxYpzRlJFzVIO/ch9F+dXjr/ieCj1dJ+Fu5QLKkWZuNYbG5NPKoCIkTY/KpJ
	 PfVGgAaEQhBVJLAordoJhdHP01OvwWV69kr+Xs2LygdXEvvKv5754PHCgKsezWatwn
	 MmGve9qquJJSFPy0TpYO+1CnTsT+0k1uWn7jO8rJuuHDTHfM4e4oNZuWM2ZvHzrGJ2
	 Xre6kgjLwAZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53DC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645179357.28006.5557901557001436115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b51ca145776c8da37be8f9f1e426b563cbb4a3d13776777b97b5c3ec4a63b1
Date: Mon, 05 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746451793
