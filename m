Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5831215077
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738743953; cv=none; b=lB7K2iaF3crM3AZolfzYkl1zkm5vHf44fZGAcL/5eUcQX7OyM1xakAOJ2Y9duZ8TndXck0RPWPRSNGXAj8v9rWdm1Uu3HhNX5mbTsJKr+uY1hKUl2r/m64InasP0SsY6ootajlDY75SpLAyaAB+6NC6BN9XR+Ph+NTUofSSCWYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738743953; c=relaxed/simple;
	bh=cqmDcUvSobOOmtBwzGPJqEbs57aos4Sw2qBgxPTaxdU=;
	h=To:Subject:From:Message-Id:Date; b=p7kLwh86XIrvEmVN4i+tdVLl+6YVPWF+eMO657+NdGZi9s/zaC5vDga9r5LpyFtMqGnbnvxsq5VLqO/G8Sq2LrU4wE0ONlfrZF2u+ZOUbQ38OwFsYNl8srrGvRC5DLJ2pz0oQ34EYYrtsXRkK6Dg2LvjIPy9AKB6BmfXAL/hdYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YchyWTqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YchyWTqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFA5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738743953;
	bh=cqmDcUvSobOOmtBwzGPJqEbs57aos4Sw2qBgxPTaxdU=;
	h=To:Subject:From:Date:From;
	b=YchyWTqZUNFd4KJsWV196WHITuCwimmzG0zaBrB9EgrmrxsZOHXKJVzfLkpl+eed7
	 kqFlu94KooJ4x6KKttzUNSrU6hS9nN6/UzgTygTg6zTMexpJQlTeoXdTo8IovuEki+
	 WzHUtPEe/TC1N5XLYpOO4dRNGhiEH1bwyC6LGv0PxJyRsxNHYvEOw5JlKtnAhYAT2e
	 KVYPeKcPDwc+cFuQa4CtrlZyWQC5ifO5I/f5eQJbkqyD8xS/ORSmhogdekitgQ502s
	 616CqJIvtV5i34snm3VCC9BBfkYJT7AifyBMnLQpaOCriCYZg/8t2I5T7kPuMotRp4
	 IzBBB/lUYP5LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C798C02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874395362.13358.5691274522743361287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b589c2296240c5ac2e1f7286b7b3d5d33317f912302f2b28477585f111f5b75d
Date: Wed, 05 Feb 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738743953
