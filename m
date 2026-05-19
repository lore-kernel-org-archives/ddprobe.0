Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79F62DB7BB
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779206434; cv=none; b=ZPw+RCQ3UP1WJIV2aLE5RQtHQT8BgN4jY65MVACk+uk4CZqwTVBYIDPat5IcWjyGei8Vx7E31i9B2kgp393ffz0RxVfq8SkAdEso2MaaJ8vrq+KOOoq3tvMabiKsF3T6vOf+5B+ITIDj+cSjFrcJVt2HRJxoygcKJi2KHFuF/+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779206434; c=relaxed/simple;
	bh=ijQr6N/JQlCFhw1mNnzIhWVH085TBuqb02IrUIYD1mw=;
	h=To:Subject:From:Message-Id:Date; b=MfZRcILmYyt+b8/AL35uQ9sn5AmxsphSteWndEnCE/1lzB27aaYbCfOl9Q90eKWVU5fL6Qz1AIQbq4bTnDnBzx/OyTXp/yg13UqfcL7n0FAa4vv3IV4S9IyQU2IMRPWDFQCtP1Ph325JSiDRtVM3GILOHp0SItzkFxnuzUv6zjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d88M74Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d88M74Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3D9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779206433;
	bh=ijQr6N/JQlCFhw1mNnzIhWVH085TBuqb02IrUIYD1mw=;
	h=To:Subject:From:Date:From;
	b=d88M74BhHVctZpAyyVzqd/TbxWt+BiuIe84k3KyTDxTTfdGR8oGvZu3drrsukprdS
	 xbH2g/2L5H1wDAv9ggCA036LKLbjFHcR0IZwyHrI6RYzLc9LI+EjkQew/30tIn5ooS
	 eJUai0THIKjGraO21h5RJnan0SrLOoZpI55Ev2fJM2soYvFy//lW3bQI00x1D2xSC6
	 TuNRPg3ANsxW2ln3fQrh/zWMawj76wen/VMyqRdyD8p/ihx1U4qaCdmH4M9vpfhc4M
	 B0lbAmXwV9o6UadHFeaU36i5wl6ISO5El2pHAsp8SK38c1jsUEcAEtyV14OSTIPS3P
	 Z6dH6tDiI9b9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80F0CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920643374.17723.13269956058601572855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc836c73c5145bb3a0b921a53c9b0148c0adc138330798d9bef4aad0d184391
Date: Tue, 19 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779206433
