Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3535957
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747630794; cv=none; b=p/cgw7psqpUabqL+XzJGj14q7Uu5XDVr5g7awiBK/ee9yp8m+/Ywi5cpkQCwtlO2/BRI3nFQ9rMaHS9H8EaRnwokNe0uvUmRDP0a9ZHqYoks/meNK6t0rpqey+KmVwUFVDCsWuox+FKZs9dtSe7g5uOBONVrk950txNCPgh6kV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747630794; c=relaxed/simple;
	bh=ctuRPgNqw3lErzUgmCfv7gYLY79SpM4ltKJGA5qMEBk=;
	h=To:Subject:From:Message-Id:Date; b=drp/CoPBlzFdszCveUwU8sCbfnDpZJqX+wogsbWVCGybhcwawMR/YOuzc5U5eLfz4M9LlkvuvvNP9BIMRphqDXL/XImmJ62M2eN09yjiI6iDcYCAPwZRoHIwUcsWMu4tTvSZWs0gzpPB9hRf55vvAu2DR7Wex9HLWC27xLlw0u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufr+9vpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufr+9vpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747630793;
	bh=ctuRPgNqw3lErzUgmCfv7gYLY79SpM4ltKJGA5qMEBk=;
	h=To:Subject:From:Date:From;
	b=ufr+9vpf4B22u2OV/zsPG6aCvGZISto1d9m3dCQy5tWqpNeGi6gl2OD855gJqGhyR
	 BukyOAvK/6G0B6cc8G9itID7DAVXsOiwWa1R31NOiI7yqtFTiD7AH7qx2ZJYcKqjkY
	 m3zPhxcbo0NkNd/kHE79ER5AhJJXj2dMnasDxuaeYENdNHaXWFAMJSs4+x7XD6pWws
	 Yl+XHKNc0PWtqWj0RSz5Ou/hFxz22s/RI1Tu1AI8TRSmKEvk77QwWb5XXA//rRmMMA
	 hMtOKRuuxAD8P0Ts0v/xAAMPZmunxD9in6tthbUQoETdsd7ztZwxAoi2WzP2r6CfRC
	 CbLVn0jOuyupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C6C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763079357.17764.18259575734901010298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539b107709552fa1c08f3e2b2aa30049a88dd97860fae6ab51e0c2e67cf145ce
Date: Mon, 19 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747630793
