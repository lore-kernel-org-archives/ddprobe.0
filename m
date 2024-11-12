Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DD9219C8D
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731440154; cv=none; b=fdXS32/mq3+dNex9YIUTyqjg7VTLBf8k3RWp76oS2aFZu/3RQHopbO5kGZdF1j7VtDrbM1lcB32LT1eKXRNA04h9y/AvSwLo2Z/ewrSGq8XIdC1EuzJusGd7Smy03vwbMJ5+eDefN08JZ01gk3Jo+nskMhYV1OCgn+WPAyrrGV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731440154; c=relaxed/simple;
	bh=kUOopq194E5dn2yQ2z+BHYbgZsE6TKpVg+6AhLzUvjA=;
	h=To:Subject:From:Message-Id:Date; b=s4Y8YKjruDqHLaQoMHefAWiD+QNBhA06H+Wr472mHdSoZgbVZSUvxjjKTN9LrOroEDu81x0BEty8tXlEnO1hAg7jsxUOQhvxN91KZS/X/uIWsxs0f50q8QoUIafs09GMGpyJMlaqAN4+Zz6mW2ul8lnYeCKO6z/oFRkP/++Obxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO7M+mmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sO7M+mmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E80C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731440153;
	bh=kUOopq194E5dn2yQ2z+BHYbgZsE6TKpVg+6AhLzUvjA=;
	h=To:Subject:From:Date:From;
	b=sO7M+mmAgnXDEjNkkbXWwwLIAl0aE2mw5gNVvQW7qMrCU1JcSY1SkqAMdMvBvpgp4
	 E4J4ivd5+eQ8i4vZb/u3rsoWNP37KrDp0rlqWSPuNueFWj9oNCzwNmWncWudqdpzBs
	 xwu/JfQJ3u/dUskCtsLfdGKoth4GHFIVy5Ky7qViArgiyEOrsN2Gr0SvR5F2HkAANF
	 n1H+6s01Ih19gtphhpV0jheTCz+OxxHNdPnPxbH2P6KEsHiaOFxJWqojPMP8hai992
	 K3m4neF04oArhaO3Sx8QjhkL6OeTb6KNis8wmE+pwrmSPzqqaf03C2i/12CfAcFbET
	 6PQ+23JOyQgUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B96D42BBF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173144015360.27164.11930874219515717987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2e2c672a0c724f7878dfbd50b810761deae47ef2c9b5da0e812191fbf107b5
Date: Tue, 12 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731440153
