Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397481494CF
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741432134; cv=none; b=KYW09XXkG4Hr+4Q7+jKVlog8T8rJKNVcucAB9dNs4eyhrSTMch7mlXY79ZXwbsNKDYSJ+c5oIWJqgSnVsEyjvdd0JfPTbnhPzqUIx4U0lCmIWBL0ra/Ad62riOeg1yw/1HCV5ZlkJVXYtzV2NBmbeTmDdyGAKHYQ5pjkNQJLvSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741432134; c=relaxed/simple;
	bh=hfhWQI/s3HyeUxcEdmDR7seYTs0bBJszrKCfA6/KDV0=;
	h=To:Subject:From:Message-Id:Date; b=nTtdwRFUeHA26Z0mqWPq4t72m0gEh6hwmCOqjidlmO0yvrWgxQVUiM8ts3j1qHdLM3qN5cReAhkMvtgupkDE9Hg0swnh8i8CjF0RF3pS9XjGtIr/Yvp1MPilrU/dntQbxeQlV4ZnK4HdtyQY6SIj4r4IkHzkz4niJC34SbM29DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syjXmtpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syjXmtpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E53C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741432133;
	bh=hfhWQI/s3HyeUxcEdmDR7seYTs0bBJszrKCfA6/KDV0=;
	h=To:Subject:From:Date:From;
	b=syjXmtpB6WLmJ/JJJKvJ2acBSiC5h8W4fG+Qfm6qaSNBNge9WllIMNNMY/JDwRMj5
	 7vccfaYEKHlaqI1Q06pprcyReJfNHFqj93IGBd05hyJxtSl+4IsF/REDWDn6RRtfsI
	 5qh6ic5At0m0YqZHyArRgF9zo9rMAAuBKGMqE0psgnyH6nskS4jL19jVtGHH7BsRPs
	 4GniEVS/7I0wc78dbFS0MmQsFofsSsngeriWwwhMv5solOhQll9VjtPJuDrzvJ5PTB
	 BPdTrosI1941ZOhQAW4XFlrJogc+017VSv184qZ2Oo13CuFk0wXvh9/ver8ruc9nPX
	 RBtoVFDpFH+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9933FC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143213361.10964.7007137119990179171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14f6b0ea4983120724fe2fa1bbd5483a5bc17a6df784bd511c04341810e5801
Date: Sat, 08 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741432133
