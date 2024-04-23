Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B5320B3E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713908423; cv=none; b=PX7sKhGQuX+aGMMN7OlixdzY7Y6OZ4p95Qw4LF+Ncx93mWafobneNNDJod1qiLV9dIHdrr/pMVOu/MMeMyRHiCwDcHpr3YOQgeE13+7VxEBtcl5x8nLCITrdfMxQzNXPhsjB0TI8eDhX7S4TdaXHO85xetu1Ubs0U6ZVuN57ysY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713908423; c=relaxed/simple;
	bh=u3so6CzyF7IFF80D9GTap6x1MG9j/buY+PucAESgb2I=;
	h=To:Subject:From:Message-Id:Date; b=XzV5a2f+qM1vuZeKgZZaIsN8JfKXlTleBCUzMt32zBE4edI2hyKtqLlBvyMKo1FxKO5zUI7iypFRC6yIJoltiouWkXelvqHFmW0yJbJHpQfvBnCWDVGzYjGvDBnzys8WkpB53YgP7wuNlRzTKAP45mJ9Z9zN/Lr+Gq8vJ4CAM3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRFw+WDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRFw+WDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B87C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713908422;
	bh=u3so6CzyF7IFF80D9GTap6x1MG9j/buY+PucAESgb2I=;
	h=To:Subject:From:Date:From;
	b=vRFw+WDsAeSc+1rapOLmUSkoJMulw1fBfu9fzfdfWAWeHOnfJgEA/vBkI8kzWm9Rd
	 IVnZNJgrHnKGviWVmWBEm1YoW3M3FSasSluHU6+8nQpOusRjQIeJnxvMm87K18m5D3
	 uL2MUzZj9xtRlwyXgp/bigIbZg0PhwDl1QWkunTTh3vahGs7stsup5AuPtW5Cof/2x
	 Ewg/xe1ioYW67gzR5NmZIsLygP72gKOc7piA7f+ZmVP4WZmAdfRInvny75iHAvchAy
	 H8CPlJkTMvZ6rNXVsgqAnDXV/EQ8iMBgcMoYcclCtoYsvKcfyDt51iL1/o4E8YIb54
	 Ze6LK6SG3JKAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4D7C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390842277.18610.1663395689129032148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb88ded63179fb4ddd6561d49a1567124e391bdcf826cb69622812c1c662b8a7
Date: Tue, 23 Apr 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713908422
