Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C95C31282F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788330034; cv=none; b=e/IzQ1R0NQdJLtQSZPZ6XRixG+nJtkWZflLK+2nHMrpF83mk8KPfAA9RF0Yb4NIwcHVpfoFboUjzW6IQVGKdamBux8KSB4WBy7x5RtAPZUqRkgKXPod18WF42U0U3WE5d8qHHpsN2BBqw6VNxNW+6h35LuW4xTM8pYczhqBefrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788330034; c=relaxed/simple;
	bh=KAPAQHgmVBmgozkTYf5lnRdLtzMuOWktl3X/BmbCf4w=;
	h=To:Subject:From:Message-Id:Date; b=UDhNaMDqKZweKwzwacvdQCU/yIYfViDZuZvCYZQfXpcb6i4P8JeQCBTXEp5nF+/v3Cd0Bzx0x0zp6tgM5CFrtIAcrXft/QLnxKzquj3rEfBCIfpTtBQnuJseRfrfYNJDIpw+WSHjZ+QFBJTp+hZ0UsJC/Bn6JhmIt/mh92HL6Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2wC9mLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2wC9mLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DC0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788330033;
	bh=KAPAQHgmVBmgozkTYf5lnRdLtzMuOWktl3X/BmbCf4w=;
	h=To:Subject:From:Date:From;
	b=E2wC9mLx0HU+S//4wPQBtYD9Auk9ZvzcXnOOFM9UiLnrhU+z/JmHuG7qS8e9ANlml
	 fwh8CKpp6Tq62CkEF2OfA4h+co4eEURRPem3n+bspl82foSYxLaQc81S96QGV8p1Qb
	 3zqK9QXxwKpdNnVC/vorC4o5i/bRMwgoWy0CvmC057WwOBbZ5YsVZvQcdb1+Ol+i65
	 IAWy0/r+EcQu2WS9f/cV0JMKrjpa2tiaYKg/qpk9r6z9xPr6YFxJDYwN0QUFSQNkXf
	 i2yn2kxTCzKpOzUut5yOh1ji+eqQYhn+YsegBiEIk86G6/T+0kux+15fsveLNjIcJq
	 lLZtXHAk4aWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA594C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833003368.3916.6963995144585785502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a395d57546343a4f1f7bae3caf5f93dcc8c65536d938a848a09f7659720832c
Date: Wed, 02 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788330033
