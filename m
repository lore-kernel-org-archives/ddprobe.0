Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140AC2D8DD6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766643834; cv=none; b=lu4sbgL+l8hL+Cgfq7CkCjje+q2rUqgkpaEFPOOUjJEj7WEbyUhHucF+tNm6kWEf1BXLc7qgw7+VrxHfSj8KFFyz9nGWbau7+o/Nhi0wu533X1JuEI+Ht+pynBHTd4ANTxkI0uDNSfkUIjgaHPpKtoadZ2nLK6kHXCFFE2aYQxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766643834; c=relaxed/simple;
	bh=5EijOO309I+RtZe3P3Kl1uI8DuI3B7JSeC+5xucUMcM=;
	h=To:Subject:From:Message-Id:Date; b=XxMVjO04Z817mALRGu7dpjHvcMIvrL+cIHrgmxtVyF0VG+hnjQmc+nBcsAsIH/7ZCA2Ipu/VusxJrReSDyRTpC0DCCNUMAzFGRCnxdpkw6t23TpBlgC2TS26kWvxvWGuXrJJLJ2K9f/xpE9hns3tOfLjoPDlnaAIu+/nDA6mNxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D//4UOw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D//4UOw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A016BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766643833;
	bh=5EijOO309I+RtZe3P3Kl1uI8DuI3B7JSeC+5xucUMcM=;
	h=To:Subject:From:Date:From;
	b=D//4UOw5IX1LKuEWX/P5EN8PWcEnACyyU08awMlUG6Hd4ZAsV/aZNIJau0r5Qe/Ku
	 k2fjnbI7M2PP8Wmn6lUVdGZ5XDu1tuGW4pO+SCC0bMyAT/b6fp7d+vpqa0M8rf0Bjk
	 54fAQ3V5MMRdY+hLxeXwMldydz2sWO9pPJDthQZuI5I+/PaxAvYFAeK+KUAEqFpnHj
	 ija+VQToavDOPFseqMrnV8EejO6eASWTVpzfL74vv8cpGwioL2VCeIdI3k5mTn5ALc
	 M+QL9koYDOhnZiwGm+iQgT9w93R2G3NScPtuAxrvA34BwpXTBArYfBBrGnQpWbkouZ
	 sra37pk7jUM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BBE7AD40
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664383357.23191.9140608632136358461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4657ad70f197215a183ccb8de4d8b9b7763edb9ebd50bde2321b243823919ecb
Date: Thu, 25 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766643833
