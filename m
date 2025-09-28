Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8121CA0C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759062594; cv=none; b=qhbX8mZleOAPRTfhdycKPcJneSE5QLYGtPNvmuLcO9INGpRDNj+cCN7dx9VtDJE7BiMjHJ57EhRZffte86QAhJnmi7a9MbX8eZef9QO1BPWBDcaJi+Xr/0RtF5i1n9aSGrmK+pUsTaS8jr6nO3hqmCZeywWglxRxL5OE+wVA7ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759062594; c=relaxed/simple;
	bh=c5SznfvkuqzHIwFzpOicpWryhPbGD/pImE3SoD8bq4g=;
	h=To:Subject:From:Message-Id:Date; b=oohdgHgoGfq6mcHSeOQXFKM6VKhLvdMOswuAEY6N8x+oxE8qpKKw4gAHDsb165LWkv93rNchV6e5+29TaDCWGo0OTBULcMHnlA3L8o/5Zl3tauPmy8LZBc4HzHt4QRHicM40Y40waDzd5U6Z9kpnFa5tPd/il2+0aFcGeDdTQ6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcKK9pcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcKK9pcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7129C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759062593;
	bh=c5SznfvkuqzHIwFzpOicpWryhPbGD/pImE3SoD8bq4g=;
	h=To:Subject:From:Date:From;
	b=IcKK9pcKkM4DdJ8f7GaUyrMl8ewbYk2SsYIHmW0oEyWA+vT6pbeVfav4lT4Kub5eK
	 jTjvNr/VlH5KY1kq/iAJ0R9rzT/wpntZ2AUMAdy3IVco0XtSjZNErvzWlDGHK5FWpk
	 mZZBpItDWw+JZ6ubtlrx88J7hq3O3sQKMtx4qI/402EZH7xqH56oSWCFSP4FcyRCle
	 7dMB4+SoUglTl1svrRzC7ek8ZcaY+sUWJ2suHdtPuBfPa7UFSWmXiq0EE72+L5sN4d
	 8ZgK5vw3Xc3nrmCYbTs16pVRDo8abilVUGh6Vcile2K+i2nTYw5YYcxiaOTtaH09eW
	 u9IboHV3rlAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EF3CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906259358.13986.15871442533562801672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f488f1da65375a07a5c9cac11e4394fa84f887a30f4b8bba04d8bd211d92bada
Date: Sun, 28 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759062593
