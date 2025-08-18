Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24732765F4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755514194; cv=none; b=cK39tZsntvXcAKAU1Xg4xJiQ/nj0K9/bbvxuQO3ymbCq0tCDbKHxfCGPIoPtPtS71PH9oQnXzecCBdPeZdbEG+kmXehTHsvbuWFlqFbOc/pk9ohHJ1NG+Xxxp7LVysyBCa4LQ9Ijg1HDGSUN1s5WZ35m0rLcakQwZAgLvuzTuuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755514194; c=relaxed/simple;
	bh=9py57OlLzuggEgO/VCWNmFkQi4utp32JLRaJcFpdYf8=;
	h=To:Subject:From:Message-Id:Date; b=Tv56JW6x7wxKf3qr3UdUSavzyrZwFKOJCsSVome4QO8uxOMJl02XRp2Pt0KAEcpT68adkml4LoRkO+J0gEQqHw6peatRlLPZDBSBkrI/oYUuzkUhosiZsKx5jclPYnsYLWPm9P/qQnUVul1elidwigGTEv5f0mSQBWsilMjReoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRhS3q8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRhS3q8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E89C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755514193;
	bh=9py57OlLzuggEgO/VCWNmFkQi4utp32JLRaJcFpdYf8=;
	h=To:Subject:From:Date:From;
	b=eRhS3q8YcWRRdAPW+5OxWP+LU3pZ89r7398ciYfPAhzK0C+zJ9fU8AKDDcJzWkONs
	 R0N0HAkQ/YQDiwUA+9OlSBlb8PISU6H4GXgHZfg/lDoyQBgnKrFuUmgb+sxynFXAKL
	 lCwea8mL+RpJ+MOcF0frLUUTrAfdAFnpx6fCatQuT1VMfV3xcCpnX1XRGg3a8QfcKG
	 R7gDJW3z/UR/FiYuXQEMMTp+Eo3wC9HGUXZ2YAhw155ygOH35x2Y9z+vKkCcatE1JA
	 J488By0rddNLKrCxljG1Lbzze9e/D/Lpn9aKobGJhbJZhNmW4qYz9iHRZR6xoAtLLF
	 CDYT7JpTUEi1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953CBCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551419360.23449.14480037140307197159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd312b41e8400d0c69d8d2c362ec82cb9e9af50a06a68bab6a5c131123fa94e3
Date: Mon, 18 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755514193
