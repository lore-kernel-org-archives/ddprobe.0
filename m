Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EEF26ED58
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766272434; cv=none; b=nAc6fmQ3V96dc1VhA9l57Rs7YPuTyXIplfqAnrX/8+JRYLfoQ2iQK7ivv30RHBXu4dXeIBX4qeLkJbNx4sR2nV972gNG5PxWCSTR8bpz7uWjBmY065X0MOkDiUoMU8hX5rRDnf8Cbvd5h0C+WzsaQCfqTlC+q+p1O6qCGoFRac4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766272434; c=relaxed/simple;
	bh=m1cT54ws5JpU3KV3dMna2tJbM8TWXkbL6vuBwSYq+DI=;
	h=To:Subject:From:Message-Id:Date; b=IEHfIc/wKJ3g9dGr28C42YiYPIYv9KAKD47jR/0DXWV0r1mbXK/zlJ6CAjxzwIpK9Xui8YhybdUvmZuxBBxVweOQqyfjcYE5+CcufGI9oRi1B3kk93wreLGWd3rvi891sQCG0Wj+SQXQ7/SbR/6ys6HPdOJecesnrjCBgU5WfIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJD5HMtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJD5HMtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE98C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766272433;
	bh=m1cT54ws5JpU3KV3dMna2tJbM8TWXkbL6vuBwSYq+DI=;
	h=To:Subject:From:Date:From;
	b=UJD5HMtVrY2jO4M0cg9+x8Shzx3w61KtQJPYUEJM0jik0IGIQ/+eXRJp0aGePkAMw
	 w74TNoB+kwjrHj/IqZDPCXch5MuemxIVl9pNEcodTik6SuaDSSZic0N/nLwj9Vt+qk
	 F7G9F5Wc74K0iDKPtgjEd/j8muyYQot8NdA7mbbGb/nfm0ufMsNrTtB1SKiQ3pHgeM
	 zofzKCu1WQk1T2IkAfZbqziSePqspPrnJYX5ZK1mTUYAB3o8hAXTBBtyegmZqa6o7h
	 ItGxEbB0f+LQQnGeaL24vlOj6nYaHb58XvMyol3eEIzne54LJAV85wxGEEWFa99UKG
	 zTucSxdFsxykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD29E668BB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627243358.10412.1741657537024408352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1c990cc2a8fbf2ea4123304d90c0b10e8734faf336a10f902d3f600df25eb5
Date: Sat, 20 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766272433
