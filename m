Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225E21367
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749307795; cv=none; b=iYLy93afYi7GybMCtt/Z/Id5KdZ5PBCximoIZAlEsY7y/RUDTFXgHO8zqo8YfANUMKAgpzmbBPyMSy1Oivhqr/WCA8gWfWgv5TCi+7YXB0EM4o+PrJPuqr05T7CISRKdEctO3qeINVKYPo9AG7ItnRp/oc9jTnOUMEyROyQNsLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749307795; c=relaxed/simple;
	bh=Gk3Ypr83JIGv4v8KsserLL4R6UawC8NQEcpQZDWzvyU=;
	h=To:Subject:From:Message-Id:Date; b=C6fLbNPlzpf66DCBGSUiqf3MMuJ+uLImaVUHo0BZfhkE8ByVTyU9kdEYIdfDIXDbfhZXYgdzc7uduRy/O8/2XCv6/7/eOeTUu/0HTnIchqTFXsv94KFl30JCEW6xxzGWPZWTs4QhurdLrK5SzEI86n5BZX1GMVA/1oueREf752U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKhsRx/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKhsRx/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9266C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749307793;
	bh=Gk3Ypr83JIGv4v8KsserLL4R6UawC8NQEcpQZDWzvyU=;
	h=To:Subject:From:Date:From;
	b=YKhsRx/b91h6rRBscxLOddLxBjHAs4Fij1JmjG3aIUAB9nMeV2XhKhiRz6TnKIccj
	 RBIFNvQuxBAuqlLZZAd+haDTbtSJZ5R4WT89YrTvyhoGc/2QirAtHBGghryM9MbroH
	 /pNUGuc6hXabcTxTO3BPm6Pl6BV6rxsheZjVwjan51cUnc8QTjFsBlEZwwiIDEq+Hq
	 BKg0JKMfF+J5dtad+8IkrqyS/xzkkeoefpDIhX0f8oFn7kPGWYfOuPohOFvUfkBqs8
	 ZO3LS+Aa6d4AyFO8jaxjbVh13zXseKMXk6ugqQ/kpic9t+V5ed8/c4c75GzIVJtpgM
	 DvcYThzxey7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFAC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930779358.28805.1837738271171366599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f32bc6394a6c953550a0b22eed3a560675e9ab3039b9f74739b6bef0b0c55c7
Date: Sat, 07 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749307793
