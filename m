Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC2A13A3E8
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725137754; cv=none; b=NLYbkehsNUOxjZYxAPhSWRyTOksAXfYGhUv/6E2sfxme0rMxPPT9cYkyZTON1stSq9LtgmE5fHtEavrGObrBc540x/yanmJRdRLZTjvbiNIb5qLzL6XRsBkRCKTRftf50VsRloY6y6KJbwvKMzrvguMqHLf/P3Gygg8wKjQPZ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725137754; c=relaxed/simple;
	bh=PvBfq/fVkS6GtPfCu04Z8rU/eLBh3A1hfP8DWYyWUfU=;
	h=To:Subject:From:Message-Id:Date; b=p4ulQ3LILJViBRH0Evcn5dkhtrph8kK6NQwEtCZD7oBqx3fRChIaAaDmvEQojcxJnUktN46s3gRJxjTvTRMROIFu1ueeWPgkXl4okB+TWmIKMA3sjUuwDEz4LNNikfbMO1mMt/gUsER7StW3PUU+fSYuXgRKlMvMR2ZdHzvPw2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWum0vLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWum0vLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D6FC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725137753;
	bh=PvBfq/fVkS6GtPfCu04Z8rU/eLBh3A1hfP8DWYyWUfU=;
	h=To:Subject:From:Date:From;
	b=PWum0vLOkh4Dg6NYIJzFmAv+6jKhgpR98XRBciswTmQ84tldM+eSjXhEwQ1TXnPPt
	 GBXlX+JmimoSz5xJ87vUGGtO6EIGMNITnsKwMpauoG3SVtjWfpejoyUL4kFFy6wY4t
	 vYynk7gwaY57aBCJqUHpKiOKOrrTB5Ovwf1dVgYc6LaZ55FzN/kreZBSGQSyqZop61
	 SQxRg4FOWtARx7P/WtR7sn6hVkY3PvHhP0yXOVQp7GNZWGLuP5u1AOnj6aYE2+5WJx
	 jwmwgrjyoJoV4si5XUK0zb3N6K4KpSyqOz/Yr95u3QZyVuiq8yCgve5QWRB95el6ez
	 Xu0GswZXMCu9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9755ECD13D9
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172513775359.29321.7268172417350649911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce0ba035141431ef0e8a35b28950902c0430ac854bae6db488a0f86c7c2cb57
Date: Sat, 31 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725137753
