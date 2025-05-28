Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E221C683
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748445594; cv=none; b=NlbKNVy96n/cKjH0rVIo0rkmfA3nQgaPmojLiFzSSer1QE+UEbkuQTv/V31AyR0qbumjg5mLDAowBJ1FMW4x7zyD7f/NIWt5dGuTm3Q60FBZ40SJsRRkKoqmwqAFlUikAGMPqs3/BGCK6ftuyWPKXiIyAz9NUcyaqdrdXFa9+q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748445594; c=relaxed/simple;
	bh=Dl34Ee4TAPiZK3YFtwB64wWR49c0Wag3j+mm/x0TtXE=;
	h=To:Subject:From:Message-Id:Date; b=ZX4VW/5r3NnhwrcwZLUGcS7hgcL+eObeHbFs+h8JC8snMcVkBH08WcwXYC9T2aYHe80M+m/Vxeb/p9d2b5H/KrNSb7fUtgjxdiP10PC1Yju7CuESlvYiB2O53rcUF59eUUBMHk+fwLqOAmIqbGPQW/PDyKVGUhTQfDA1hEIMrw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkLeS+0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkLeS+0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD7C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748445593;
	bh=Dl34Ee4TAPiZK3YFtwB64wWR49c0Wag3j+mm/x0TtXE=;
	h=To:Subject:From:Date:From;
	b=UkLeS+0e+thpC3draMRwv1Q3Pf1RLF/vRKXF4LD5TYualCz3V7v9IghFIkjELPEGu
	 /l9c/zktqUXHvJAg/nPM9MM0XKl7SSOcsEDT1jdDPFKjjQWgkWKMCN+bhwv1jyMQWB
	 S1nAskDhKY+LLlbHvpc68YOaYjzMxDljKNzqsv3pFwhEOYCLgs0ucDOqJDlU3BFGDo
	 raKFiH/g9nquNJdIOfIuZdlkEzq+Dzw0OVJfGNUH9ujfpk5dx3X3qvVjpA++ggosyk
	 Fx2wVqqceFu5RTUY58jgEGEKmvC2LLz24WB5Ah18ExWzomZUA9JoS5oqAzBjqEvTCI
	 oy24jEVvH5edA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A7C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844559359.18333.18372941477691418856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea814397ba3914a6a7604a7b8728d60d25db1b440e2fbc8072691cf608ce59bf
Date: Wed, 28 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748445593
