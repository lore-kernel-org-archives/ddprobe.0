Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3576F2F8BF9
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755862794; cv=none; b=UrobwN7haE8ko5NTkrCunKU4JBH9JZzkf7qThXEzLyac+s7Qf9LiNu4sn9JmiFUqw8HB3Cp28Ga9GERl6uNiP6SPzGioM+ihRKm6FNEbAPwbtOG6GxURomPkwFIrdekgP5h57MqloecGJPgW0WeeowU+WuD77gUVXQoCjKbHsn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755862794; c=relaxed/simple;
	bh=1EOgIHcbY2/vgAQAg6K1VoNUTKaU8EQwE2+I1fkDvV8=;
	h=To:Subject:From:Message-Id:Date; b=Nu2EB/NQQPkjq+B+eUF7Qjd2+YQh7nA9srIzmkIoLNdVVBB0fyiW+X8nFCJzPlePh4Y/iog4Z1Cm6xzGYNlOV8zQW7QQzOAYQPZ4qX86a1InwELJI8szF/x0Yj2faUZAmvtxqbBWWqCwue56wa7X4wCrZ1qIk/QLqX3xgPp4USE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFr2liVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFr2liVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAA1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755862793;
	bh=1EOgIHcbY2/vgAQAg6K1VoNUTKaU8EQwE2+I1fkDvV8=;
	h=To:Subject:From:Date:From;
	b=aFr2liVhybJlNuPeMhDfJLxeC0k9rZq5YKVsKXb3zMx5lZ7wbq912+RdDUN4Thk/V
	 eu8/lCBNbTi3ZFSdx/f4rWnLvDohdizEuYxAKKazr6WtrfE7gXf6a+iXevluow6GXi
	 SkMCFknu57tF2nEDdVeky5zlB+nWZrPcIMmHbq5WVZyPIOIAjSKx0NodNt5/QlxXVR
	 zt6gSEcuzf7yf63ifZ3xY3KZSEIMqSDiaMssyvGDNybEAEa3aNdQMhsXiKySdFiwz3
	 smMTfrj1qVA9qH3kB1VPfUZaqGvSDEPMRhSYNE5+x87hhDknHzORZCaGSoSwZwGk8X
	 6YbbYFFXYVX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E465CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586279357.6309.5319681971706890934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505be0e5b14337738cbf5700dc19c6b150a36e591a3cf4c436b9468861a43659
Date: Fri, 22 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755862793
