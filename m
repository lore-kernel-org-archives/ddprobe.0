Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE3543AD2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727721355; cv=none; b=LRb1sT0y6HFr8Z3Ap/k9Dg6zrok/deELqo6Mf/YMaiyrwa6v5ycm1bt10Vd1EyMotlytAFENRMGZvk483R3OzlxbU1ucn7WpTnVSYcWjJEl8spoRxNIjb8Sz3u31icl0hJjI1KPGqkJGMpCiYdxGjzTeRfm5bmFPiuxMW8mw5r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727721355; c=relaxed/simple;
	bh=w+UMt/jyV0SBp+d5nFK/RvWbbd5gYeqM+3QnHzD/1GI=;
	h=To:Subject:From:Message-Id:Date; b=Xniioo+u5ETYVW5iGaltopXnXjSL/OTmdKgmGiOqOsZwC0j4sd/kgyZ1VYZ+2KTuxkGKvs01zWm9CSglAuGvHceofzi3nsgQicjk9o1PShLfHbU6Qdm+THtUZJ/VQUDrWvAMkVZoEQLIrvC6jyYqjM9o5LRuA5NcUWkvuXjMwt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubG7CpuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubG7CpuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA034C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727721354;
	bh=w+UMt/jyV0SBp+d5nFK/RvWbbd5gYeqM+3QnHzD/1GI=;
	h=To:Subject:From:Date:From;
	b=ubG7CpuXZXXVQKBbdrdNsd2L9ksONftG+85H5CX/RpK/bxUDEa7QUXUNLQHl9ZbmO
	 ds/iOf0Pizz2QYrmKCyz83mPGHsjSTXhnnJX/9gCLQmgYsqKWgjikfJ3eDjyoITEk1
	 Z63xJ91PhxljIpZUBPghUZ6rl4raAE80BeCzPSyvEvQ1oftd55h1lFR8FotKRKsxWU
	 fzunpzif3Go23/yanlOElyrkfXv7+mwOaIUyQFZgl32eFNLFWPtWD9/JLCfdGQi5N+
	 MHudzUdJAyUf9ZERng3ckMwSqAOc/mzO9Z8K1hjMC12x2Rvav3ssnmU6Kh02jYlFzw
	 LmL1w1G9/wgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799FCE837F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772135361.9907.10571886068513051969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66e8067f65c93073ff16a40d6cd9e659f853d9139961caf13a7948e8e82a6a9
Date: Mon, 30 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727721353
