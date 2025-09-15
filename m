Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5892BD022
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757973595; cv=none; b=PqLN76fMiZkUAc8s59n1QYNfpjMO9J4bP/akgUo88m1usYxwjMb1fGjjJd1sIJqmpkZ6MRCJzCy0UL2bUioQ/mVizKXRl3K5Uu3QL2+oJywus19So2+0z0a7AC9QHW/8nnLy6BiUntegyCR/0EYV5ZZ5EYp2s4aG0q8vK1f9ufA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757973595; c=relaxed/simple;
	bh=wb+63XGcykB33xtWS7wFkGPsQ4CJst9FV1s58CxCeWo=;
	h=To:Subject:From:Message-Id:Date; b=AQDVSqiVo5kW4dzwt2AqRWii1cQ9DyhDXtI+gZJLesPXCmepOn4bEpejm+2r8p5kM5JucI+9nz6Q/OZxDmMpHXnNOLpf7d1u6ayX2/aE7v0P9H6gGle3dp/2YI9MiyJ0EWLAoPusc47IpENabzCI1PkML0c5JbtYH/5IAs/C8wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gapJ84lL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gapJ84lL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757973593;
	bh=wb+63XGcykB33xtWS7wFkGPsQ4CJst9FV1s58CxCeWo=;
	h=To:Subject:From:Date:From;
	b=gapJ84lLLwkAa4I7lbo59zbCn4WllZ6qEks/rskh1NB6KgkfTEUkRD1fzUCIO2FmS
	 6PWcw8pFHbIIzk2C24Q70x7doP+KRR7KTNq1FG6byYA5L9w76sE/M0Cfo39SAqybD1
	 JiYiKGfiuL4v/N5y+5W+PiShdWWZc2hdi+wKYkwjmQ5cw7kFBirW7ImWbYRxfb1n4C
	 cHTJr+VjPyvHpmV7bFU3mHXnmvK4t75mJD+2WukRdaV4jiy6rM31L+t43b5gNQGpnq
	 ryUEGvPV/d6Cwb+Eds5/7gK0p2kVSCGtLx54Wl+enKSaFwMsij7rfw2nEdfyMordo9
	 7LFoenHsaSPdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F400CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797359357.9214.3966069229588144845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703307e77b82fcd1e474ebdc040e5305009a87b49e83092427e93a25e23d5b0a
Date: Mon, 15 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757973593
