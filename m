Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3751E12B63
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746938994; cv=none; b=HO1DE/grJoPYLwW58fZoqfBCptmgLFQcS2Z/Qn6af3yi+4D1M+YNxU4cCA8GYN7MAQ3ehKWajQbykWeaZ4EIDz4OaQv59w1WYk6h9j4yDXkvCVlR0bI+HXugP2C6kNyxF+9hiiVrGXXfzaJrg52qj1FvNQzdgwnfmCmbhZVCsHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746938994; c=relaxed/simple;
	bh=pSelWSldHgfF3s/dys1rulaxruGyelZ6CWZKFTCkC6o=;
	h=To:Subject:From:Message-Id:Date; b=uG3mtE/qlk2wt4rz8f0n972xBBl9CyyKT8ZPlc6EZegU6rGnTuWv18x9AUZoOWVzEG3R6tPv91s9/F0roViC6r9wowbvlcl8HR0evjjVvFcg1hS4q4k87Be+OXeTNF5PMBRE5TZ1qJMiWUEQuFtyQtiU3lR/j+TU1yLMhGS0YyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH2cgEUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH2cgEUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E359C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746938993;
	bh=pSelWSldHgfF3s/dys1rulaxruGyelZ6CWZKFTCkC6o=;
	h=To:Subject:From:Date:From;
	b=YH2cgEUTB0WGmR6eD3TRbyQ9U2xJFu3SXoQggE9+8oVqAeKmOxH5M1UYJP0FWOxKI
	 sKJ4ueRUyWID6cVjxtQnc+fxthgwE+A8WM1YnNy+phNKcPONXyxT4XpGUCzxxVOefR
	 LpLkDS02SmnFK4j5vFSfy2Ug8gx96m1ds7WIvXV2AE2z3eRhJQpzwWotKscEJkLgaI
	 kSrRONEzLOT9A9fhtsfX1MzHLICij+UiI5KScsUKFLiB+C43r+aO82j8a7NkHDhqIP
	 C0zB6Y/R/lMpU6jStQ4umiFYPG6yNH3zk4UAb3HhXJonqSjrMCXI87BWWwnA1if9Q/
	 GK1UvIYBe73qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F347C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693899357.19748.14201313548935959373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d815bac0b0e2c217095310d608abed651287cf68bdeddb6da1620b8cf243c5c
Date: Sun, 11 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746938993
