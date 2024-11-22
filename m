Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4642223098F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732245354; cv=none; b=gB2FMBxLdFE6rQVGLJMrjD9TOBjG1cnQMlbLFoOjQQEZ4WEJ5dlzozG4+Ybt55EY2f4UbEuPwE9SWq97fiqca9BNasNjvqBPK7LcDzbhZbFfESrC8Z1/k3zW99IXBGBX83rkrgmCPYj7WKjWgrQF8IH4sTKlTSaUHUJXhN3Vgj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732245354; c=relaxed/simple;
	bh=CXr4CX8QExYbD42NQz/UgsNRG+xc7bIMgyex29vLar4=;
	h=To:Subject:From:Message-Id:Date; b=suVUHULNxPzjwaoMOszLFBaVMIkQ3/VDrxp53fC0sgklgaUDX4P3wZYC2z4L59mf0nWcFLgsSQAhJmmaqhs/FcQqP8czycKmOt4LC3ozIyZc7kB1gABNfJ9T75DdGdLb3wT8Wc58g+EGCo+CmjSIsV5eNZmvw4zoTDM1CfeppAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUSjaO+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUSjaO+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A57C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732245353;
	bh=CXr4CX8QExYbD42NQz/UgsNRG+xc7bIMgyex29vLar4=;
	h=To:Subject:From:Date:From;
	b=BUSjaO+xXt+donZL4yZeSQBUhOU+WuAZ+QEEg6Eh7mWYaPm9ReA80/HZrRmpLNn2+
	 1H3nGG/0R9h0UxxCd4TjQzYFSpxro4jC8zMgO25OLzjlFTcbWz0R6A1CUc+kms7Fo+
	 p6KmiuhOj5qHFUPt5xiWjVUF1rrpKyGC4rUYPQXtFy/XlzREBAFXJbnuyTXK0N5zX0
	 E7Biym+7ZUrtF8LnQbL8APmVHsE48/v7GaLZf92Kc8IWJOzFGVit27kgjeaijpvKUb
	 8NMl2t9nqM8TpYP0fuP0g1UwNXH5C22RzoJplYFR7rGGgGUbtr5GuyADjW1EAhmWgx
	 XyXoCP9OFd6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B39E65D19
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224535364.15022.12444725895932570082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b5d32da4d707265f83f84a4397e08675e4bae403429857899b3afa96655179
Date: Fri, 22 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732245353
