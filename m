Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BC24A02
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745634594; cv=none; b=T6RcQDDBx4yJNlwyBalRKiamNXUBgbPZVbDFlzbtGfianAfuLVakNya4ZXgTHz3s7GG2LtST+nUwdlfO0/4jDwVdzrvNk19t1/+PS6OP9Ex0Zg+cwOPMExB6oUW5QHlEbp7Lz3BX0Il5eYPKLVgyXxbnNyvg3S9/fmehLE+0+ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745634594; c=relaxed/simple;
	bh=q6erTe+ZRVGaSseZ+lBqGi5+ZgTv131jAii0MqmHeAE=;
	h=To:Subject:From:Message-Id:Date; b=tKxd8aFxPuH7xGlkeEEYWqWIa91dZyMsOLcbQSnc5TgJxSBlG2iGMJHQN6fYuTP6xYfKuxZiTFzCkda7qAbTUwQ4DRCWSYbkO7Laab5dY/YutALHx3y/U+k83HXuRoScnis15No5IgWo9I9bxN/lN0eGvUqhUvoAYsV8sm5r+pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHO1K2SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHO1K2SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6847C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745634593;
	bh=q6erTe+ZRVGaSseZ+lBqGi5+ZgTv131jAii0MqmHeAE=;
	h=To:Subject:From:Date:From;
	b=GHO1K2SEM21afbNzbx498cAvYWA48zZCf5ezmMVb3FoNdA5oBpcrQc6sXDcHLw/j3
	 fp6msaV7dqdRDw9L5uwX0VA6oj+XQKb/ZVu1coAxbzY4ktplz75kWseGLQdfTw/WQp
	 XnfUDgSqm6O76X1rjjb7t+7YPvvBg6suC+5tubEaaotrukfaPDdVwcxk+j9yF9a7uu
	 gapnypg/sVUn7CS01smKpmINf6yiOLtl/OTk8/Apbk7UDdcP+xGOsuvTU78Ixv9e0i
	 1snQnP1BrRWvZP9hvO4u3nR7be35qFuML1LGF0W8HYjjby3yc79qKRVuIJhEkDPyPQ
	 /TGxGehqc3CsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDAC369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563459357.10247.7749326548346084226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e466dc6907fd7269927cbe8246d4663378d1daea42c603d2ea5532303202c757
Date: Sat, 26 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745634593
