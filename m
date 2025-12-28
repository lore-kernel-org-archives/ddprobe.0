Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE6B2A1BF
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766905434; cv=none; b=OCsJjp01wYY/YvZqWTTivh6gJZVs9vNoW7xD9sNXnkuCW8bX9FDg0VEgjEYsNEHsywxEOkpa16pEuesnqTrzjbc0n2SSmktuwL2o05gwTQL7KSflueYRcGfxH97gREL1EtS67p4ZtsruwpLVFv0GiibAcCVuksBnLbB+lBxzPiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766905434; c=relaxed/simple;
	bh=7btP1h/MaPKKyCcMkyuO8vjTLb+6nI+em/huSX0zCFM=;
	h=To:Subject:From:Message-Id:Date; b=DVhkDkxhXxVndYe9KyhRLVTF+a3OSW3qOxA59W8X9FaW/EZoJTZxxd5iEVLNsKB3oPZ8Wd55X74J7nnieNRfcE5k5e6FiWxMpbeCdIEaqJcENjbCGpnMk6WT/5d6k+RUX6qgNbtQasQtT4VbpvjWKkhvdb6mGuA8X/5qGsRG8XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V66ItrZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V66ItrZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2037C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766905433;
	bh=7btP1h/MaPKKyCcMkyuO8vjTLb+6nI+em/huSX0zCFM=;
	h=To:Subject:From:Date:From;
	b=V66ItrZ9qQzE6TZbJ6FiQQDYoXFYToKV2pGcbV6G3fZzks2qc3x7WS4/1gxtzr6RZ
	 HDu0FE4rPAAP7GCO7hLehSpaJVkBk0KGGVWOC6bevZPcyA0C38cEmpm+Sa3anutUyR
	 ZD4GGxrLFLAGednoafjm7w25pQFDc10IITZpRHNYIGVSXv8GSbQinuJvI9ZCVipbbS
	 0JxFRRSkG95CKyafqL9BcNCNYIyBorkqYvYy8AsiGpA89dAl0/7K5Qm0letD+v1acb
	 +BTdnL7gtwBGdX2KQcoOH1Vm8W/dQKPmBFkaMkkFuGQmQ7hk6O9Ce4btZB0iVWecfQ
	 UjRJ+vTJLLUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBDBD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690543358.18413.722199578841595206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f296bdee5e5f376e15f7764c2d23c9e39a76f212412252a72710ab105530bbed
Date: Sun, 28 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766905433
