Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32E1AA1DA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750585194; cv=none; b=UEiiwlNclYZyAyNttoNfhzrD3cFNAnczYgic0j5/BOhozARL2PLHzI9x44pbvFFXCSHjdhUobhagXx5S9lo3kDr/Tfiy7/ojLJErLvQUsstnDS2cxyW/1cyvaGB8YRe2WfInlvXA/CtTGxNMcHthbQE8HjWp3R931XYrt7ftXmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750585194; c=relaxed/simple;
	bh=6bJ8cVabbpJdXPD+2nGUBbPAm75YRJiFM27M+KGVSAk=;
	h=To:Subject:From:Message-Id:Date; b=F/2smCrp0xl/CdGlmiXogw8/pxhCBVk6v2JnuLtSeDxk5KSGAqlnhL7r6xkDmm1f4lNgx9DtfRM3Ahe0dLjSLn8gNq2lXTpG0C611YYrCGJrAKdQ8APT3np3G7U8Ql6BEH3nCa4ZNfaZ6hkgA4kFAXkqcMFOReyysVZmnaiNhoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvIlVDRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvIlVDRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A186AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750585193;
	bh=6bJ8cVabbpJdXPD+2nGUBbPAm75YRJiFM27M+KGVSAk=;
	h=To:Subject:From:Date:From;
	b=NvIlVDRAgpeagqpIGbr7cwT9+YHDWmv7wP94YfgC7DbgEh07ESHYOkU5W9KVqAyCu
	 QmTXAMasC3GspkqlhZ4WX9lMYcCMtyfBSN9Jf0s/L3TtuA7EMHk/LZ8/07BEm6R/nQ
	 92lguMA9Lv1rGUgYuA2F8oLAymSMzTMgouO8TybKwV/KMKnqGiNDrXYowOtT+oEwSs
	 9tx1uEyGKKtE3KCZDUwRALYf2vFgg/hbGCYbGA6T1tajJCW/IN9bjhM96fLcXmqf2H
	 rpQ1syu1Hy/T4Xc4oJJtAUJH5W5aJ3gxCG20/3V7RpNbROKPk/RxVzWjP6KzxACrq4
	 NFZK5QebUcfYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB8C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058519357.5209.2440407840763871877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e04c8dd46a7b645ef717f877ecbe70f5ba294fa211b8b03eaa4958a19fc2068
Date: Sun, 22 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750585193
