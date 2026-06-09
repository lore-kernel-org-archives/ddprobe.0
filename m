Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC693A9616
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781009134; cv=none; b=BZKqkvyYZNjE/BdI7vHkQXUHP/W5ZUIX7p1dQRVIYXFDC+ISfZPpJUaOjPCukusiFCEXeW2zuf788aBGLTsLHmEczfzL9JdxOx7fUgf5s+P7HnLE0illeEqHMOK/wT6wMQ07AAY5SWDjDCy539P4qZ8yh1bVJgNM0wC2KT8Sdig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781009134; c=relaxed/simple;
	bh=ZoGebePhrys4q7Eq9X9OM06tzVWy2pmSmBczVIYppc4=;
	h=To:Subject:From:Message-Id:Date; b=nmjqzTtbJNXFUwG4a36fiog2Yb4lWtyZHp2aNEMrQuciN+3sEn3xLagvo9sLE1/ShNW3o9Ksip/k81m9ZLOYdeaTFjvjd2otzgjtjOQUC0OU6kjZ+DaDaOQQMLRei0hVXS+sk6qxpRRfztCoe/ek44Unff7OKmPIn8gp924IoBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yon6ijJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yon6ijJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF2CCC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781009134;
	bh=ZoGebePhrys4q7Eq9X9OM06tzVWy2pmSmBczVIYppc4=;
	h=To:Subject:From:Date:From;
	b=Yon6ijJgHLYjV6X4nUaus+Rr4lQ+5fnfUg4hIrB4vP4Fu07BsW2x0S3QZRG1wtlgK
	 lLOQEZjyZrWxpN9pcvYpkr4tXE/ihs753NqNQiMU6M86r3TzkXdU4A5yCxKzPrEDu4
	 dHGUKScQ2pcm8aDZd0Jih2OMq9mGcWceb6DA19aZb5UJtrbmwsnV2QjNd5CWhCCKC1
	 CIY3n2tPrA6DIS4c/oMI2eHs+4Tu19tI+VPmrLdPYG4jzdCvbNkWZMQdyZxO/gr7FL
	 ow2gkKY7HclQ6Re3eClSijiE+OMAb42CwrYQYSJd3/MXqmuVVffAbFGVfbwcboSplz
	 kZrJ++Tl7/i3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37F8CD98C4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100913377.9854.7991559228491401881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebeef3fe0c0416c6ac86d6ceec0566509b929dc5957d9056c7dfdba6be44c4ee
Date: Tue, 09 Jun 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781009133
