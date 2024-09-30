Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4747F154C1D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727679954; cv=none; b=Pc94Y4E+tu0g+Gc4ukgQf/brapNiDsCYSum9UVEvV0gerMV/2X06TTCYpnIULXdBRiTTxGAW+uvrzTJOpepvcxpv/LLdbh5gTBj+oWek8R20JmiTQ9kd0otg6znp530bYcBYciTiJ2ZtRjYn0INgSTkQKuqlzOZsqXqctrTtcr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727679954; c=relaxed/simple;
	bh=q2UFzep0G33Qj48K/9jWso8GL0cJv4vsGVjew9SohQM=;
	h=To:Subject:From:Message-Id:Date; b=jx2puIeUX4phUC+DXBC1CwR6xvm1AVmogf9XZzTLzW5YUdZRkaeonnQ3Q2Izu3jt5KbkDNEdeFot1z/ag+8AA+/vFU66AE6/9KGeQKS0i0BZ1RBSs7ffiro10IpLAibtrHqt5cfk0GHgJ+HEtpzs9wihIcnK5u10AQKA6O/57lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lspKH2la; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lspKH2la"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2549C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727679953;
	bh=q2UFzep0G33Qj48K/9jWso8GL0cJv4vsGVjew9SohQM=;
	h=To:Subject:From:Date:From;
	b=lspKH2laO8YImmCEFLMtMXoXCb5dGakrxypmWHjjaqarBxm2Y04/gTxWFaPEizUfT
	 +MWfeBcuDiROHEAeQZswKE4suOpDkgBXaMKAQLxR2VfYLRRs3zU7QyqOsJAd06jMgq
	 o0LmbwoaAQNw+dbvjweVChUuTXAUu29u4evGIljbXoIoXOxKhk0gPdpMCilRiKf0MV
	 fpbHAZ9cFb7I9vDDAENC3zv+Bcii6Rrd26ztFejIcj+23u3njebRTMhRloq8qJYlx9
	 OHUip2+6OKP5JKLjpwdpDyw/QqEhmK0gP6Nz9LvzQuVTBCo+CK/K+B0zaaiZW+CDkx
	 /LPOg15f4VMgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCE9CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767995358.17915.12029616664972821713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3023a244c64386e4df317b86c288d2b6064591724da99f8297cdd5130b00f09
Date: Mon, 30 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727679953
