Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1CF3B8D4B
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765102374; cv=none; b=JWNKdTO2lV/S0gW2Sk/VIPPzvvhmgJgArWZ4+w+6jUNqk5FunKZg7JXTE1B7NHK6PGYk7R6FiIrbM3JGeevDaBAhXLMNVcEzrHBdVDHp/bsvk0Alvgt4ec0l9MUnvNgrUcm+BLn1Zc9Py9lbd7b59+QCHnGkrWcO3HTK5qyiKkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765102374; c=relaxed/simple;
	bh=hmLsAhSgVmtcONvaIJ2VOW4Z+varRNgM9vn5uj2PX20=;
	h=To:Subject:From:Message-Id:Date; b=gcR1VYm3ui+69nTXyj7ZHkAKLUwLgpXoxmxuGtjfnKM3eiXzq65mZIQfuux91X8D7zslgn/ds2ImC7TqA5JfINiBlZbqYVdt2XnC4U0Ycln7FWe2xVw70FxndW95slj0V7eDqe0AUlcg9Vyonhwbxwrn71yKVZlnOMH84gzwIKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkyPFG+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkyPFG+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB6C4AF09
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765102373;
	bh=hmLsAhSgVmtcONvaIJ2VOW4Z+varRNgM9vn5uj2PX20=;
	h=To:Subject:From:Date:From;
	b=bkyPFG+7qiAcGEhvngWhyWuxWeGc6LreqHQZAW2pTEo4lgn6ZAxwTWhwa+U1jK066
	 3YKAw00fHCIy2PPloR7Bi7LbPdAfWj6TDtcUENI6Fnjiu4gC5yEr6UIBrWkdyT3hhU
	 VJRgTTdHlyujeQA+h19eeFE0NOMqZyK3Nyv1qkr78L+3gFT2XMPcpeo7PUVpVa13JF
	 SGY2o8jOQX3z9V//ZUJT/UhSYO2Zi2JiDZWEl1aHwwRQRAu86w8rP3gVv7QY7SwGKG
	 XMabZeg9cSLm6adKmIJVdF/GoqGy+OgfzXzLBqhMREEYeCGu+LPKegtt5wasuaAK3k
	 fj5ewBeHJKn6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FCAD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510237358.11065.16089202370862762444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca74f193e383995cd542e5e7bbad38c75f1c8e750f082eb10859f73383f0432
Date: Sun, 07 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765102373
