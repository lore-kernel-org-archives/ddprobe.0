Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188983806DC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778874034; cv=none; b=bA7+QAQiQWy8tiZ/9qCuYbfduTFMRaMw6jOfRu+ZmR7NJpPYnVOSxgVchFfKTXmzes/Plqh0jCmsnatPcLuu6GOhWf3iCahMvglk1jgMldWwYaC2J6yzumaGmYhZX/Hxvoiqi9159IMgSMl1xCoJf+rx8jVMBoV3dL+5LDOEz8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778874034; c=relaxed/simple;
	bh=o4bayky9anYzAjvg5ZQ1oorTu/efqkNqckOWQ/Gn8gE=;
	h=To:Subject:From:Message-Id:Date; b=A8Ki3IwVdG6Cn7borlM55Zz8SAGyzPWQisRELTHgl2b4ilPJCqrQFZ35agFHrvuiH8WHAgUsxa9R5M3Brq3mfLvhf4ks/dncNQVVL8SOoRJ00Lz1Cjp+RR5DfZFxH52rVfN6jj0DPogfAbkur4vNWB3W12dTJ9y92VqMUbZoe/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUnn+OGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUnn+OGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7C5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778874033;
	bh=o4bayky9anYzAjvg5ZQ1oorTu/efqkNqckOWQ/Gn8gE=;
	h=To:Subject:From:Date:From;
	b=HUnn+OGxULOEISJ03PYf8E6gGJxE0vLVoCw2qvwBIfa9dnpgVAvMEbfDlfUHNlLcB
	 nmC3zRD+bQ9alh77FgFNj9XCMQinrMF9TCunh3l/R0G/x315OhUlKV31OoyTsRQIYe
	 nfbm81o2aAIS2UWay1ChADJlCs7mfuX5tN87gRn/sqUHxR5+BnysQKA5VBRl4BH/L0
	 Y0ckNKtabL7bwWFJtKGTIVUWPj44HwAxveDfLe0Lq2zRbKGEGBnjDj4SIYbw+QuF3S
	 19SE6A6l3+MfpJRX3IRckwQQPSZqZQXRX8ZRH+KPKQ3dRUR+vxtVB3xgUNXr+PqTbs
	 5TIK89VvJV6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB73BCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887403369.8453.10434826082306449724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae62c4abc84d02b7e054fa7505ca73f3d1d84f5591b4dcfc162c5c6910d30c7b
Date: Fri, 15 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778874033
