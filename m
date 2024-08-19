Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9B216848B
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724070954; cv=none; b=Q6/Os/KMmlgTWc97yQUZGwKUHobcDnAH1PQ4WjwulDMQnc1ARFtfptMQRWGxrS+QR5UxkoEt+wDsWFbhPnZHt1L10X5qn06R2JMQiz2JI/Qkp0YX7uRxkMrGvCCOEWD7EvGWbFlzSlQThNNdvVb1qs1a9N4ZaR6GY6oW5gAnDn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724070954; c=relaxed/simple;
	bh=0YgmOA6jDROA+4yuuRhet0DKg0Uj0d4Ra55s0jRVOhU=;
	h=To:Subject:From:Message-Id:Date; b=GvWXhgk/tVEIBLp8NfuomjALmWBM7Md3GmEQRcjegJKVibi66FfWmnYWbn8VKGXxEtzF8a15qbIw3fIXRWsuJMFXV2p48h0HPf7AsellxfAOAloHpyUd2DGPKiIi6sS7Ji5rGF61VSCjQJvwGIswfj2et5GLvMZAEtkHauENXnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfpOL0hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfpOL0hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8652C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724070953;
	bh=0YgmOA6jDROA+4yuuRhet0DKg0Uj0d4Ra55s0jRVOhU=;
	h=To:Subject:From:Date:From;
	b=dfpOL0hXtwuQTRh6xzw2EQJBBmiKZe0FZa79wjNbfZPUjJm6FPO1h6GQXE4gXjrwq
	 2Z8qcGkwo8hlonRIjI6WEQRD7taDPE/WdtlO6M8Mw2cWdXKdeX5FTZeZrmAvKQKXne
	 HzrqksNC+K92MJA9HPcLG3E6Rk24wc2I+hi3Tze8GADN1Nt88p2TGNwl4RNgwwgSDv
	 IbELWfVqVDAnXPxUkdwa/gZ/qdR0toDYJ++KLIYbDZZsOV5FK0rvoqvFMAFh0jJsB7
	 KmU9BW90U8/+CZYEVsuNOGYhf9api4vjTTVj9lUXGAGOLIrQzCNUdkGr+72gG3Cq+N
	 KTYwKwc3u8ZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A61C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172407095364.4908.404168262390633699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304bdc6411be722ae664f09cd93521d8ec90c301d913cbeed876e33697f146ae
Date: Mon, 19 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724070953
