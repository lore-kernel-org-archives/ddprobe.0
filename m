Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177FE42188E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774547094; cv=none; b=dkZhfsAxYLrhkCJce6mkZbEKBYrdJyXt+hBOmwEz0Oe/LRq39DJf49qlCPLK112xPu4i2a62Ru7pXl2xYatGE0x2G0k0zTe58gfdGgZHU7qU90KMtGYpjKIvz+r9OIqc9DXaD7qptrpBAjlckOdF7cwq3YAGNxP9GmvID1mdILI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774547094; c=relaxed/simple;
	bh=KljnypbbWaJS96KkZCKOcfyfhITTTvJpCannAgUaMVg=;
	h=To:Subject:From:Message-Id:Date; b=NSuBXngwjr9KDMCYPCatlPMxv+PeTwO4sNcDmv5ZTqhnEvuse5cviBLdOxmlvBgq91//4qAn4xHGehn1n9GaWxvNBYPfPquzj/vl9C6m6tnLyWUSNdVHt5UNEjCG2xzw2pIbXKb8xFqx5u+WOxizB4CbZ4zTdrhb5hv6onADmEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfBU92Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfBU92Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A535FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774547093;
	bh=KljnypbbWaJS96KkZCKOcfyfhITTTvJpCannAgUaMVg=;
	h=To:Subject:From:Date:From;
	b=bfBU92BmvKhpsCrYo/aAnfsICfe522NhzAuCFi9kdUfwLxZfwEYUmFlbJ+MpK3gMd
	 cJc1GaOW2Iku0GnxCDPYYFcDI5zYXwml0mZZBM5t5gnTXh4YNOo2aM2L2W0kv/BDvj
	 /1PxEnKeMDu7vCNGPeXnEUTzjlRXCtec9xVnK1+NSdr0hrK/xjZbhm5S/yaP378Y72
	 fuADpLfDNY+07saczMtjKPXZbbDX5cV9glfmthXXpI6t9E4RLFYfRimFgYcs0g23wb
	 BDL6kokmZ1bfBZ/9g/4dy8vRk7XcZAG09cG8MxAscGudmmmL0/EM3/8Sn/Q6Mr+6N/
	 nUR4RhnlgJwFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F9210A88F5
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454709358.25176.14094089189273471107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc23ffd900c1bfb60d262899ded2a5da549c699f8d44b10fed34fb5c2032ae6
Date: Thu, 26 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774547093
