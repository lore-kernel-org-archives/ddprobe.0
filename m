Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2840A23D7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727066154; cv=none; b=b+raQInixtgTrxntPNMFRRr5b7JktpAqR2noygh3UCtoYj21nYM0tCT1VxrAefuU3sWLYIlbQU2+H83E8gmSlyZVz5zuONchjCCDsbQDVDrmxiyObPcWTv4CyJLKsMcfirYKXXAQ77n9+q/JLfNr5U3rni6FbcUGYalOMUaICg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727066154; c=relaxed/simple;
	bh=E5zRNgMll75n7287Fz8GjYrrtRWknOvAEjVtDfPhqYU=;
	h=To:Subject:From:Message-Id:Date; b=qMUugHZ8VNNLhyCyYklIrGnRBZZ5GFwRrbSm2tvKZDBbEtMoF07000Oio2sWuODpC0sDbWcnnF4Fx/FevkeYcPP1BQP1wOUg65e+7lViaJp6FfsQpStpwBYTtn9uwX3Op+oMJIXGCznpT1LSxbcMUPLQrQjg05FknpVz7ci/XxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS+Y71CT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS+Y71CT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6659C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727066153;
	bh=E5zRNgMll75n7287Fz8GjYrrtRWknOvAEjVtDfPhqYU=;
	h=To:Subject:From:Date:From;
	b=eS+Y71CTsO+/9PYF1rivxTyA9xPU0R0DInsd2I/RMepx72RJs6NpQy3ny6yQMeR2n
	 tsaf+N8wWWyWX3r80IRnQ4PZvAVGPqE07ywD87f1Spc5F7Gt5LrZYxpSgbvI6HX3Ad
	 3eqnVloyQHAUE4PNKVjmSsD1uL6lLle/l0dXGDzAnMSWN4yE3GupVmQckebjmqLzmP
	 +JrpxUWAkXD1GlSkgCb4ncNlhhYEwLDm36Yek+bwhJgboSmEjxSHJmwx5Vnpm5t4aT
	 F5KRCbWlHtFkp7r842MfMzsUeJept0HNKB0rtgS1sKz9T/3XPm9dhJrtBMyDU1pFiu
	 +5k4ahDA9hVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B47CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706615360.32720.5484401429898482053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3fc8c7b887f94da5042e50d5dbb641277538513974bcb1e7f23d11b49cae98
Date: Mon, 23 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727066153
