Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B7315AF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732914954; cv=none; b=o0t6x/Y3LlOLDF+frbTEYNzKgeTXJ5NAiQO78mX8mTvM6ruiodz5XB9xmGWXaDvdhw3Ind1dsBk3q2172FIJtGYsW01Jwn+iU2CbXN/ucvq5plY7MOb4Bu+S4fJX7BAszi7Nu3g47kq6th+JE7guYh5k9y01IyRjbPxk2QasQgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732914954; c=relaxed/simple;
	bh=4aL36drzEF7Bw5PAdL37T1nfgeXgsxzDBH9MufDYwwc=;
	h=To:Subject:From:Message-Id:Date; b=UAehL5yiXYS5BwkAfdZuMiHJQCS2jmb+2gtMuhiRH4DyZpc0vh8kt/jBMLD18Pkc7ktyXqGACNm0cFAeGy042G9W8TuOaXAoqS2vJqCJnmZjf+4k1AVU3Kc+GZX0vmVDMXZpkUTw2V6jxKfDfVukK560BVwYtt0NLZrUvQlwajY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUCBQ6Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUCBQ6Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84F4C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732914953;
	bh=4aL36drzEF7Bw5PAdL37T1nfgeXgsxzDBH9MufDYwwc=;
	h=To:Subject:From:Date:From;
	b=sUCBQ6Mem7SAUiAVmZMRKCBdXj6vUo6Z1yVTl6ThrzOuAmbuGdBlVp8k/jWkPLm0R
	 Lsg6GmV8b09ExQzz9FemkMKcyzOF9tFndwyQXbEkww8VIMOAIx6qxLCv9iyiGkm7mU
	 YrsK/YOhyFkr+VgmnltPl49lThVW1xtNwFGcRATRV0xeIhZUFeUfsq95YRKJpIjl+I
	 vUhaaNAlZZpqBgwdZ0geGa0a+z1M6rWoVVHcInfIz4cW1Z4tar2g/VulXDdppuiwcu
	 gny4nPj9htXmJ++17pPrvtYLSldnmT8E5ZX/ghECCvST+PSxQM+suKTobp+zTurbW3
	 xOD7tDKWa8Jag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DE0D72A14
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291495362.22735.16007083907585823186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830c980dcfbcd9cd12576ee3f0d1d0ebf037faa1f4b5d41b432ebf00d92a64d1
Date: Fri, 29 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732914953
