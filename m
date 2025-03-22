Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C867231A2D
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742660995; cv=none; b=K01ijgYOFaRj2PEZbuhyH8wM3l8MLhnNrLqoTOCXEIlySDEV/V4A9Q1KYhlEeWBgsGgxfK/aVmSHk5cCVXbgE2BGG7CxkX5pcOVSgqpHsotRPdCp8XklbQdtzbr1c5c7ZyCKSZgjUhs4ZPUh18jxLpoNEDy9YjQhldCrMpDh/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742660995; c=relaxed/simple;
	bh=HwAXCR8krjNIwLNmxE6+ctQ9ISZ0HrbFueGiETqdegw=;
	h=To:Subject:From:Message-Id:Date; b=Y9gzqtG4lgrgIqTQ7I1yQdecjazG6BtV/wu6LHixflsjaJBJqR5kQjFrfh7P5TxStToeUpokWztUK/f/8VwVUvuxrv/xzpOh+TvTfi2iEwBwK/TTLAXSSTHW+kNS/QQiEc1v3AiVJ7n7ynkR98QDTtd5onF7CmQF7Z14ZKUeQ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJr7EQmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJr7EQmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B122AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742660993;
	bh=HwAXCR8krjNIwLNmxE6+ctQ9ISZ0HrbFueGiETqdegw=;
	h=To:Subject:From:Date:From;
	b=NJr7EQmMn/UdF05cVKOey/SpVSJXQ5INAmutfG31IO/WyYn4WHqelGEqFyrYbX1px
	 g1tK0RPuo61EvbfWAbmobMq0boRtQ0Y9tQ3R5BNFNhtqu8IBQ0aCR4yZZelUeJGXFQ
	 VQ0k2FMpn5f0D3eAYU8ZrikBxYUB5LyRixWGqtuJzNF7lmCEyIc7/6h6hSGcvR15vJ
	 yyN4sCJI7J/GFgwQEacJnJGfoCFln5K4/7wlqgehNUbKvKnnRmkS7di25DHy1JzXLj
	 vEwaDL0JVJZ9pV3HF+dtDCqNxmJBmPcOjR0YIqvvzBb1WrANQW7EMnRRShpacMwoMo
	 qSxVGfTvbpBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBFDC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266099363.23734.7865267564491039329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78712de5d66051b08e6615f684e2c09ab1752932a3e6021e864bd3bda5898ff
Date: Sat, 22 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742660993
