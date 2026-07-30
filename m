Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5A9449B3C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785435036; cv=none; b=Yf1STPJVZM5pVIIQIqQgQpJCvl1G9ntyNvNNBActDaRbdTYHCIFYXCY+0kDfq4zIkEFpbZfM6GCuF7hg50yw9OvVUuu/1yoeOjV48q40mYkHPqPgc76FMf9fB0YA8d8V2Tqn5DoSuXmW/rsasGAR+dR37DKCb5XLUTizT/mARoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785435036; c=relaxed/simple;
	bh=uALTH/hYuCh6oJIRHrm5p5TlPtFqA1xDM5cRLD4ovZc=;
	h=To:Subject:From:Message-Id:Date; b=rgQLavo9i2iLfiDk22xlxpapCijIJuIWKVqjRRpDP/VevQeUL/MD42reZYkbQTKO8O58rduGInSzZMEvvk68QIA7B6rYyIWqWlNBf0rOE4wX3gxbGL4N4vRXy845N8nztmSYzfaKLraH0sPrTu0RVGOWe+0PiqUzKh4OVfZwIP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMo4GADW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMo4GADW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92DCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785435033;
	bh=uALTH/hYuCh6oJIRHrm5p5TlPtFqA1xDM5cRLD4ovZc=;
	h=To:Subject:From:Date:From;
	b=cMo4GADWrzzk/BUIzL5rgI7aJug6xuBivagRcKxPzkWJNL7hWFUpppao4Sqo07rGm
	 ruISB1I605zV2br3l7UCci7WFdu0kE6sd/GN81qGekPoyErjJjFUw35gJJB7Pn2t4p
	 ZLLvWEJF1taIn+l3aipOyfu2foaDz8pt/fmlodrHt5z1/w/cK3eQOzOXRpjv10Z6uw
	 /f9yISfTlZCNAq/wJB6rMnpTqrJpNdJYkDyUcCDNvAF7+pc/Gf5nr+GMSsSjIrwKko
	 JfkG3WaHmqwQ9/VwDIB6tPbJCq8oCqh5GowZlesn3LsLWia8DELCd1MGJ0gJqqfwVD
	 ksuIJHW3ov7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B562FC5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543503372.32350.14105836487912932584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd12d52377c17fea51fa11bac1467a8bc0c6f6b4f8e7a7c1ef7f25e9ec4047a
Date: Thu, 30 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785435033
