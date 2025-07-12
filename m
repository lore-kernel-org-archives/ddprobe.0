Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2002F149C4A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752355795; cv=none; b=Qxz1blJNNVCg7RxvJfcijTtLXMZW25yHyNyp1wh+tgZf4I0pxtWyVEEpay2JU1afBdznhtJJ6MErDx/XMDzbSx0hTslikbBjAZRJwhwED7egychx6OGgAWsW0iNBLWaodQrZduHUNXns/xNFB9hdDqy5y6K3Pi3pF7+/7qDmSfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752355795; c=relaxed/simple;
	bh=uTMMiwRN5GiOMrNEjdow1+S34tccvPA5iuy3s1yVN+g=;
	h=To:Subject:From:Message-Id:Date; b=I9MM+/auk5FTZP2sck1oqV5/UGOcMKpUe+xMBEp8Q7hVL8cf/CMfdkWEe5oMPzFmDhnyggjZHSNGo6Vfn278+Z6RuOlA3GTt76zzYJxTgD4qnLW6GfXGoBZ7uUUZckpyKtu18cgEcZNaFs5yWk/m8TvkD+Jvs6r07HgVEQ3QAd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT+qivrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT+qivrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6402C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752355793;
	bh=uTMMiwRN5GiOMrNEjdow1+S34tccvPA5iuy3s1yVN+g=;
	h=To:Subject:From:Date:From;
	b=tT+qivrkI7zb7ZEapAhBXcrufIP+7hC2f0YD/C2mdwE/km2GehbpQ6oWtJf1z8PuF
	 uIHxE65PSaB0TXpQBuSiN8/cFi2yP0QwO4aI8Er/ILQjnxZj1Bpiy78B8nKvh2KhaA
	 YCOCmuyo4byiCY9kVpZobPU0aUiEHeBe8/mWYMexYs6jBLb6WwRCGKvaj3CRURPknV
	 YlzUry1f9t8tFxV/MtEzABhjbgpObhVtfXKEidyeg8l7FMmm+pW8v4xYIvprjllcVZ
	 IMgrxoE9XORJMxJ/JY+KBHNdBF3SZ5bzdwj/6R7XFOCrijzxCy5NVazTcZNf+V54qQ
	 N8PtZfRfIFE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93490C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235579359.11344.7234119782883984797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42eee2633f0f7e29a7cf141c3c45680bb2eb60c0fce9741b4e4d9fba558521dc
Date: Sat, 12 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752355793
