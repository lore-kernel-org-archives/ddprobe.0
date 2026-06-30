Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928D34E763
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782809914; cv=none; b=S5y75D/IhBluWZ6k50KLb0BNGsTjbshDkWwL2+PQ8x0pdsOUrN8iQCnj17AF1GCaPKxsciQ1pb78FRWflZdY7Fi4MT0eHOkx23N5gGFvn/YGSjODrrn2eugA+0TTiQi8Otg6JKFXbN6updT79TAtJfJ8e4K54Py9dvkOXFA4AZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782809914; c=relaxed/simple;
	bh=Z/EHfGPJGWMNoUuMxllOXHPPsAnEOYda56lctI1lUrw=;
	h=To:Subject:From:Message-Id:Date; b=P1rJaU77LpKKsv5DHVT/8GgrGFTQWGakdFcWVoNYmaAgM0pHm3laFGwstAg3luA2X8T/6R/LVoq9eumTabq27H89p2kAaHoeAar9HATmxXesrSv8GhYtl0/4RrZeEBecYqdC/5mBUsqsAHwafNiwGY/AvqxgYHYjfxjqJzabs/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNNRv3td; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNNRv3td"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26A4C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782809913;
	bh=Z/EHfGPJGWMNoUuMxllOXHPPsAnEOYda56lctI1lUrw=;
	h=To:Subject:From:Date:From;
	b=UNNRv3tdgvolQwnhDpjy4xUOnOS8vhzVmV7ZegzrBPybmbrOhlEu6M6eVGkHk71jq
	 rPk8isSAaIXBKJlpkXbLfZRDI/RLDSQLqp4ybjhE7JiJNNESpUjSY+Fz4Gx5bsKUhm
	 UkHbVE34pVWEI7dpMw+T4fpYy5A71T42eaJMLzY0EGAA3kotprl4Q7hAskEhqW2rPG
	 u9KEAIAO70i8OdbiKHhHU4i7K+dPhgddMUk4HJMjmzJwJxuu/1UQtdPoBXFu+lILFp
	 BRzHHLxPgUGeNjyhrr+WMScngJc/AamKrfJ59SZoY3nSSm3dwHOZYs+c1EegGDdIOC
	 ZlNvXPXnxLmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE05C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280991369.19922.5777210991460117529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b82cd78ba519f63fa23c1a55341db2b59cca04f560898472d88de804a48a9d9
Date: Tue, 30 Jun 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782809913
