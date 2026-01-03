Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0483A1E94
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767464634; cv=none; b=etKaApSXrILtl2mHnZ64dj1MYCkARsKD0CmJArkYGaDd7glO9iL4UI+RQvFeLyJgPSkMQm6/Ujh7GDeGkUrgS5yFsHRjCV+40vANesPRIlS84DTBb3r8mgSK9EJH7ahnr61SxZsazcbM+TcjRUOvc5Y5Cn3SEHrJ8+CPrwAEFoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767464634; c=relaxed/simple;
	bh=LtWox0ztFF3c4A9UE67twZK7goLcb3hmncYGeVItl/U=;
	h=To:Subject:From:Message-Id:Date; b=HOQUalHMG7iJQp16jee41z0h37BiP5gSsci5EMiF3m/SWLex7kw2DtuGsRN1qbp+WnMcmovJgiIDz2YXk+hlyAlkUAnrakxCRR0FikXzS3tIUllKwEBun9Qf/8u2kHUXzXfvE53RZEf0bAb1e0VZVTXuTGQ1VQ8SWjhYTFhHX3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZnEUCoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZnEUCoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5338C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767464633;
	bh=LtWox0ztFF3c4A9UE67twZK7goLcb3hmncYGeVItl/U=;
	h=To:Subject:From:Date:From;
	b=SZnEUCoO6Z/2S9Vu3NNM1bpMcH8CsbWJG6P986LMQrsDamIqVsEgL8Ns9cL24edea
	 5eNhWsuu7KV0z8LnEBFD/XGg6C1NWoyHsGFP+REoyYd0zyv7MkjcGgcZQcT48QZRSy
	 5OSvWmPm1zQTml9giraFKGw293pG3bUdtdkCHVgfeB8iLXh3LfATrfiyoYKXBkfx5V
	 zYCLIS6EhqXbg+q0D4t4bg+L5Puk9JYS6LcISjfhc3lDJvxZaI3cs5Jws7/MRArV0X
	 j4AEFlGTFgkuOP4oHQJd76dYC7ZAeXm1ye1km+BsZwlUNz6qj4jGKFcLynNVdXSj1S
	 ynpJiL4MR8Jdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCCFC6185
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746463357.8570.17348023429327714276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3caff6cc4bcaf910633b64a83cd0cf0305349ca4cd5ad1f1f1e1a2eb445737
Date: Sat, 03 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767464633
