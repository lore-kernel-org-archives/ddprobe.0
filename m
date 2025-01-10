Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2865E208969
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736547354; cv=none; b=mRegf21e2KRVCXKLXmpUU4OyikkgIJ5ZO//MDDnqC/WI6ppQM8mT2WbjOZvwxF6Qp9s/3slGC1uXfysN67zuF+el7Zn14jxLwjxiAqcWTLqhap+HCpgHxMqgBjIqHeScSz0aNfdruulO9WELHRt2E7Ha14Y+8rDF070oAuED9Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736547354; c=relaxed/simple;
	bh=VVJJhzodPZ/vc031eGCgp5+N+EydxTGB1RJfGqi+Ue4=;
	h=To:Subject:From:Message-Id:Date; b=uvg48BhHDfHhpLnZeGKINwMBLNvtjpnLIbmibg56EzEq2YQBefUNBitl7nREHj3r1OI5jIfdkaS6+VzA5hdlIn7cw8e0BSzSscpkG0h1zebb2XyZCeoSeEQTtTAtBi7BYxEYv/dBhqGF7GANp4rorkGf7j/HtAGDXzY9f0h3+DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEk3E12h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEk3E12h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC248C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736547353;
	bh=VVJJhzodPZ/vc031eGCgp5+N+EydxTGB1RJfGqi+Ue4=;
	h=To:Subject:From:Date:From;
	b=EEk3E12hcRtkiuHNs86Wes//VBxSA9LNcdYRvfpP/9MGyXFmM6AovQ+x1YWmbOfaX
	 ST9RurrhPJg0uBHx/+/U/q20eL3M7xPhEObN+Ci/v6JTWjp2hhAi4qYaJQFQEceTzk
	 uXHf70mLqmzsRTkePg3+LXE4nFZmgiqjBTHeHzF1Eg8aTTTrxnAytzmgMn9bIIWVWw
	 bykAsPURfx3OW0WwSREDmb3DhgSxc4KyE4N6R88zTMKo8Bhot4gQFhCfxWK/XyQVHv
	 NOrLpf9Nyz12P5piHcPGzspCQyffgkbOdWV6yULO97stDfNyuuUi4Ag5OMjTb9ANij
	 bkgfzbOfiOyNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3FE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654735359.18628.15323049938190402284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a0c2b1cd6a8589afedf641e389fe7a633cf25dd8de4d271093eb9ec08e85f0
Date: Fri, 10 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736547353
