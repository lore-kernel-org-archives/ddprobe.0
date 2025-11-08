Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2609515667D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762638594; cv=none; b=JClbKSioO1su3SbtV0qIp2zr8n4PFoJLLqxtv1vA3QEEW7eKLWvWxIwSNFh2/bidat6CDROEYJb4R/iPoscKrCAKTOBy+IzTw+PmzSTzDL6N8JA9PV2pJXep0zpr5NZiGa/8kEkidDUEwTyKx1OWXF6c2wWRWyuRcYzMlt544cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762638594; c=relaxed/simple;
	bh=Smg0jcg8yid+vdZJh1KCGe1XR4+nd/h5zcIsKX8w8sk=;
	h=To:Subject:From:Message-Id:Date; b=Ay/c4Z3NEx6ort82g+bC0iwVEJQO9iColGwvjp2Bq2la6Pt2IxH1ZNP5zFNKHu+7/D6G82jMrXLDFnoPaGJDAghLgFiMEfugTc1U48aScUeWqddaiqKrD/nNMJPkdXrFEfcfmyGBkf/gXfhMFB0lkXTRBrNgWEs8SFf7fJMkrkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxDgl7Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxDgl7Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA5C19423
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762638593;
	bh=Smg0jcg8yid+vdZJh1KCGe1XR4+nd/h5zcIsKX8w8sk=;
	h=To:Subject:From:Date:From;
	b=YxDgl7YaFZgwIRsqNaTNikYy/WQcqQYjzFy9sEaj2mgVUywrpPIglXkivDfHnu2Bv
	 MAbUI75U1Ls9w+Oi8Yn1nnFkPd2Z+Y9Vew6icKRhfMMuRhAo0N+XzipqLx7hM+EZgC
	 JaMrQ3gWOaqP7ENntVE14+OEh+yxuPlPtgWDegMWbgyWxcZieu5xypuTVWWURhPe/J
	 mo7QXOGPfIpGXyZozHlwd1BlszTU0CLpjZ26cjdIFYHMuJ2JKRI5cIbPXrS+5Mw95i
	 b+I2oLLlooMXI2fzhihNGoAIaaEWPB/wVwF9baCozptqyKOJqucPBmF7w1GpZ2/rqh
	 ih8y9YKO98KYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F5CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263859358.1588.13747722722651594668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6263d769f76033267d33d85074ce18655b2b3ebfb2c5a9c2eed7dd4e369ed2
Date: Sat, 08 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762638593
