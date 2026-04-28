Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189243F54D9
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777375654; cv=none; b=DHpqxPIe8z0pKiw8ybyQCyuxbJNxVWt3vb7E8PZH9ZGhJn975wHdQxKAByzrxlaYsH4d9CKE1tIz1Zhlnm2TJ2gYl/lVADuhKeFkwkySO1ugljB6EYChMHcnlSbwWx7eNATBcUT3zOgzr5avtDrBIYg+cN5HJwbS4MJ6PXSJz9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777375654; c=relaxed/simple;
	bh=AGppk99EyKpzPlZ5rX5R2t8lJM5oG82a6NWSXes0giI=;
	h=To:Subject:From:Message-Id:Date; b=r1VQwIOVKf5QeHsVri60cRceR/NI8hsaibhwu6M16/tOJ6v2ukNGlwBqkaOEpMgg6cI/sszGCFq2q1BzcGzAxz//2mOZYJzD9zE2ciBqwre5RK5UJbu60rQO+leLEKpJSrWxcyGo9Frh7cRpav/e0k/eF/TVJisL9HdMaxMJ4BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIFfWr4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIFfWr4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B726AC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777375653;
	bh=AGppk99EyKpzPlZ5rX5R2t8lJM5oG82a6NWSXes0giI=;
	h=To:Subject:From:Date:From;
	b=dIFfWr4Y4PV1AQCQBiEkh6YFHjfB0eN9EZekL8eUIAIKGA4hEtiSkgPXZRw6NW4Bf
	 7m/D58WJdbuoDEH8wbYShjbNi3fAfoDyWXc9hBtgUAqMRcPOBhlngP4hR0Oc8YMkcF
	 AeGnAbjt7v458CBDO48bz8/TaBuw9nJdy0WEqaYcynZVW0/3kv6KsgNA4PU5q2sQZy
	 Tto+YJxLtb2NE3Dpl6eu+/byxOsP9H4Ab+GkBSnlqCAPFyByVLknfceTDJjMwFh/Sb
	 +XbfLwlttJHvTkvJGqVOOEodBx8LLQnB+mFx031NUNDXyxcU/LrFF68mnFIEYLkAX3
	 ptwelKw6doIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB15FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737565369.28497.13935628920423828378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadc7f0b5568578523303c1e7b3dad9d4be10b5f5d13bdebf461bac5c187aa62
Date: Tue, 28 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777375653
