Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857013BED30
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788609034; cv=none; b=HzAjMdYWzWTDdk0EVYe9n52wnfSxgrK01DwznnGVNleDBhl1SnD/L2A3JTtTg2znims3AHRJqOGdhQl6PzU14mhsB4u6xqQLgi2ll/NHIb+yFCWIVWnfJnSVXn34PC/T5Q+qe7hzaiU8zzEeQX3dT1OlxQ8n5Mpqo3U2kiay+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788609034; c=relaxed/simple;
	bh=l3bw4NkkyLZtpBo7tuSsgL3zsaHqsGFOYeyal4iJTgU=;
	h=To:Subject:From:Message-Id:Date; b=JAOkfUe6RcEOlFFykcjc0u51ao5SQuaYzBdxMd6StChjWEvqUuAF2uyulxeJGFCp5SVe+crZfyC6YsM1nQvvjX5UmJeufBrEjED7lnJbDU+2OTbUzToQJdl/ue/7FWIRJcylmFKF/xdLQIaGsn2kGLXURj0XdykTtcqDLJ418yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpNyOy1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpNyOy1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788609033;
	bh=l3bw4NkkyLZtpBo7tuSsgL3zsaHqsGFOYeyal4iJTgU=;
	h=To:Subject:From:Date:From;
	b=WpNyOy1fzzwovsFpnt8TTXxpK3x85Mx9yxqyi4uWwHN40XMmYJQtP8EAMPj7G8BIQ
	 O1MNJefJ4BuSPCkZ7OrQKdBweojtr4wevQkNmyJrNl7wHz9KGfkFtc5MwasHpEREI5
	 oCAanzr2Ywi8YBKn47+xUpdMIg+b6SSD6xj7+Vvj/v1XGVfgTT/YiSIDDLivI9/lq2
	 K7LbfYCfKv6IxgbW8MR+kroLFRiwlddJWKS2SoodIm6/+aFxVVAeLD6uSpV4yYd0r2
	 VufXN4XIpuMt3qUMYTPszpzIqRae6E12qCjQyorZ1xyCl6GQGhD+S2Cz3PHWULji/v
	 +Rm+dtZYbt+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6EC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860903369.2293.16634477641801965249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c5613e90247d57f6fbe78ba16b375f524720a9c0969a465fd2cdcae74389ae
Date: Sat, 05 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788609033
