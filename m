Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B88231836
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779933154; cv=none; b=SubbZEinjjYc5T92txy5VObKnLUjx5xhZelwNbplGDX38SU0WPxSro7h+qT7r4wAh9qFKCCiN2sxntsXKvjg86sbeJ4WIev1s9JVW4XXSzVgXZPwRtGcn6Emn7q1ykhHDNZ7THYTneSWKsiLWPQ9yWAdrby8cwNrpPYqy2WB4Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779933154; c=relaxed/simple;
	bh=sUrGqk2Xw+QpWvGF920tVuzGWbNYdJ6JQhx2gcx2DQ8=;
	h=To:Subject:From:Message-Id:Date; b=LuQdf4BE/bVcRC3fqeSqM5uSMjLJQimTnLbTJzSe9GA67qWpeQHZ5OHfs6/NWvJc5QlF6tXgkYeYjkVrQ5Tynuf9f3blq1qtYPO0qNO7frFAlKLShmgQtPJl3FUGFBcMJ0j45Icfs5s7Y6pakykLvtM/udMw/pqXOObm7BlHwLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcfOr3/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcfOr3/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50D8C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779933153;
	bh=sUrGqk2Xw+QpWvGF920tVuzGWbNYdJ6JQhx2gcx2DQ8=;
	h=To:Subject:From:Date:From;
	b=IcfOr3/gI4myCyWUAgCAO5j1mr2NO/jymgiRztg64PJ2zp7OUqs6qhKmCw+l6PeVr
	 B8rghsnoQNpsmEcOeZ9fso/KfK6Zgd0tslHilwekfR+Y62etcD1Ym6hhKud0uyz1zc
	 Ax6GxQsyKJY1FFFjsodGNDz/YnVZpVbNC65n3jLnwVb3WTkIUNWzpEfYkdLJWtIbmK
	 9QwRI4iOryDDgSLRbUOt5xUSXmsfrXTb7iY5pINPV7aEzhGP1SqkF2Y9RPv6kVl6bC
	 ChxK/Joj2teaxRp3equ+/ljCGB3+IoJwWX8HMfK2LpwlbZQ3pyIHOdiNxbARpikNQO
	 pYl3+8hTXrDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0A1CD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993315369.9109.10230092368500402990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588ea5277bcaf843f481c321a27a32198b0cccc56b86baa8f306ea3a7b7dca1f
Date: Thu, 28 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779933153
