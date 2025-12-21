Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161C02376FD
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766320434; cv=none; b=SmPqjPqjTu8oioQcnzkpwAz/WW1Uvkk8X0u/I/ju1E7rTGN0dxjE5HkGIxcHBd6gHT/V0ig1uHOFhisNox/7z8giVcnPJAp1l17S9dt21EiWnrs4g9okpgbrVipghi8NfSMaDegzrKHX4HrwSrD6B0wt0rV2XfvQaIaVEtPy/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766320434; c=relaxed/simple;
	bh=TwXS1qJ7xWx9Jj9eJNcWIj52i7gFRiUIjx7Nblfe3J4=;
	h=To:Subject:From:Message-Id:Date; b=eEQh8TxlVPze8Dj6Y6mW9rI8w7j6lDC/MssHvtVHBiN0unL1ka/CNsxo55OiCQUUG61ZaT1FHYdUtDmniX1ZRJQSNVNLanF9HNbrfZETvf7r62ErsFMShsueD5ALOnyg7t/IhM84jfTQm46ntCGhr+D+gomkZ49REe6Wt09NGZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VynFknfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VynFknfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D85C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766320433;
	bh=TwXS1qJ7xWx9Jj9eJNcWIj52i7gFRiUIjx7Nblfe3J4=;
	h=To:Subject:From:Date:From;
	b=VynFknfK3kyKrtYtWGxi23q0jNveMti6OTpIoTxCE7MZ0HQyAuk+dO32+Yyc6WDiz
	 FR2NrP+1XMyYVlHwMC4YLo0q0HcYzeP3I9Hxlkgc4Qgja1iQJKojlr9W8ujmF7WWwV
	 vLMhlUEZH/1kOztKIhkMQAJQ/Bwag9ir85vdnwpMywCmc2JKnz8h1aYZvG52y/dVs8
	 va5xZwzevMSgbQx0TbsRn78T4kpWi5hWC1GH56lcpKJfYI+sL72CTtFu6d2cwKxq3g
	 ZSBePap1z3qs1+FAVpBHb2N1F2ouFqabCFk4Wk2dGwVMrJ2rgvI/Eahitntbrb43Um
	 8hrHNelC0P32Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963C6E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632043358.7035.11005294052719834204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ef1c624e6afb35432b9e3d98934c18da169e9c6596e7d8cfa28e8d7c84bb4b
Date: Sun, 21 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766320433
