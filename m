Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0616F229B36
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768280634; cv=none; b=pkVcV+hAXUPMqEFN1TFUjVSBbYYka3f2byjeLKwfXapJ09Js/RisEPvP43senPnGi/7zLGz6oXVN03gNt0Vsfxww9DJEz/Xiy/8MBc7Cho6dxGd2GpQXpMXdnEcWHMWlOMYkdqzSkSnsIM52rwGykcmvMEKlC0Ty4tEOuv3Cs+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768280634; c=relaxed/simple;
	bh=wOoB59IHEZHEr2zfyn+90RUMK3nVwLG/TxCtYzJwvsM=;
	h=To:Subject:From:Message-Id:Date; b=q45T14bMlWUKQxI17T0NDba4Ic9mxN3KV37vDwFkRqLlrw1futPBTCDMYnZar7U0Ga64ThRQTLZSRE5JiuBgrkrGzcXqiRkOiVvA8WmpIw5n8dTPqg5qwYa6TRa6G9rS+qIPSTZcQLnCpYvM3CouYels5pZIoPMBzlJkdK/wEVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuPqe+je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuPqe+je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8148C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768280633;
	bh=wOoB59IHEZHEr2zfyn+90RUMK3nVwLG/TxCtYzJwvsM=;
	h=To:Subject:From:Date:From;
	b=FuPqe+jeVsQqC8noWA8bxoRP0Zgx22wjUgUz0v0px5+Eo36UFfv0Wus7ipy8m/l85
	 y5ssNt4ZSHHBRexhl4A3eDgzcpGK4TlYiq7A2BM41MO1F6EtmlXTUnH57TWR7Tm07w
	 DzTi6uw29vVNtLWMuKugK8DaRQtQLBO1LoGUcR35QtnR+RORPWFRVtu9FbufeOQKVG
	 2EvIG89DZP1pI+E8pF0p4u0gae38hpgjsWkFmmeRhycAzN0mtLEGjzpVf3xgsQGpkz
	 H0n16d+/+Jd+F083DQLd0XhCOfFg8Ud0ltY/aaeSx9l+fv56q20ngj8hh48oag1rIn
	 oXJzQuarTKIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B71D29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828063358.745.17772243935657932032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d8fef71177dc4d5f58e13bda3b2161e0eee8ec761a190b8c965166e5b21269
Date: Tue, 13 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768280633
