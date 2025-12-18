Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3745B26A09B
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766037234; cv=none; b=J9Wc8MbdvkIQYgvNgF7hSwQDCSk6I4d3Kbm6GbjWw2YYjr+V7boiHtEBGuKsOz/y+Be7zrQ9FOzuT9VdFuIpPvEVXxn26SGFzSuR3wVplSjcxPDNhEyj7TFrZTYe5qaOaGQ5AH7e4PfZMP9cticq24KV9KyioIJSwP700ebTJG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766037234; c=relaxed/simple;
	bh=StdT0rjpTvGpTwHA7ZLMtD4zxWwKxYPMm1LZzQYk5V4=;
	h=To:Subject:From:Message-Id:Date; b=QKVMl7M6VZr9AfPwSlbW3TWRtxrZNk9AA5Lg1MHd0T0YP/ySl2aci2PniFbbeqmlrtrte64+JMRmLDenof0/5cMteGyfFFseDGGftAPULhNhsPnGE/O/JQrRFvvf4scFOua75BAaVU0ZXjVy4/QBS/r1fuPHVKuVXfzFv+m6k6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUnjtIs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUnjtIs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD811C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766037233;
	bh=StdT0rjpTvGpTwHA7ZLMtD4zxWwKxYPMm1LZzQYk5V4=;
	h=To:Subject:From:Date:From;
	b=aUnjtIs4n3E1vbvRLXCvRHs8NT9H7hZl8KEPYl5Lvrdv9xuL1Ac5j4NVb65p0mkFv
	 wpVtUzQRklRUR9KCY5Il2wGpkoQ+GABe2kzQmOCNqikgAy4BSdctZ/cLt6cC8cMdp1
	 v/TOiMAvavaMxZmpgn8pED4HxCrCSGEPcOfXLoJkMF/fDee0COfGHSD/QxbErDjoFy
	 k0YdH3g+VD8dRYQkxof/3E4Ayir6qwiQUvyaF86i4yTp/JR0ncGPI9+idBTdKpWRUg
	 THAog8ShMqHRntqf2iKlfuyfNEc520Cn3Dnhig36B1yH/lhgDtHm7r7lcuILeFM7QL
	 tsqhQ9vHAYi9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE04D68BDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603723358.31940.12509958047639056397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa8b80c78d5b356bc88977dd474d798064e4f3ed93c4cb905b219ede2543609
Date: Thu, 18 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766037233
