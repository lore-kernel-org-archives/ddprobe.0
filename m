Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316951F03EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770701034; cv=none; b=aS53kvxkzxk5zvra79V0ZNwer35rcppYKZHGcUHjKGoa68ctyj+AYxikDct/dypNQjDPqFlQzRHcrwY3cNzudYC601LVQrHXvSOPj10eBodW5WWyVOEreVBXhprlrobqhGxq5gOcU5J676NXU7YGY6PWOMis5cy9qfk2e5TBt20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770701034; c=relaxed/simple;
	bh=VC9LHmHuNld0WI82soCSN9emEbdA/1pQe2fk66qUiyw=;
	h=To:Subject:From:Message-Id:Date; b=fepk6QCHHts7zrhImWaPVkPiT61smCgP1++85/lvvaw9deBCyf8NiwFNFsHjIbG7+NmaQ777vpsbdgclwLi9/xLRNW9RQf5xgDgQfCv9XBlza3wHvlm/Kna/pV445RUiCNgWm2i65Jgap5gGW+i3T82hnLkCGwDA1p6OuRvEx5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N61b9+Rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N61b9+Rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2165C19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770701033;
	bh=VC9LHmHuNld0WI82soCSN9emEbdA/1pQe2fk66qUiyw=;
	h=To:Subject:From:Date:From;
	b=N61b9+RdpU/bp+3tRBx1rcMceGm5EJY6dyLdfXiJU8GDq/v3wxwjSUrBkchRyDdAL
	 N1WRRLRN0eZGuNhz6KBuMtalvdEainBVraTUXbf++tcQ9qNMXcBf9/VRz3zckEGHBM
	 kE02vMHpZDHIfwHJjOcqLqBv5troTpfmQUFF5BhvOJDdCIMPjDElALQVzl/LVnqoZW
	 6wdsHvcrW7IVlfFrX2CxzTWRICH1mKTdmNmEYO7JYC0B4tBLoIujY+imsWLiTXOYlo
	 N7s6zdoObyZifGkBEEW8d5TaiNRkF8bK31mvrTO3OjDWpkY/IHMBQD7aoQIPLx42fO
	 MJurg/loBH0jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF5EA3F00
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070103359.29011.17039682802979256017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe91465aaeedad606499f3a9305432a57a685abc2da0039bd72ccfdb0837738f
Date: Tue, 10 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770701033
