Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AD0629E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719096143; cv=none; b=g5vKhsjiWt74VfnqzFEvatdpqB06BPHNaL2xnHcVI1EP6IgMFlmqPXUEiaECjlnbI6KKlY4Nq7W1L/qakcc+Iq+6olsLxwUmFF23OldGAH61vwyxbSw9jgfRCngsi+NpSGD4PbdsgePvMCixfrsDsExPwCH5Ioq+KQxcClahuuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719096143; c=relaxed/simple;
	bh=w9rjHiaytfc1QkatZ2eWI5ShyxZgF+YrxekEHqnZ4i4=;
	h=To:Subject:From:Message-Id:Date; b=Q0Y/Ml9WBeeqOnvdMU6lkFRUoY0SlMzvCp2BB/E4iEY3u01oxErIbh83e5tPQjGcAbhXXtmXPXP3DhS9bTjgxjcfGn93rj+g/ijmhM8XVjBxGXyzu2MOQHBTQkmVylvg4tWNZG1z2v8roYYwrSZCsFsMeLPkDZUiXAQOBEnT8mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riorn/cH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riorn/cH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E780CC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719096142;
	bh=w9rjHiaytfc1QkatZ2eWI5ShyxZgF+YrxekEHqnZ4i4=;
	h=To:Subject:From:Date:From;
	b=riorn/cHSQskYjBUc8QQ3PVuChgr1vHo4FJQT6VTTcMR+pENiVHIKTknRJCegzDPI
	 K6JkrszPAOjqfDB70mDmtLvmL5iYM7PlhwUodjobjNWYWH4ClO3VirXzboRB90Uo8O
	 rbgtMVxoQFCC8PlKAASe1ohH0dCfIcWtr9731aptsOooZrhNE4o3wd6m7KSErqQM4J
	 s54fG9L2iyMfozWVEkIk73UOKvXzUYmG0YUQpBbSUcf0P/a+dFyPU65NovF3u4UuWf
	 Zq6VlzN7nR9ijhi+BU8WfM9G8geSIt4FJp8iN0ifUkYYj7VQxLRbzCnYOkUL4RcXI2
	 Kou6CXKO/UV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D230AC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909614282.25083.7686026365840749314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f405dcd74cfbb08247f7dd1d7cc8aa509bdacb8c03483a4c2f6c13e842a6bc
Date: Sat, 22 Jun 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719096142
