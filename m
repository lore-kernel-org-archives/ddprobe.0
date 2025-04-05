Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697961519A3
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743889794; cv=none; b=I1n0R351dKWpHWRgN6J/QmzPcgoukzLV1h0WLJRZ+0nFJu1AQSH7GZTYKLKBaGV4PT/ptSL2qP4ExlrxanKtzipAiGj3EXJTA/R3K0XPXFTMTdVYa2CZEagqY3XDy/EK0BP1WjCR1Aibb4BA1Fr9DXAlqQiauUN/dMgekiZkZwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743889794; c=relaxed/simple;
	bh=KjTB+m+C4AENC2mvlNKktZRk8KEHbYGrE1+6T6HvyH4=;
	h=To:Subject:From:Message-Id:Date; b=KEFmMqx0DkhQstS+ZtDU2NQbeXx+maX32CXjThrjj0vlJksA4oo9S2yMeIhzgkSokVxP+KWaPt2s3AWMYLWmeBO1Oo2wVrh39z+TjhnZurD48jDjH2a/tIJejx5X4dtO0kksuFptmC8ulPr0iGbnAL178kOyPaf4E2gkjGUn3QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrUXEM87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrUXEM87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DA3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743889793;
	bh=KjTB+m+C4AENC2mvlNKktZRk8KEHbYGrE1+6T6HvyH4=;
	h=To:Subject:From:Date:From;
	b=TrUXEM87FDOOfUie4DG5MD+a+h5XVnqrrSFc9UE9r5oHEvE5ZRReJGcCUc1nEakhf
	 /Xp7t6xX+uEz//z4QtOnaC6BYH8vFJm/yreSsxNXsz4oH72wy7zAIqmc/Jh13ANb84
	 1q7gLYmThwC8Qg0kZ/OvJhEihIY0QM1hU3oO8y3MLcUZrcmcm/GNzI+vbnK6exPSOd
	 hpeFTVkYIJUFuDuBIS8y9C91vva37duLzQHmovDx0rTtsDmE90knOIoeo5VjSaYM22
	 GmtWCqKaqUcjCqmJueMoUOexAwtzB3+gXSb6VLDoD46ChcOlUvuIeulrP45tGkgKiN
	 guHJ6U+7NcCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985D1C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388979358.19579.3599848763878954095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dc6f7358985a14f70cba04a97eac611ca265c6fa61d17267364ab08feb6c8f
Date: Sat, 05 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743889793
