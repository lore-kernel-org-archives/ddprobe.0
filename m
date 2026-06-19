Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC5B2ECD32
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781834194; cv=none; b=YZ4V87zKHEfONTSSbuNQMHF5IQIG9R5Rvv1WyB5sF6fPB+pdazUfoe764299mTCW4MdkSntshYvMR0u0A5gc3EPo9YKCBmtBQiOHCrBRJ9KfHNHR3ZMt/RAVUJcUw5qEpN1PUy0uLZjIQuQRAOQKki1zePjJYuwTGBQvpELHb5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781834194; c=relaxed/simple;
	bh=R2ONUJZReylgoHO6lfg6kFGJeIBICGr7Pzv5+t5fRl4=;
	h=To:Subject:From:Message-Id:Date; b=rtLnIkwm/btyvaPfwAzBdbDiXS5RRL2ibBI744dZbtMvKRHcbbunF6MlQdy/bB9VYW0J3GRP6/5Sb5jWUhJmk4eJ7ctPliKePFVD4DwytRfA6NesZhSCb6AbyGJzVxYYTjpFmyLnQbwq/tswwqTVngMxPoJGSLFyDbO6y2+ERjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmBxeEVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmBxeEVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB632C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781834193;
	bh=R2ONUJZReylgoHO6lfg6kFGJeIBICGr7Pzv5+t5fRl4=;
	h=To:Subject:From:Date:From;
	b=tmBxeEVUf9xmRBeAwjYpKao2QWWANP+psSvoeyygw7mfGBf6Nr4N37GE5A1paqNby
	 CTZw7azQ39/+dufDP8cCi+H/zMjzEWvvCJzYQiJCc4Mzvpuut+bsQH2Hz6jPwRFisK
	 PRmRxy/cJ2hjLPZqP5zQSNaDapjFPdF9bx+gBtU9w24Au75mpXxf5zLLZDWXdYx/af
	 XEPmtxFnptF5Nmi/esYzGVzNB0fh8IVJOuXbcPJ2zELkjoafMNCXjUdzNx/9oR1aPb
	 riSqe82XJyWU5HEdtRjDnGPabHUhRBnT4Sv0436lQAxuxcZik7meQRk0O9dTA4qJYW
	 cEJ7LHbkBkX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE866CD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183419369.15596.6277705178740193333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9701008201699798a4859cc60590d8d317f981b8a2eaa67aa4aba927eef8be
Date: Fri, 19 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781834193
