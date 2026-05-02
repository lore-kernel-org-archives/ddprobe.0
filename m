Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD89463
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777739854; cv=none; b=uCCKGRKCPyp1F542w9qvsXFMjIrsJqHPD5kfaAE8ZRErHCxo5WLPexboXC72S/hfF5xAkhaI7v1nLdAxD3X4gY5f6X2JrsSZl+P7PE4D315dLkPAg6tf/TghGyZJsq7qg1DU2U8nzHdbBBtdOBy2xMEE87OJ9pB+kXH0wdCbisw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777739854; c=relaxed/simple;
	bh=szb6Add9XfWeZPYf7NFFrHOn3L9NyN0jMaOhnbfvv/0=;
	h=To:Subject:From:Message-Id:Date; b=rEwcbKmy2bMJi1E36F9A+65eC4hPK7XEgQAMPsCS07Esj8S7/4zf+Iz61dNg3PUoLaCgCN4rpkjGQSoX3AQ+Hb7/dMFF8SfD6VByKWxiDGBbaJs5QBaWcuI4ZDYwipc6Y8n+eDq35n0QP7QUmueuFHFOaCt6sE3bitV7BYBeRnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoOLOA0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoOLOA0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0256C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777739853;
	bh=szb6Add9XfWeZPYf7NFFrHOn3L9NyN0jMaOhnbfvv/0=;
	h=To:Subject:From:Date:From;
	b=RoOLOA0gPwSEROB5AqDRLoCDB4K/OZTZymu3ClpwldSaVL5QtbUSKpiHOWNtkk8eP
	 Z5hz76FEQtB21CSNOdIylTMIdiKeyWBLaGdyUg9QO8zGutnNiNEEQZ/BDAfiXN9HI1
	 Pa5+qzSWCWkWqwaFgYqiocZkumoqtfB5HXfUth1ztWV4UuvVFDgptIipeq1YfUzSAK
	 FtqkLYDLhbeJabo/KWyTSgyulTE+/XLGCktjpxtdBmmDXgoMt9GrdTJLncyecAZ4nI
	 vuQCuXlLB8jGPwVijyri1BSL49pBPt12hdJ0JH29s8rcK8OprAq5D9HcGZnOyhSMga
	 DaEy6O0bk9Vow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAE6CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773985368.12578.552946106895067024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0140318933ae6585668d13ccbbd72b24927c88fdf820c28d59170578ebadb342
Date: Sat, 02 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777739853
