Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB832EFDAD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766046233; cv=none; b=B65r1DmgulmmUWgEXDCi8SUnRn5rbRyMcJPYCevlUVQXbFKByXr/9KfubpMUVy9YyYe8d5TnyR/h4cNS8xVeQw3ZJKZCVMEZRpf/3ldl1EUKDZ+SVoOCyYW0Gd/DPe3R24mZ1X0nl8jzBqBmbI7gIF740p658vSoWwhhmHIjop0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766046233; c=relaxed/simple;
	bh=o8b1A27E/Qgr8yeG6xsXW/iW8pPDvjCN6P+4CrAeRs0=;
	h=To:Subject:From:Message-Id:Date; b=cuwyYda44OP26rtL3IBuCglWbV9S0zSuKKvpntCx88YZBz+LZ2f92mS2St2UfZcSm7+RfOfcIMA+PJ1BKeVmQ4D0nF5iuEgzhLH877LINbiPRI074oS3QD4w649ZjWSkixhsibwXTVkfcWD2TpUnvSIzZ+HTBJcJPXXb/+iP5iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK7+HgtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK7+HgtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F942C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766046233;
	bh=o8b1A27E/Qgr8yeG6xsXW/iW8pPDvjCN6P+4CrAeRs0=;
	h=To:Subject:From:Date:From;
	b=fK7+HgtVuJt7kiBmZTz1seszqd8Gufq6pDsCJnah0Sf0vbMzoDzeNCK2UnOZcx5O5
	 oP1AbYRSJbLOT+q2tfyqlfwRZMLc+ck1LR1bjAElFTcfVxi0PPhUbLd1jTU9NFbhld
	 jda0aQJeVYd4mLmu535Cnzk+iQ6shD0LkNGBJj+hCxjPK6f1JTBhnRLmvPBVE06hEc
	 dYGF3IQcYmrShPKu2vN5NkaIdj+BcVNMQL4jJja1C1W11GyfXw1M/vXoE02ldvdrnr
	 U03vl4HBep8+mifuy7OYxYqc/6N9pPxxzgvPrn7Ry40kXyQx/BUtyAeoGgSpdSheSE
	 97nq3r2v3tTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA0D68BE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604623358.16952.15850567333830904667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52011608986804abbaeba4c306f46ee0385b4a3e15946630f2c2220dfc3db33f
Date: Thu, 18 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766046233
