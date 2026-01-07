Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C565336EC1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767816835; cv=none; b=OkZkesH/ebtXAsVFT+3kBkdOlYx0BJLEiaaAoosvLCdBsMRLkBfiSkC0oH+dnCDvRD/x1sWRiBNVe8n7L+nxfTSax1aGEz9gEpwiRV6j0icy5sac9qlbsl1id8v8cVwWaVfbMOb9lEE/7JyFs+Zu6w6x4d05L75AQ9c+GVH8Jow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767816835; c=relaxed/simple;
	bh=TXKI//uXqGgGuBKHGGrTlMpJKywZUrrtapNBJnJll7s=;
	h=To:Subject:From:Message-Id:Date; b=lmqysMhYnoQ6dc6zkUAPH8cyNg7+RXPHcM+OXZM/Yl7yi7n8kSj/mQggNxI84W9fSxfkXryfiumTxSeABolMkOQ3INws64nR7T+4wMUdhxs51ikS/RwVpXSyWf2MijyAd9SlTrISiJccu8zWrErdWCrJGmcBE3rt/t67NY9gOyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK4Qv3/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK4Qv3/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D899C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767816833;
	bh=TXKI//uXqGgGuBKHGGrTlMpJKywZUrrtapNBJnJll7s=;
	h=To:Subject:From:Date:From;
	b=CK4Qv3/Na39H1kzbQQ4hTYkjrLsf8wA2AQOLMXPZIN8sBVKBeZ3T72jq0n48Pzb53
	 xaalrjgrWdMjGZVQKqnQxWYtfekRo2gOPqfjC/bHupz9PpY5nepvAlbO8TYEvB1OIc
	 0K0CiVliXjIZ2lABJMudaK1j0C5ZcP1pBPet8RG7SWe0S14eCt2dVn+DIiVZ7TFIPa
	 O42SX2bEB7i303a0Oz1aFH6ttJ1oSHFhNlNeHc0XjEUCWht/EMhCkN2oEqqoVbULSS
	 i+PXQlm82KqWP+x/oATGpf0SRv/DNIXZoYlbeVuSqJl3RxXeAqRG3YY7yAITJj6ZIw
	 v4s/fqj/jn14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3DD0D16F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781683358.17109.4806185351414631759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7207e3e8b5da9574be2d3127bd776f95f534056c4b2f1298ab6f09c3a9a1861
Date: Wed, 07 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767816833
