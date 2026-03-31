Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC061946DA
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774918494; cv=none; b=ma2gZqIPLZzwbsTLWG2K0ODuZfHVWwbKRk4JOWLNVuZ0LADKKRv5s8BKtgEFLKR24mkIu5cfZM9hWK/WcNv9sD6scYan9djP0dslPxDv2Ca064A5+Edg6Eo9jbTOkvb2H+t92HWH3O8mCHC4a03r2VcmSrLvrUvvDBX12C1NCEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774918494; c=relaxed/simple;
	bh=B9gjciLrFyY2jPmb05YX/Ndv+qyTNaP6z4rmksmxs5M=;
	h=To:Subject:From:Message-Id:Date; b=ggzOpIrelHCn9XuBUhcaQPQmCRGDdN0h6tVXXT58qqsC74DhKbwraBn3GYs1TMnU0k/lIj8THWEZ0uGKoCP7LGdj8klBzwcbgdHvKYuHV0u6AoqSBF/X1aktUsBMsJ1khM3fHGve9gMfIlmecPeemvdMGIlaXBNS8T/OwmzVokQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr+Ngx6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr+Ngx6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774918493;
	bh=B9gjciLrFyY2jPmb05YX/Ndv+qyTNaP6z4rmksmxs5M=;
	h=To:Subject:From:Date:From;
	b=Nr+Ngx6e6xmWZiAXOKn9AKdZOAyoqnE79mQG9GMt2eBjOQs6Nl6vkKAz59h5LdjsV
	 WrTMpzbqTSd1r0DeqW7HzEMBZvJD8Z/L6kVy0w0WQG0s5hjejoZIImeolZ77EZrB4I
	 30yhWAsZ9tVwvcXj/fpjBBYeU/HTPwPdnYKD5qt3OoIZ4s3yLRVCvsEqYnFJxBhJoI
	 P4DXjnyPZRdi7q1BI8teHvFiKZK95+KUK6ZNB+4l0JnK3/v7mgG7M8Y0hWzTW+VaYj
	 t/GZwtGUbFKaM31ku5/cvoKGughAaHUzpT9W6R/CQGpMqkRUfPFfb6bOXUhqLgEAjS
	 bKaFWEeCzGf3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C91061B28
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491849358.13492.6248591585941026874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404e67e36dc52e75fe45865c58e0ac8fee02f0cc3af8fc154fecc435b3ac55bf
Date: Tue, 31 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774918493
