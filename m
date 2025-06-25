Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238A13074A3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750821594; cv=none; b=EwgzEVzLyyVlk+hXoe0Cx1mnZAMaCHrxz5ht6mIJC0Lkdq0HF2FrS3e2EtiUWUce5yhCs1dM2qwgrBxQSWjWcF/VGRviA4DXYnSWRGWZhYVf2vyrgRicCfFLxH6t7mLdfJxet6yUSD83GyXQU6YKWidohkApzII8NnW1greuH2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750821594; c=relaxed/simple;
	bh=0sgkzqLXFwss12xsqkv78NgMycKpdHwcl7wlk0uGt7Q=;
	h=To:Subject:From:Message-Id:Date; b=Cva5x0KSIVUtjXNQRg/ss8yPCY4yv8x5ihNBhLPgFYUE3qquVJID23dRP7AZTcKBCq4b/0VXsxUmqmEzqMLlTW8w2AS+cB9ksgixYarms4U4aG+yossgMuqpGHWvmB9A7QubL00GJIZxAjAs+fG3f3YkSxmNCAGQ5B8OphK8mkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mljZuCM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mljZuCM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750821593;
	bh=0sgkzqLXFwss12xsqkv78NgMycKpdHwcl7wlk0uGt7Q=;
	h=To:Subject:From:Date:From;
	b=mljZuCM35vgKM/kiLRHKT6M0oldl/JIAVjzXUfQcR3De7NvoCHvUrK2i1ZGYi4qbz
	 24zqvevWaWPdxT0K0VBZyYRk8Qf+BN59jsMLr1ua1tZDT/Z9RTbH4FJIKo1bO2KGUq
	 ewTMlOfgVXNRi9vB1FuYQ4G3uhYvVgs5yOJjqGBff7jWfX7SOxjBmmlQmDOClho6T3
	 jD3oQNt4c89QFUBII/dolm1YeaIfu8Nobsl7yVBi3JSaS3lHEh12+bHXbHcQFCfEZ3
	 cWDJoC+4sV4HUktNQuZChW3zHXLqjKMO/8jHCxp/nIli3ag+s7D3DkjhdR7dJmHn69
	 TcXzK+FnIvGnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E612C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082159357.6234.1589291814719517499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b421f6c8002559ac7a459a8b8acd22ffb1cb52a041021771a5a3af7a94e5dec
Date: Wed, 25 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750821593
