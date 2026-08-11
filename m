Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000131282F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786425634; cv=none; b=mnRbaaANP06nmp3QTH4o2G8ehraTJIYZLijPCGNdGa9unKgz0oyTkDf+pU1ZOhKOTY+vBVB9FABkkPR+s+LOhxdDdvWmRyRKR0OBd8kEYKfyp7s446NX93fWpZTyv9ftfMrNZMTIKXqKDxhXw1mnA2/KDzuLDSjU5jEax8D8w7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786425634; c=relaxed/simple;
	bh=yzKexiYdj7LFzY38it1lRHGjwYNHu6DPWiREyxaEo5k=;
	h=To:Subject:From:Message-Id:Date; b=njHoN8YDxxjZBtdi0LrtyAOqL3zTVSt9kG7LSlGUD8d/+uJG2UjcJ/she4lJBp5gZuArjJe+pHsgI92Qg7smXex1V7ORP+MiO3QkgVlkDYG3SUDT6GwevwJpN2h/9W1Te5WdykZW7Dfx+bXCWoL3EV8n/5g213S8ArEjxOkGc6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCfSYMXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCfSYMXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98F1C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786425633;
	bh=yzKexiYdj7LFzY38it1lRHGjwYNHu6DPWiREyxaEo5k=;
	h=To:Subject:From:Date:From;
	b=mCfSYMXrVKa7y796FARbozoIybmK/xbm8Uny3end26RRcyBrrl6vB31VN3urjIX+U
	 RDTo78MBf8j/Y5tUqUJol2GTIgxz+fpsSmmPbk/250If3P6Fpb/YWx9nLbV4DY2AoE
	 tXJHVumVv13M7an6GSWlOEKTNR0golBX8yb/4sMqyRpRJ+qb5p2k/TZADO+h8ZDYzd
	 d1t4YAT+bheQGk6mgu9MNqVigNcyPQsiAliUzRNARoWXHH4tGf7NJ/DmpXOMdSndVB
	 RdNqQrAK7CLhdo2i6QrnTYOC/NwnJ82+gVazNwPrfittmJxIE7p3fottQ7aGWgsIHN
	 UgUf5pEhN2Xzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F73C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642563368.21909.1577424812313403880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20b9e1988c3138c3a38ee95160d4edde391d9f29a709c4133f23123fd157510
Date: Tue, 11 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786425633
