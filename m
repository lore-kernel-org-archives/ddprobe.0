Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B89B2C11FE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779546754; cv=none; b=tw7heEB3604y1Q8Af194sv9ABBWr2hkRKQuE/XpL9g2/weQAdyDSwai/U/NDMJCMdz2Yk1JQVdwri6cAwMymxvehSl4R++3ePwDJRMfCw6YU75o25blcPQMHYGLbdJtXN2wdcdkTheCox/d/igAHe3bZOOIWVf6lC4ogi0pzuhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779546754; c=relaxed/simple;
	bh=7vlBxjZm/zo1mrCOBwkbXp1KTcjKLTdyBbxHeLf9lco=;
	h=To:Subject:From:Message-Id:Date; b=I7PKrc7yaZVapZUIjiK2huErlX4rnf96vityoENX6w5I0m109JfSoHTUnOmq2u008q7bHtsKC6xNsOO5Wnk+0GxT+wSh/vAlih+1oRHm3r5fTjsWPeI2K+mF5m6UlxT2Lj6rb00Mea69DO70kbqK+aOX+3w2SV1Y0NwI9K4nZHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swdDaLLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swdDaLLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E73C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779546753;
	bh=7vlBxjZm/zo1mrCOBwkbXp1KTcjKLTdyBbxHeLf9lco=;
	h=To:Subject:From:Date:From;
	b=swdDaLLEeblDJquSGiz+9PwIUWg0riw3vOf42sTcILbcYOmAAvSzXrnbbXBQfUu38
	 r35oFQbmKwhXqbMeLkT1MVXAppoA22LaJzPTcnUfQoYhDbWYz89Nt6WU3kjFucjzia
	 Mp+QmZ2uaGrRcoJyQbKt81vNAKB2arl+iCVjHjfkbK0BaxJM4W+6LMAFXN09vz2NA7
	 +dzuLLh7nJf71phT/YKY4locn0HbqPhpZHs3QILAbf7wsGcwt24D3kkJ7+BQj7Rh4E
	 4Ph5aDKHb02fX86hhEMhE9A1m29KxkrQRC1tDPweCoh3aaLDKqf2tFgqKxvZPTGfAG
	 zCq5FOfXhcNLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDB8CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954675368.16339.5451860283304779968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af14f4836da2ccf3e940afcf085963b187bcc56da47baec42e4799dfdc997081
Date: Sat, 23 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779546753
