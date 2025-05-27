Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E5F4ED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748389194; cv=none; b=PcZHyJWcayjY/axvZOeCNN7Y64g7q9j3BMRIc3TUuzxlhseBcWnrdp4CjS4oiZob+lYeFp65hpXLvM/RLZdpiIRdWYc2gRs03oNmxtNWscwhdGLVc1wYJDa7LzXRKz98t/z/+9f5H5+aL3aoeUF0okgOnrDSWacN0HAh1z8MxUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748389194; c=relaxed/simple;
	bh=jkNKMEwIooTW3R8mijDsw/q7i4RRe6QNkrQZhXaa1hc=;
	h=To:Subject:From:Message-Id:Date; b=bWPY7kh+FnISsFTThZFeBRG53jY2M9gy8sJST4uPD5k+Um1HSMb9ZLvtQs/23/g9YTYczvncY24cFYiKBOCzoTPPpgHctYthpFSwhZ82sMZWBiSbcWAVZqEL3oZCyxJC23MUyNjzxQZJBX6K5qFPCWndAoF62TBZWu8sIOFjIxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1epr4R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1epr4R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA612C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748389193;
	bh=jkNKMEwIooTW3R8mijDsw/q7i4RRe6QNkrQZhXaa1hc=;
	h=To:Subject:From:Date:From;
	b=Z1epr4R+j5pQnKBnRW7dEWiCxa9r0NyFSre9wGOma2ON8tG7WqDD5TusTNPPD1sg4
	 OiuKlJhpMncoB3pyaxfPP7HaEEb/2Du1Gh/lYVlJisA+yDgln+owZEXhGVG+g9igto
	 /wtZXDVyhjJgLp7SRB+t7mwGpuK/hvilND97LNClAXWDcHOMsKV9IDCpAsc2aE4ylQ
	 6SHNqvVmxCE93RvmEyZK+CXBNL8pNq7AQxcwLceKqhXeO9Jclfvnhi6CfU3jI8cqgg
	 26A4rzVPFGgms6LMWa6EbevkzgIXC4/ABcbDsYnhEUisF6X/siOXYXDKHBwxWtF83M
	 Pi/2gM0PU/pZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C8C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838919358.27058.10034225852941396512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7944a23d9f7b1f9a14f20358df9e84862d89d84a595dfd6af1a2e213a010b5
Date: Tue, 27 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748389193
