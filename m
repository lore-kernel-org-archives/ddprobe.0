Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE413806B0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781687194; cv=none; b=V1HZrJgbUOoyzUq7MOUfesVvXCdbfOVmJkEhNzPXgGaqos6aWfBrXyOPVOCWMXnc1XSHt6pfmuW4Bu0Hr164UfwMx3vL22jA+2no355uqRGAfYKmcUv1CZFmnPBtRZdjngujgxCpWHOfVkjWRUnfCP7ptzhIr5mTRFFiVGr9un8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781687194; c=relaxed/simple;
	bh=BnEC+M56mqQxhqBND6VUXh14zmKb+8AveIM/TVA22MA=;
	h=To:Subject:From:Message-Id:Date; b=CpWUVJErsL+Y8cVUxGhcOGKIZtdcGCYPeFAoKHB4xjKVJGRVrQjP4HNOVpilj9jPYdYSMWzY1yp69ya1sL5Odhg+CcvV47H2sj/lphwv7uSBowMNszzSU6L/9WUScbpyz1igXH18yJktDqNJW5XBwz2cU5tNlIl+Xw0ILl0qtpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxkuGzRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxkuGzRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27C3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781687193;
	bh=BnEC+M56mqQxhqBND6VUXh14zmKb+8AveIM/TVA22MA=;
	h=To:Subject:From:Date:From;
	b=AxkuGzREQYVkibSyjAcI523LqRGWif1SdrD23S5zOTCzrUbaD2v9PJfaIZCF+Zijh
	 54H0RJ4QmYOH+Fz62FEEvDGQMa/MthjSxrQLgniS5dRcJPEPgX2aExUgvfjkNvhqIF
	 daEvh6ve3NwBNQLbCni528sopHT5JB6mlP5h+Ytuv78kYdK9E3dHlJUX8ZXo4hlEvE
	 7aYOqFU/uesirEQDeSwp1QTBBOcGjqUjeM/hgtPBCwYlOdIuGk1NFWCwJsYswwP5ZX
	 CAKfoqn0o8+jAZ3wv3d/UA1M1dH0zqqX/n8/cOlQwhEoNWf3F7e+LN46+sCvzcU4Qg
	 ShROw9Ux9gqYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB22CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168719370.30189.11741018125261702293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5173abd948459a4611eea40af87852c8a822b0373f0cb18b119e53e836d5df90
Date: Wed, 17 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781687193
