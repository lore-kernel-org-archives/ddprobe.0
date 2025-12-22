Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EF022D792
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766409834; cv=none; b=nEVseU/7LDg08TrFQxnbJyrPiBqgbpZ5cpN7fTeZZV4VrL1dold7DWvgueU7MwmhB3HX11bx23x1g1H+211p4nbtwDrM3wjBpC6UE84SawrtVFhRbc8nPOqVUhlAtShfPqBGKhOygP/UK+stjVpJvLZg7kHgfkGLagNeDho9feg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766409834; c=relaxed/simple;
	bh=wQ0l16Gcch7KslCePU3kBtNBbpxUPXAJ7Ul9CRbUvJ0=;
	h=To:Subject:From:Message-Id:Date; b=fyIR/tJHEm0Mpf69ufksxY4TgutzoSzwK0oLv/9tTfT4b1Sh0YUacGxvtTtW1WGvxhDkC9EC+vhhG8xl/HVDNrNxxXbsRllID+wNmenI3VwDoP3gDDn2ogsNGpSMLRfzBR/xtWfVf9q98lEVBKNmpAfrUDfIK121QRBlasuFjAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssdfAYx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssdfAYx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C38C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766409833;
	bh=wQ0l16Gcch7KslCePU3kBtNBbpxUPXAJ7Ul9CRbUvJ0=;
	h=To:Subject:From:Date:From;
	b=ssdfAYx5EMsKqBmt8b9ar4jg03Tz/5sBYtvo33QvXTXog70Po0D3LvzefKmDj3Gq0
	 ncwRgJHL4nOlRrKzmKVSJUP3vuzuPujFoZfAZUyiHO87RL4Q8YylPR+gMEclgL01Fj
	 MZ52Mg1v/MSoLZnPdSK9jny4j+SisPBsFNTd02oA2hY7FhzanH2o6WpPCmfsFgM9xJ
	 /MagM7N+fSACuYDhKniHj/dNgMUnvHn338gHC7Qd2B0LwAclBa9bwhJD5TmJk26BPq
	 tVnPBq1mJWf4Lv5eG2OQ4xkOhwC6xNKyAwmw3QL/ythV4vHgM+H5oRKd2O6YbKIJSc
	 fyZBsZvvvaSgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA7E674A9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640983358.13327.6685107143813305000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b4c7ec2eb584cefbc0ddbe451476e83617af8aba94d1bd4abd465c51527f90
Date: Mon, 22 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766409833
