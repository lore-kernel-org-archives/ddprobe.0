Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72711712
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746851994; cv=none; b=bSCXgy631448XF0zYIzHRz03tTmQjDbAVzKzKXpTPOaFXgMPW5MPZECIXF+58hZiz1YwdUfLCpKDzU9P24z+9zVDd7n1SsRg/Xo5GFd+GdcvoPdT9RSmjr7JXam1BSi4D6qs7SN2pEwxzIjAY3QtWDX7KNd8pEFl2Pkx/hTqerI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746851994; c=relaxed/simple;
	bh=wb5eP+YfoBeJsyqy2wJUatzGzBpA8tXMKB1BA77otGM=;
	h=To:Subject:From:Message-Id:Date; b=luebwTuHZQ9+C9k4tsTApBo5k2YMMs7rU4RkbbK02Nkl+jVmAqkcN0IUHx7l3XqDWpYJ5WMm4O2FWFHNlcmAn2/DDWYQxyfXde4VXk3DD7v+afVYCUdEOyPSdxc2IUbzSFdMzG2W+v9c8542GbThyTx26jeLt0vk8dhUWCH6CZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpA6HC7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpA6HC7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746851993;
	bh=wb5eP+YfoBeJsyqy2wJUatzGzBpA8tXMKB1BA77otGM=;
	h=To:Subject:From:Date:From;
	b=FpA6HC7UntyiitHTJtKkJbQE/SRuJo2kljWrChaLioRh9nNmbBMjHhgKuEnge8FxG
	 IUUDHmvtto5B/YiNWFLutCS5ger+XQGep2fwwhDdE/vBM3XJ4gHEBrwHdiQoNz+FuC
	 BwcyC/olZowUdrvifa5dKTGeZH4jUqfXvnTJgO4GOSokS1QAHPBRNvJzx8u38oufrL
	 cjeuYugMczVUBxfKbfLaaGJ2zlJk8er68CtmfitpKIa7WCe04OGfDfsCrka9kA6AQB
	 fx1Qmn+v2RxDqtw8VoE7yD2keaAhbnPpuErsFWOOXC5c+AbRTI4m2hoc3NCtxNA550
	 Wsls+/u0MWenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B3C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685199357.7780.390666438752815965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b035733546310f851b5dc3486b2206cab5b8fb0c3443cdefefbfa21ae61e4374
Date: Sat, 10 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746851993
