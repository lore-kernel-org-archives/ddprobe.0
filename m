Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4419324C06A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777937254; cv=none; b=tq8QbIvy2t+nkF0093DdYxiDtq1nDS6em2fj4sYBvsYTeWlWjONTZjyW5/SS7PnviiaCnE1X3Wf5znz3TW5w5iVCw4syF2EEHe6WKlyOpMi0ukWjfhjM0opZBD1W0SvBoJ5acOHoHcCkke1AqLRCFPUc8/5waEEV1fiTd0a6mRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777937254; c=relaxed/simple;
	bh=QyDuSEW+eRiu0i1z2gZUN59caCOw7yljK6tVYQ3xIoE=;
	h=To:Subject:From:Message-Id:Date; b=pN9y81KxYCU5fecrNQlrHthVp4p05ytpI273P3t9RKf+xZJ0HGmt/8C8rvYcghJ7VatmiDSQrjUFlB7u+CLWvnPG4y/kyD1jW3nxvHxpFEYu5CNaK58+tQgiiQrq/LS09Vxwp7ZYM0OtiOxi6cBbzr8GeB7aANG9qGXtAcF0IVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY8BD38Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY8BD38Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD96DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777937253;
	bh=QyDuSEW+eRiu0i1z2gZUN59caCOw7yljK6tVYQ3xIoE=;
	h=To:Subject:From:Date:From;
	b=HY8BD38Q35qb7rEQxmgr5/kDhiKzIvFvemAo988dHqdGcvaJgU9AzF0G9yVWDHlGr
	 E4pa5r8WtPxb1vXUmoa1yDwFnVyKFnn+dZ+CSml2IdRVy6XNnGeiKq8AnKXIean+lv
	 cEwRKsM6VEXXffBe/js7fYCMzZ0Mo2P9CJVgGhTRoWCoPlsuCype8cGJKJP2NMPFvD
	 cm5Jiyq8NV3jaQwzBe/FISAr2caU58jKvfjY0yoVnrXmC5RivSmkcEsd+T64iOe22X
	 UO6uoT0ANrewWQYEv8r44D290uaXhgav0/yShXKExs9JJhMrMzFqVIfVbIAYKVMHoG
	 ShJVYEwT0l9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16CCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793725369.22800.10310646989828600436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261d3ee703cce134cba890eedd5c126de4ed55fa6540c6571d903ed7091de38c
Date: Mon, 04 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777937253
