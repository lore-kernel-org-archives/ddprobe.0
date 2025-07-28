Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3310445038
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753675794; cv=none; b=h31tP6ZM6cnGRCnsyTYqw92+/9fT8Cvli4KjBaZAmp3noAsT+Wswul6WxKH25KPYe/EMxiqFofoWK1+DpkGrVw4tFpH34Cw8FPZbDEhgFMK3nC1pemLtSzwQScb0c8fA2EBbzppqK4J301sU98p7/8JAhjmUr9sVzLpVMXa61Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753675794; c=relaxed/simple;
	bh=kOnRODQT4WEHB8ImAgN3sZVM8tQwPQYq89XF3uPlBn4=;
	h=To:Subject:From:Message-Id:Date; b=JgmR34Ov+I7PynL/I/B79SnhVfQaX+FwzNGeq7lmu07nqAZmTtJjGTbhznIuv67t3aXh4Xg8kL7JQXND/zHJvzH7Xg0o40ONw0SJSfDgGxW4MGKxh3K5Q5n1w7owBX8UUm16vLcKagirWBXaauawPzQd+LgB5lyh9KvxbAXF8C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5p1MXg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5p1MXg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4888C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753675793;
	bh=kOnRODQT4WEHB8ImAgN3sZVM8tQwPQYq89XF3uPlBn4=;
	h=To:Subject:From:Date:From;
	b=g5p1MXg2qpc14Qifcf8CxjYuBTEfs1BOKf4aGvc13vXR9qyoypEfWRxtBNFRVTzwM
	 Td3oTCNIsX5MVeRv5mPSpm2MejAlG41e6MRkgboP3zgurB25yvPbQ+vKLo96gLsOtu
	 fAkZygWdbCebHGAzGx9mfo3Ig9GzD2kbu5PLu3xek8nrUecXDnL3eq79UBu7qrndqo
	 Y1+4JWnfRpSM9uXD+ibn9jneX9u6x49vDYRu/rHsxC/52m3axjE14tS7pd1tlB/ojF
	 ZyG/nTVu/uRbj852bf3uGouYQhBGkXlBon8L59qKgJwhmxtEYExMZeV3F0dr6Hcui2
	 vcWTx4XIXMyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92794C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367579358.9420.11914923399292176894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250e4871c2277ed477396f2f18031d58f2e348f0c49285ee655f474469e150a1
Date: Mon, 28 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753675793
