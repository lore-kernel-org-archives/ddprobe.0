Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F22231830
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782183994; cv=none; b=shzA7hNCsU5nHS1G1bYv6TfR89MtKDKIPak6wYhZ9av9LQjNkg2uODHJ7WkxZrGj7EVmnCdliveOPAFySnpViMjjvRgvSwNl07lner1UD1JBztzQ9mpmk69wnleq0JPk6r/JdZVf8PXywMTS9WhGIBSGgXOLVtUdf4beMnozB40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782183994; c=relaxed/simple;
	bh=ia7uTMQpmhJWKUzxOyjAqE+UGnn8f+Qvg9m1MkEJcC0=;
	h=To:Subject:From:Message-Id:Date; b=p6NNR3TruA3abhfW+414EBlwodcXhYu/tk9CUiqi+4Gifs1CDpOzJoI+GnkjGD+o/DSJuxrxXc76cXzpK9GKRczbjw7ccsuzfOh2yyidKpsIgBJXnETkTQuQNbuRaWcJWS8P1ERNCEogs4tfus1ChTKmHTsdh0wqWLzGZMx3g1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm8EiLtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm8EiLtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB48FC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782183993;
	bh=ia7uTMQpmhJWKUzxOyjAqE+UGnn8f+Qvg9m1MkEJcC0=;
	h=To:Subject:From:Date:From;
	b=pm8EiLtCoZlHUo+yKSshCErIpTPTvRP/+sIQB42VDNl3b4r0rrcaUlijRs5RWjaCi
	 j9v34lspE9uB+WPjxHXGLxE8K8TCDfV4Czjm85Z3B/GwduFEp8b5E6rf1Skaf29E/F
	 lToRD4GyYv6zxTl/cMBKPCMK8yI1UwpF5syWcc/wawRywpdC9esVy3eIIzFKKiC2US
	 yOmrPsCF34uqBupf0a4sZtd0fKy9GUoziHR/9O3hw7H30wfPj3FpSKoT1D30O/CtFt
	 dWHGccD+9XWJ58txwBGqCYDwoP7ygD5HUybWgjA+BoZO+kLWLe2iUXk1hDmudcD6fJ
	 PC8H6bXcwjWHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012ECDB46B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218399371.27972.4961462750148959176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dcf4328c22ad07ee235ee9db220c12864ec26c018b92cdaf03e1a0d0c3a148
Date: Tue, 23 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782183993
