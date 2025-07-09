Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2932D2D8372
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752064194; cv=none; b=KhQNEYMiuJfS+VK2svpkOX5hrZZIo2hoNy+bVCDDO7gqFC469wM/h6A18UO670lFxbgyVzQgwUk5vnCjgDuzn2YMBSsNqYeBaGwRWs159uea220On7JSdp5WQSmR6abXLKeWksVYx6G6wxIvVuTCkMklSk2XH3v5KM2U9bKrtHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752064194; c=relaxed/simple;
	bh=TEB8eGs9ojHoxMgzFJZJcugcSqA13WB4Yn7c4838Jv0=;
	h=To:Subject:From:Message-Id:Date; b=AkEZAFAAFP99TAqU9ZoxBHOSW0NSu2ZiZPwzEsAnqxIoyHyUuY+Hl5u8BQ9L/UMyPhp7x0TCtW37FCVD35BEtlgAFXq/rMgPKmt+g4dnG6/fVnqPeHKyKuA39X2cZqvcQbMqp+OvEIE6RbiFYufdTs45dqh1fuVwqj7spet4JIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+CPb3Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+CPb3Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A27C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752064193;
	bh=TEB8eGs9ojHoxMgzFJZJcugcSqA13WB4Yn7c4838Jv0=;
	h=To:Subject:From:Date:From;
	b=W+CPb3OgMfeu+PvXKeb1bfowZrSTJdUT6tOs17NFXjdhoScwe1NrWl2hJcRdskXhX
	 hqUEO3fSk+ZLdGMartHt2L2YGkFYITKHX405+26HQp9HI0oM25560bqSqFfjnjkFHk
	 0bXGO9fmLtuPztUDQOMIxclqaXyAqe/DCr9bzuR8/e6jvnRdJjltDJ+5QP5azxsd1T
	 7AZ1Lhlkf27b3zHLwM/C0u1QJigYbqrMHxNmtQwS0JVepEw+rWzFYDOkMEihVzorj/
	 bPjoXg4gP91UxDlVqGCJoAmTJwRduBAnqrnaIrH3ltq85dte6Wc8vEJpgmLZ2dtp7x
	 GLhxqoSvvy19Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638FC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206419360.1247.7262123148872861483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45eb15bb48ef45139dbd8e505bf95acb877afae3fcb8d08618b179ba260573fe
Date: Wed, 09 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752064193
