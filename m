Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150C91487E9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755484794; cv=none; b=B/71PeBbNgJW24mov5NIQWrUIhDPEKAl1ob+iO+FEsznm1y4cD74lmRvWUbE9LyAuUgI5r/uQKzjhzQS/4DYQ9FdteU4IglfsKDTCfZkuXwGMyHEh23rm4t45cG+q7m1SqVoWoeyrewan5e/cafmtY6AgWtVs7Whmq3fFI/Ms88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755484794; c=relaxed/simple;
	bh=EDx5kNSyY4Q46Mjj9ijUAVEDGWX7DEMx04xGEApvb2Y=;
	h=To:Subject:From:Message-Id:Date; b=OwrI/pwN6K3bkcpWljnSPwoARKkgMsLpuaHE5iPhcJXpr8alYHX+FJhQHZa15289e4XAPO8xKNz1mPCWD7VjrtJ3sS704GC8PCS26ndLTP5RuiLY7A9jGK0BTqRqBLV14HxsPsfqQgXAvXuSdesTwrZzVgGqFvECqbZzqbx105Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys0sL3EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys0sL3EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755484793;
	bh=EDx5kNSyY4Q46Mjj9ijUAVEDGWX7DEMx04xGEApvb2Y=;
	h=To:Subject:From:Date:From;
	b=Ys0sL3EHyVmpDDAv6vzJT0uGl0HcYDZ2Mr80UfRLFIrMD0W2XCDm5I6uVlZ0dZu6V
	 MpoH76KlGnkfI4fZMyLlGicGAgVxdwJ/+Lc4HGKqlfdMw+jhQeY1dtIMdZF6mJeiXB
	 ZxlmqLDnzgiCzTl646LQJUp70aEsIf5Mh/95UPDl600M4dbDjfXI+C6Miv6Ec6903E
	 RDPfJVq9wlCk34JrnVm070GeD0vKgcZNLgaFMLStmJiKjXOQJFI4oORcPnyvvsHZG1
	 KcG9Fb1/8XCMHFO51Jz6KP/261jAvHscyjGuzsB9G9h0lbEovtaYnOjQ7aC4zE+vhc
	 YPULVnN2Rasaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548479357.6828.9353850102883451750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86f61dbe2c0e381e2a3d08815c505aaa7c0d37bfd8fb0ad8872fe6855a9f70b
Date: Mon, 18 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755484793
