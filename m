Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9C9161
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715213543; cv=none; b=llFOxK6YbCb/8Hsm6EkpoMzyIRWz39r9v0ki8XsAWPyN7pdrQckGyQql6MYnvrsfRNRj3OYfsEqijfa6TikLomqPJ5PQ9a20Ma6wjTzmRfwPUEc12r9YKEydqE5Ftj2hK1cA+xlqEJ6pTujaf+iuXKnOyvJlx60e4IlBLSYABwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715213543; c=relaxed/simple;
	bh=Jk/E2ZkwiVZeJKR9sBaBrDMYB6wt5LcUKG9OrPYTvMA=;
	h=To:Subject:From:Message-Id:Date; b=IPkAYGBWl8ICHArHHMR/sIE7vsKPKhZTADYNpde+KVkpeHcU79AhnrbRIVsY/Wl0cPFoBYp1ESZx2AbOn/v2pp160LLXPyMWpVTkQcXeUnGMB+snIa5AYKXDT1pkRCqdtzq00EGmPS1q3IjYVt8hF6n/8Y0OTNCtqlNeVs1gSfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/AJjZv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/AJjZv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE22CC113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715213543;
	bh=Jk/E2ZkwiVZeJKR9sBaBrDMYB6wt5LcUKG9OrPYTvMA=;
	h=To:Subject:From:Date:From;
	b=H/AJjZv3g+7rHRhycFn0tHy4qP+bkhqp7OArVLMokCzT0etex3GZtOz7dH/RitIvB
	 lHh/YR1TuevBCt7Rpb5ehUhhjgFzWKNRhP+K/6wXT/5Al63Fo3pp9TFJ9QB+Y+Mv/W
	 Irk1LI//Xfi7pT03xx7BzsnnSI3siMgRuHadw17tsaKqIPDDhy1EpllX3+1H0Gpn/2
	 nl6RCw9RvhZHwzopUcNZ/7ZGX5FYz3/A2LwYChRlZRDSRYnXS1BfY35t0IPJanUqJ3
	 vqsjxT2GfiA2+QrCcs9cnkxzPtw8BvDLqs3qSKwVa5z+VtlNgcbdjtvCJQU1zwbaNd
	 GXHmX3rgeju5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7AF9C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521354287.16768.5783882241553321418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0407160421ef7b8090c36dcdd2d24b640970b43c6228156c41237ba6f54a3b26
Date: Thu, 09 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715213542
