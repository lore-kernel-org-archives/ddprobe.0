Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E2E3D66
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735950354; cv=none; b=NhtxOkD93NGcWZFcnQCz3+Dj2gyS6Nt3V6ISITB6qNKkMfMBbps+bbWM5vezG165lEl4lMcHBTWmcohfGJlZXTAwaAv7h8NK+ptXdaPiJ3V4Oq1XFygijoVQW+Y7K7IDeoTTxvPzMIjC96h7PDi84xtYo1q4tqfiSCoPIYWugd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735950354; c=relaxed/simple;
	bh=na5ZhgDU2Z7nxEdxSSvsdQcXdSAoX6rOIt0rUKk6gUQ=;
	h=To:Subject:From:Message-Id:Date; b=OhrMy7HQyeAeU+pKdnXVsjq/ui96YEoWQFTyr6lrXL9Hwi1kRj88Hqw6pu9Qp9NmB4Tx5wLy/DPOk4bh8GUmwXMBsZsSyIhPhb3av6mKuxyGPaKsQJWJ2F0oEzetH4g2ZGMnNOVfDE9rhdB4GwOQOVy7MPs0KeBmkqCoRrvAP6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1jbBKwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1jbBKwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B653BC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735950353;
	bh=na5ZhgDU2Z7nxEdxSSvsdQcXdSAoX6rOIt0rUKk6gUQ=;
	h=To:Subject:From:Date:From;
	b=W1jbBKwzDWwz22+T45tT+xSN5C6VMOcMM/XfCCzT+/qgoo7zdXmPgS/YJDEx0NB5G
	 PE0pl0hXZSZMPJaEpTVolg4Y1y1p101GeIFpxyGVDA3NxeGGJ3X1msw3P5OVEnqLov
	 5cmxkZHDFsp1L/dhqRicyf/JB9Ap/0ojib3rC9YhJPkxG6CTIEXqwMA9BNwYmI+eJr
	 lTlH911ULKzhKgAXxsLwA1M2fHGvSQCDtX9d2GXCDZyDcuxk8oar0GY/Pwhe/OHHkt
	 4eqdPbZwt1oeyCFwkeh3pub20Ho3X3sH9fj6Ql0k+n18DeUaAZE6A5VOyHnjIuFeI1
	 8pi/sV2edjlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D7DE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595035360.26979.17131127002358531104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49651eff07e4d7c832624c29af7effed8f592f2d90ab59ea5f672cdc6602ab9
Date: Sat, 04 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735950353
