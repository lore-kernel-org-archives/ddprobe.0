Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8FD204C36
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761050394; cv=none; b=SdRdT3uzsxPySqN3DhqzMwS1Akylm4etkq7SfrEXLEYYocE9L+s7q3p4gFISfwlIzMrAGe4SPmcI0AGX5R1fO3+1cNFEprIyocNb1EtRlNjA8AyDghugyfVpKdonKXoUueXqlhpU+PHOpeaURVqjmecAxgF47km31gelmTGohgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761050394; c=relaxed/simple;
	bh=8LA4Swf5R/hXdX0PbLc5a0oFfpJd0RpjxZgGuH+s4dE=;
	h=To:Subject:From:Message-Id:Date; b=fUdRld+wgfs8rLQQ/+EvoZUNcYQQkZd0Q6tQsWCUQxWQ8qr9kG6KzCMP0bVCBe3O4PEEKnXscgiyiS2mx83zJLOKKhu6YGnTIyJKnjjPbAPk+deutrfuscrVQhXSXynUuL7z6W0J1XefQqhcPOiS1TkwS7qEC02ddm3UST23ZbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcxLQpkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcxLQpkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761050393;
	bh=8LA4Swf5R/hXdX0PbLc5a0oFfpJd0RpjxZgGuH+s4dE=;
	h=To:Subject:From:Date:From;
	b=BcxLQpkZbV25L/FdFEtAeNXRBb9e8AURj2/A31VTbZcRn/5lzF4N5KNT5okE/G7Uv
	 DtyyiluF0aztzyMd0c0BoZIlheiaMFbv5ErI+LwUqcphUjKpITgKp35t4QilzKH9ns
	 WbTK/XgYEZaTiCiGiidHiHk6qQcTk891au/6yEn1m4m/75kJXeqVKRbKvfmq6MqT/y
	 r1fh+EuULAa2kKP3ilK4i3StH9kR6tCYPefRjFzc1P55ZmNydpRRgzyyo8PLxtKLXP
	 eDXQ7gUYwI7R7jYE+pE/CnrRu9d3tirYRU0BOH/zYSU1vTHsgyl3MOO4kGbHt0LYw4
	 nO//ERDJxvCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE82CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105039358.31152.1228757080960527509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a830b442b07e70005b8c00f6966aaeb56426b00f0875474d3753edb147515c56
Date: Tue, 21 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761050393
