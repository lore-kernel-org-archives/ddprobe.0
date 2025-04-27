Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E57E2701C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745783394; cv=none; b=AEhiiTVuGLpWr6bz0pxfbq7bgwRKZTvE57wfzUrXCjzsbFknjdxSFsMhoCEbDBEo/YGCObQNpBvkr8JxUUypN1M6h95U9R61V5fIkUb8rTO2l1KOg4VubjJudA+A7BFmfrCwTtFLxY1kRZm3W1A5woovQ1avDGpu3MfzSZYVPYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745783394; c=relaxed/simple;
	bh=4I/1LhI3ODlFtJrvThn7FG7KCMtHGgGgjKZ9UK+Rlvk=;
	h=To:Subject:From:Message-Id:Date; b=E5QzXwIfiiRNyaxTglesvIuJDjZVVbihnWTAQmssDA2AWyPfypYQlJF/2HJMphZJv0GStnw5hn+ODNeNuQEvD84NLwVcwXZTk4dmwXYeBDz2WZc8SH2makzzJJbX7Xaz9+qVp+DjDKX1jJxR97z6y2umDDdCkCxQlTYu/bXEWcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVA+FHmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVA+FHmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA161C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745783393;
	bh=4I/1LhI3ODlFtJrvThn7FG7KCMtHGgGgjKZ9UK+Rlvk=;
	h=To:Subject:From:Date:From;
	b=cVA+FHmFmQfnIpxYZf9dLDXNj23qK1um9J8CnnghoQk70ZUvZ1MiUPW1QnWE39tjw
	 bDe34N5tJl8BWuKXb3WMG/MRFUlB+qAuDV7Anuq6iF30R8LuP0bnAWzHXz7dcH0FnV
	 cST7J6O2pNMzH3HHd7PEIe+I8HtAKl7tCdgoXCTkj7M60kIxK2SnV4VaVdDuPUf8fo
	 p+lbTMULhL6G8FBMnOF1md4EzCv8pZOIAS3DUP3pnMTWadcYsKb9qIAHfZvAqe6zSe
	 vNBwi/i7yB/RcY+4KZSKEhg+F7XIMqGqVHMzcMf4SYIYPlm5ftSMIQlXqFf2yEK3UE
	 EPk9T2OVuilTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95980C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578339358.25341.1701018397157324420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9329bc8c6284535e9399082a44c4e60e47b094c0d28680ec4eb3abee0f28a6
Date: Sun, 27 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745783393
