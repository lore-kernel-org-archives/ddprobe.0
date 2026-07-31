Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC703EB7FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785493835; cv=none; b=G4pNKWzImLgOP2/nHYhgdt+fCKvkVVnuR2B8Vjascq4X9Ox0NFlu7f25oLtBLDfJK/EQjU9zM6r2KZcAWRqrUSqWZTDa5Rl1RtTEqDX9/ZpadJda39F6hRqhbDFVL249HHauBX1lCkTWZddsszojoCeCHk5LDcHqpUuRi4WdA8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785493835; c=relaxed/simple;
	bh=C6b8iZEtFzHoAcFOzV4sRAmEgAJRtj+Z+D1Qm4aPK/g=;
	h=To:Subject:From:Message-Id:Date; b=bZT9j6yhe6y8SosJpMKzqiPwaxwVW1Q9s1yPN4I5/IWifEEskrrxAV5AWSeIAhtoSaoMqpRAAZvX51S2gzhAsS3uMlxaNbpsEWH1XLTgJUJIonqjFOkeQrcBQ5B56sN0fnXXgyYcC+f61MS07HGHm8lHhh8fRiUaWLFqSHErKHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWi959Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWi959Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B0FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785493833;
	bh=C6b8iZEtFzHoAcFOzV4sRAmEgAJRtj+Z+D1Qm4aPK/g=;
	h=To:Subject:From:Date:From;
	b=pWi959JejVENtcqDUPnRmnsUYcHWSsvi16HO6CHH+LcphdlHaQ7LrdMFKT4Qdp6WS
	 VA112a4woMiRfxlhvkXH00J3P2FqO+VnIpDH6EWWENZi8PYoyOxGxaQHgveObiGS0y
	 F5ZeBT5hD5cmztf9iCEW783h86jEt3JZy+rwlDJAgiLzl9DSZp7G8fC9jHjqAgqH8w
	 Evj+MtU9AFunxr1h7AH+ncbg352NddLpLUE6D2u0sBiOoXaDCZw94IXV3d5YdkwMhz
	 uw6S7YozZKGsLP/hQfqpsD4bTAXji9rdCsbott2/Eh/cagS07/hhXb+iH07e3UFejI
	 P0BuOHBvqqXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AE8C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549383369.11418.15997072823072019285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aad617d1005e4fdef5b5c73285ef5f62f99a9da44b0a7e894e182a543aa1c9f
Date: Fri, 31 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785493833
