Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB0F3CF68F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791350434; cv=none; b=S4gUBLDXIgqvmll0GBV15NCzRAWBtQrI1n+GJ3FuME8RDyX1hu2HaqbnbhKZymFTNY1XMR4hDZ/pnHonmAl32KpgsJC5gS9cKwHYoY+I1blzriOAM625KhKI1ByMB0Ts8XcITe8Wyw+g35VKbD/5vkLJHzzhfBQTgB2rCxVATX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791350434; c=relaxed/simple;
	bh=189GNvBRqHkyQM9VFN3ifJzJ9edUAd/Z5et2mGAhLBM=;
	h=To:Subject:From:Message-Id:Date; b=YpDHy4xW6EluIIaBDYaulW6nFH8LUirVSzmNsSbr2aGCX+SLKkXYyzlz2Asnwgr20cVPGLgCA/OwiLdiFOCqzHgciifR/zro/ouQEdOz20e/BthHiCx9a5HqpOYRLWpvwuYUytPXLj/u2wTQTPO8GJbSJ7ZDfsGjsjFEnMkVV0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3Wb7zN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3Wb7zN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF48FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791350433;
	bh=189GNvBRqHkyQM9VFN3ifJzJ9edUAd/Z5et2mGAhLBM=;
	h=To:Subject:From:Date:From;
	b=s3Wb7zN+ow3J+VJ8w8c/+slA1PZ2HgdRIa4PmtE1IkxTNUvcMFLOB6ZjhiuMYqLS7
	 nocmxQyVZU/RANWMV3WU+iO3q4JUIiETFmoo2RheagnHzF3ZhCKC4UPchJ9IrBYkFI
	 lNIhK/EH6veLUVEK7KZCjgTuTEnuZJN/L5cu+EbDNhx7aovXUP9+utmVyPMj8CHFan
	 KoI9RFthAjIooIZwNEu23aeYWn8NZ07r4BwYXGm06tbplccJOamMxyTBaH7yxiwLPR
	 OdTKgxCaTBnMY1pNfDUREKJ+qEwU9k0TJmvJ91Ce8Lyhi0dceU4TNbghvOypedccKS
	 hpTI5UlNQSlgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB27ECA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135043369.10687.5227276916222146626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a57c46a77d390aaea1d41d6521a96b9d85faf3debf4aec31376c73fdb413b18
Date: Wed, 07 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791350433
