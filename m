Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBBF13666D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719995123; cv=none; b=X+AYNjdBKKhZQ7dLHdJtLcjLPtvqtZhBpHR/RVg/EB3uS0E/ElgaQYomEWsiNKH2neyjEtPnjk0Zjt8e0oN/eUwwIRRFuS/B3qvH2wBg1uReBS7AQJo4BCLjY9GjBAUhnUyk3StpbHREYNvxfWw/EIvxgvBx4s3kti5cJmoH6TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719995123; c=relaxed/simple;
	bh=3M9UJ7iw7jAnCN/RdWtcYc8vykXokx/eDi+NhW5WAMU=;
	h=To:Subject:From:Message-Id:Date; b=DmFFI1SSxT6+4l3GOOaxd1w3nQck7IZ56emSFqImc9DUTQoz0defh/IvlQgvABPl38WRB0JEtkZju8ubx5CmHtAxxP+5APKb6K/k8HOoylQJKlmFO0AZ9Fy1bTdJMJFyRArintIkzZXtQm58jV8VFTghrYLT2u9/LnGoKc1Eb/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ik0RvU7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik0RvU7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E24D7C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719995122;
	bh=3M9UJ7iw7jAnCN/RdWtcYc8vykXokx/eDi+NhW5WAMU=;
	h=To:Subject:From:Date:From;
	b=Ik0RvU7urm1hfEUH4hBfJq6SInI+G4jbr3mEs1lDQeH6U+OnLq55wysIbGx6+iza1
	 5+76/pRAxTIilXOgMTCwCStSY6dgwJ5cjA/rjG2EfgokItZRdPQsKEiTzy46TufUvq
	 LQVkphbdBZ/JzbpSb543K+D16bqsYRIWae9HXbgEL61TR0Pp5f4+mocBMIdWTFBNBd
	 82dEaGIlNxNgCCaRJ/hnf3Y+ZOfsozlsOhEyj5Q2yxY5pO7huIML3mA4YcI3J2NFCS
	 6WLwc1K1mgVLQpLxSH1atLn0nGYnaB2wTtQlWFbK+FqGh3R8qL3IsmuLvKqFEkcaJU
	 zhNZ2ja9C4k3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0FEC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999512283.15335.3655869393562957219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b36f796db5e4d267c9483975649bf06d9fa27c157108942423852a200b51b23
Date: Wed, 03 Jul 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719995122
