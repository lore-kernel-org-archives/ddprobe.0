Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965730567C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785455434; cv=none; b=mb9Lqe31NkpUHFuRe1FB15n1PqQyoMp/dMFrUfwRxTI7UwNxtwtdL1bOJYWGtAhQKctvLX+kG3cTxurt/GwHr7yqGM+zzwHUHdeXqRmfSpIFjOjmrU7FPm+agCXcVWhEj9x8MIoYnDrm97NcDaS04lX19GyM+tmZwa2iJoriT+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785455434; c=relaxed/simple;
	bh=jkjVHLWjWxFOXKdgMmH5av9ejTs6/bGpHy/g5Lg1xwI=;
	h=To:Subject:From:Message-Id:Date; b=C6aAv+36lXTo5bNPhU9RoQchHFpLfwS8sX1FEflvtbW50qAzJHGUmj3/TYtUTPAssg+BxmkQ3OQdivIsqnS/ArGbGCaJMh6GjbWYCHqiOI30GySKCHG2+KJSjaOWYsZvZXidM87vs4TlRzWkmed0XpS5ooICqAmyj/TCX8IkeOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh2upjnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh2upjnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB9CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785455433;
	bh=jkjVHLWjWxFOXKdgMmH5av9ejTs6/bGpHy/g5Lg1xwI=;
	h=To:Subject:From:Date:From;
	b=Nh2upjnG6rRH++8lHAb0YxbRNRcictUem7NPm1aP2ikJ6TRoWZyXJ0RbjSXreGpnB
	 LBLSMwB5+lqN794P72x97NRS2/DBH7no/cNVGiidw9XdihVXOzwShpkG8dMMoDRX+1
	 vVHGaut166rqv4LC0NGJyW0B7qg0DiNkKNe8Ps+RQooreSkADeEuvsYZpyOJPsTg1q
	 gnC0tqPqLOlp3wnytLyj4qoJPPd6fPOdoJ1dYDiTlbY1CwlQOxWKMOwa89SUPn/Zv0
	 Hhxf7Kjyqj7gGBag3Xnye8VP62tRbJsqG92HjuIVi3UyrMMeBB0m7L61aItbKkKcbI
	 yTjPl7ns1xj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B3C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545543368.5856.17597419761192167965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ac038657e9fbf8995660f6b5ff21a0c6cec0837fdc2811d6ac5a966e911471
Date: Thu, 30 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785455433
