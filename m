Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7C2D0C89
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763396514; cv=none; b=cE5uqE7Qavu1bdJgoR0R0pl2s1x7gYHO+fe/yEUOeoL/2QwoZs3mgWA67GrP4/2eWlzsvTqZJJLjCOR7K6afD4fOQ3p2X1UaPQaU0j/1O/B7amu14iPI56mtOY6cFwwo8qbCWjgZs/oDXGbZFaOC1QgEOE0C87C5YdYFyfw+VaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763396514; c=relaxed/simple;
	bh=B1nENAGg7Wq5nxdGcDTUDPi+fF0Zr6FgC0G7JlNFxKQ=;
	h=To:Subject:From:Message-Id:Date; b=u50qvbW+FlIM3CyGoAn3tKwwS1NuOmUgNLb8iZwARWF3rt+33ReC7nb4JN6uA0xOYLy59E9HIfOKTEXCbKnlPxePt8fKsIJxAXsqCBZD5sE2wLp+A/lgaAgxuha60401xkhwvTC91RNXAZef1GrE7HI1ffV0ooOeVUxOtnuBtNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPHjgK9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPHjgK9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96B2C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763396513;
	bh=B1nENAGg7Wq5nxdGcDTUDPi+fF0Zr6FgC0G7JlNFxKQ=;
	h=To:Subject:From:Date:From;
	b=jPHjgK9G2mdiSqwzOdB6Pmkx7lnN3Owg4CPUIkp5E7d6b91Uz8I2ee2auTqpBi1W3
	 LtTfyhwr2v7AKIKsFnLUZTAt+HqOcofsHmaC108RxNBkS/EMRbAh1M3gvJ+Ev7Vn2R
	 5IP1dF6dqy6OyZHeuOsoHF59bFcO+iXmXm1+eO/y8pGYT3zJIVQjs3RH8Bs3vUYJTa
	 9B5qN8t6PhNO+kgFEOWHC2ulb1EUI6dMDUuTq1wEJ+MyNfkvZ90tykdUlXS8SEIV5g
	 yaP/I4gwqnzYm/Vm0nC0yn0gP9HStQWA5ejsUSbVi+dknfoVVPaM9YOMAg+A6khw+Z
	 4W4vvLypNhjLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8650CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339651365.6376.1744383395043704846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67461a150f2c3aa58e0001a6d2012e18de23f0f8ee0344ce31a29a55d2aff086
Date: Mon, 17 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763396513
