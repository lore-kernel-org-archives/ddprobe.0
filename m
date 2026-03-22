Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150FD2110
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774138494; cv=none; b=dbON4dHcqw6fEF3hh1Oi0eUf2eMfyEsOf3LMoOQS2OqT6XGuFVl+9p4GMRqmaBz+tIZC59i1b5maHx5MVO96nllMDSPOGl8ntJLYyBqN6wKdGEugXHyByg4t9ZR+j8ldnPe4Kk96GcPwjv6JqUfXgXuMC0jntqIFNstfTuyNITs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774138494; c=relaxed/simple;
	bh=f/kYMlbWxRZOd5TxA4qLOise1DELRQOHXfLcqy5dClU=;
	h=To:Subject:From:Message-Id:Date; b=m5qSkAX5BHnj/AOC61/G7k2ngxAocrSmHvd3Vj+Z6QuPhz7nmOxgVRIsxgy+SD+yG8XNifg/Kgxo4SE17X0VL/n4qPI1yXSuoA0Vs5uDKrwgEk3G7ENoF+yC9IgpmfpsXBinnNYvGd3SVPjfwVxCU7PUQSv/ZmxTESIFutAkE3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l48wPUkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l48wPUkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7113C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774138493;
	bh=f/kYMlbWxRZOd5TxA4qLOise1DELRQOHXfLcqy5dClU=;
	h=To:Subject:From:Date:From;
	b=l48wPUkZFSZ1rweEUu0C1vw+3HWeUj5quylb0BI/gdMiXVHDHsUqlm8dppGQP4+j+
	 zJmc0ENfGwhTG2eZFqAzNMOpM5bcjXoDePKk4fCyFcv3uhhTvlUm0mXPfvXdopi7F5
	 cwjdFu/DuGlef2JnwRj2UTKJxd5eDOEh/pW6sRexwdxW9KB0+aRee0AVjwifwJ/rX9
	 xD7ffrzxAgjv+p72HFTp5O8IPvjbCUwbfBrc/EaIZ1MUv8/S/SCZHE9H5w6KJ1e/03
	 r/X3eSIu3CeH4RyFspFMAIGr8Dt5uGs16a3Tfsec8K7ODXa+B10frFeidMwqkb0Yf0
	 g+7Z/PLF3YE8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F3109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413849357.6048.7465880779861068034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfef3d8a226b1e9142f630d135363fe297be1bfc5abda202f46647b8495402e
Date: Sun, 22 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774138493
