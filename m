Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2809A34F48D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776028054; cv=none; b=elqZ2ukjk1kvBy8rmwL3ttHylpCXyoWm7EjRfzM6I8Ma4U+zlbwW7bEYHbkU9WR2RiqxGpd1LXl2I2KnlKizxh6tLjf3tuun95Ktbcp1VU8S60d9/X/2MhlQHHBjpNNbajAeUiSASp9S8eJGiXPSBK3MuQd7wYbIcSaD+Ge42QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776028054; c=relaxed/simple;
	bh=8gnglnrGco22Yelia4Yrt2FmMR0LwYiFU2aQ9lnsahM=;
	h=To:Subject:From:Message-Id:Date; b=gK/KKSjEtsqGGFnp/b0d6Lh68l/mUiAQaqW0qNxdhvuOslO4l22/EDWJUaBUWzcfgLqAwegwWC5+lkRLcDD767KTUowHPIW3E2FciK43yoU404W3GzKYTdel7DP18MEAZGcWl6N2JlN2AdDc2HngfJVXC+pPhXShBZHxZx1+OWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7XROYL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7XROYL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18D9C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776028053;
	bh=8gnglnrGco22Yelia4Yrt2FmMR0LwYiFU2aQ9lnsahM=;
	h=To:Subject:From:Date:From;
	b=f7XROYL1Q//kHFictNtoJJqYIAJBLQfX8D36eQz3PacujoPPEencUef6ftkbYK0UZ
	 65souCsqxmJS7yp8uUgCvHFv0+q3obLfIi/G5ZGSFmdsbVki6eO0eqjcAbdlpoXKC+
	 TZnde8UfRfvcx3ikwPJbV432VmBZQz0isnCHjiksDkOFNitnmc4XpgsRFsBodJGfTi
	 L85YkzenzIqavmfx3MkU1juFwePH9WPztcktq9GCDWaq5d/ue31gN6uX/pxlRkf630
	 B2eT1Z9hdKEl5IzuRkAL0+gX0R6ooNc2YaW174sFLqkUvlAf8bCsXTX9OO+9uXn7IF
	 VXtJ9Wbzd0NTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF0E93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602805368.21049.3031246512082167553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aea7cf3b6c6eee88964c878378e0a7df36a9e590d3743dfabb1f3359d2dcc47
Date: Sun, 12 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776028053
