Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172F72904
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729405554; cv=none; b=V2uyWO+eXcVBzHbJgpDndOetGaMkMfNbBErP7DaxDeY1YyHf7wsgHqYWJ3hiRu3XSqTu9mF5letWULofgvZuql1wVdHPcT5hu7FbpztqSg7BkB9ADjC3g6UsCUVeWiEviLWJY0njpnMjr93vMrYVd9CQVcJqPueOef9FWglxXoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729405554; c=relaxed/simple;
	bh=tpK4J5I7dcTCRgTm7/+zSva3t+pSgRxkcrrWHhOI9gw=;
	h=To:Subject:From:Message-Id:Date; b=e4jwCVkp792q7lCBlzJt4rVh2suRyD7hAnbs3TDIcOM4HEpqYJSpaiYL5RL9L1z3ipCli7zQbqZ+h47T3kqOWFRAvPDRpBqgo5IQIP2iuyYnkOMgj6Dkz1vDs8fyGKiiEzcGmqzqPShsXUVrpVshvF50RlPQK64FnxhMTbiMapI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/wJx+uW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/wJx+uW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE480C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729405553;
	bh=tpK4J5I7dcTCRgTm7/+zSva3t+pSgRxkcrrWHhOI9gw=;
	h=To:Subject:From:Date:From;
	b=L/wJx+uWptIHD5xg6VjwCEp0E4CU8N0eheV8Q9Cu0jsqzPQv9TnP9KryNAEkW6b50
	 NYfJuY+OZhJHMumLuxBfmgtnVBmOyDA1JG0jS6ylNiiXuvSBsjokIKV2+fd7vjuADU
	 l9p8KTgwFkArsqyVyY+G49r/oe4MOhdYg5TVfyZTootqADnf4sMOEqVTt2NPzrXMsI
	 qWkwujuk7nlT4G3pGs5jUSOVcnxSg2vA5sPTe9KlDRCcItxxyEqlE/Zih29deIH9wC
	 4le5sMhAi77Xiz9T5eIq3L8+RJbHX6S5kqJPrkGmFPhd6UkW420qPzPQnPZTvaXT15
	 hGvTH+5Oubwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F2D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940555359.25376.12070872973911987948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a3543c4b6e0478d0d8477f70b45b5474cb1e3f1fe0312d561fff8693a06fb0
Date: Sun, 20 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729405553
