Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548AE1805E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726295154; cv=none; b=Q6u8ONf0WTMSD0iMv7dfLDw7tr8zhjE+qGel1bV0e25Z4HHaIUUggYARhaim3PGAe6HkD52l9axnF6P35+kmknrdbX0sMaqqGhjbjHOR2QhFITmw1Taagpo+boVe5chyRgZgjIX/VL1ceBdwieU2Iq9Nz1eowQkwEsjMaLTBqAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726295154; c=relaxed/simple;
	bh=FINpF6dfLUnW5+Uvyh+Sjcydp8Q1KlUsRTSOv/hMrk0=;
	h=To:Subject:From:Message-Id:Date; b=ezwd7IjeiLsf7pzZJDNffcqnt+g0wwrCf0b1s586y59t/NB7PmsQL/ra8UZqZoXartfR3WE35u8NQz3iP2IjWGta49uxL/Hd+dxaLO7nXx49Pvz179spEjSFaiMPlF5gIhb2ycGxI2yd5/69VFyxshcQm25y3JvzwNLQncFP0WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNFwTqTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNFwTqTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8385C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726295153;
	bh=FINpF6dfLUnW5+Uvyh+Sjcydp8Q1KlUsRTSOv/hMrk0=;
	h=To:Subject:From:Date:From;
	b=vNFwTqTjG1BhkVODMYD5lvDi9nj7PrvmTdzv6q4UAkUVdqbYgJE3w5arbNEmBHV9D
	 noPmdPWmNAEutwrVmn4qIhCniu3zD8d4lvggMfblh63fqTBtSOS84/5yf6saQMKiqu
	 pfoK6K9NxOQcVVPoD8rCVL570RzHz/t/UrGr13wSjEs53/p5i+hPhIa6V+K85AWQ5g
	 0dBm02XP0wR81v8DkTxutMs+0U0D0L/KI10aLvjhhYGg2knwM9UP/nQP1JjZAcpqqR
	 MAmxRFdKQ0S6wxqQVQtMDkwRqtiu6FBBSE4KsuM/fw5hiv1+tK1hoXJd8++iw3SBFO
	 il/EGi1yZJHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0453FC6197
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629515364.21236.12100712996744909863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984f4364521b3590b5f50a56650e0f001579351594d70334368764457abfbcea
Date: Sat, 14 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726295153
