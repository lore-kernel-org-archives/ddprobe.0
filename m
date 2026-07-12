Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DAF381E86
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783897114; cv=none; b=ap/vOkUZzeGzshpXm04nYL2j6CK3soR1kCe7BLdQqnZnH+GD00sDZ+vCTU7GNRV88Eh2uBZh938gsAijXZVNa99D81vaUqRejGah6WGXL6l/XCv1H69QshwYWNPxWcksiMf1kbXsYnD6s1Tb2g6RJ5OuQKk7BYDYSdkrrmYr0pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783897114; c=relaxed/simple;
	bh=yhw7GId+cFyWSCQD4b8sSyxHZf/a2+sW8dPg0VNpZdg=;
	h=To:Subject:From:Message-Id:Date; b=N8kGjeyU98qvPRiNwYqVYci5D+Bp+lpqGrIeJsEOJDuHxoIWDlNRMXvEWjkaxuvIhijXdjHAXz6br7GISsrYsPIP9rOUoIJiF61vNyPT5gXORQhjKTWt5gWUjAwIxVgQhsDTLgKg5HIUWxbVYF+oRxbNTlrzFKlsKv3GDwkL3mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWNmWUy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWNmWUy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48EEC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783897113;
	bh=yhw7GId+cFyWSCQD4b8sSyxHZf/a2+sW8dPg0VNpZdg=;
	h=To:Subject:From:Date:From;
	b=EWNmWUy7aeT5rGQIYGk62aylRWfkkoAArVg0YJR/MoRwQXdGkhpRr1681UHOE9KF/
	 yfCKpVfL/zombEUwHg5I8x+dJgdChVJt7PgkRHMZIa+gMFds3mPqhy924aeiJ+wshf
	 6F1X7B7E+3L5ZTqmGSZDfa6BexquDmqqb7fP+qkQlczj28XzEsHbKBwvlGz8b4VQI7
	 n5y7wyWK4Lfo60RUFl89maNFs0NSXID/iEHqc5JwMFltCZvzzU19dpmSNWlMPso+oh
	 t46JlLxr25RSKahwmm2Njm+OZrmEWZxOH2rxwgXiIpeVZfehgK1LuB+jtQjS+hnGpy
	 fe9uSVKGxcWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD99DC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389711368.6002.15420190679011228060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fca182a0f43564e227eb009af3638179c19f13d2c0d68a496a5a82e0d50fd9
Date: Sun, 12 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783897113
