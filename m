Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B580BEC
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748729994; cv=none; b=jm6YCfEj5omeH2r0hdmuSKmmd4LLYBhTwqRacaa/sUhqlRlj94jSEhhuu7AISgzwWIzQEn1AE+EESsY95XYVkUIMnNyl5A5MAMpZ3CKeV46ZtAylmMfsPe+3MtrTyJSZCVTUOlsLrKASrVozAPEXzNSLEs1SPb65bs9gM/rGLM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748729994; c=relaxed/simple;
	bh=NCT0au53ULjiQ9sfCL94rDv/onx3kUsWYpZuV2lfpoU=;
	h=To:Subject:From:Message-Id:Date; b=oQagav8otjFYtFRKxsDXskCZDKeq0fwuA7nesg0aIaB0jRdyukSn+qpkTDCtG3/Q2MmLgNG1N9Gi5YakERBeD3GuWtRKSHY+L3nukBkEYBm/LtMSwrBKs092g1ipPScuhiyd43w0H18zcIpvqbuGTwW6mC5lALgjE/EFBGA+GZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcVJYxMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcVJYxMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71ADC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748729993;
	bh=NCT0au53ULjiQ9sfCL94rDv/onx3kUsWYpZuV2lfpoU=;
	h=To:Subject:From:Date:From;
	b=IcVJYxMkPD+tF1+J0nb7bcpcgydHoojtIZnLdIzyvTvZDprSsOjNfvEnZ50nvI/7X
	 hhSKP+vqkTth/0xAYmy0j4EVQcdr637d19/9WAq9t0Kq1qjbr72GDUpfRVXgFXNiXl
	 v898AZTniS7AkqJCa65k6g3nG8T1sSdoCoR0m/oaJG9St97gthLlWWKQGNTdVHbmo3
	 1u7nhuGtNPXsudb6CbZGaqQtrOwUev9oDPdQ2gCUUJ7ioMGHPjQOR6Ou/yCdd2kSEP
	 7P+1Yo7fq6BJfngLQTyhBIS9rH25an87WKWaY03mYtVWRPZoWxjX6W8/EjiYZeyIG2
	 do9n8l6eTBVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91687C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872999357.20258.10339056355035917735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d26f818ee11d3d6ab87f50dda0a0b6743b9f876b6d80e7c66630dede36d49b
Date: Sat, 31 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748729993
