Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B41DD525
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762039794; cv=none; b=d+2XGeYgITMiiWKVDPJ8+aMx9BBB5B4fiuCSeB94eF6JZI5fd4pxNeMvOLKoOAs1SwPyCXz4JfZv2QSoGcuX/kedLZGxTUC/59rNt4fjAkRx9Q2OwstL3qzysw8xiq9jX334stMLFQqhXZi6s532pqdg809rSWfGTlV+6WbhevA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762039794; c=relaxed/simple;
	bh=SkDpA2ay2FnaYhIYw/PBP0m3eBrRY/zIjvY4pZlNCbw=;
	h=To:Subject:From:Message-Id:Date; b=Xfzj/N3vrFK8ACGUCfwY8L1X3VraYar8QQjbqmV2SYMiuYmRQGBjOoOXPslSf9mas3IB1AFSIfuIsLqFkLklXkMLkZxdHT1yBf7/g9L7obMh2v+KtUCLptKqpCD0FATdgv62yrpBOYeIGreoY+XFsiTfeA4pTcYfmZPhhDAIanw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovRggwCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovRggwCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD595C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762039793;
	bh=SkDpA2ay2FnaYhIYw/PBP0m3eBrRY/zIjvY4pZlNCbw=;
	h=To:Subject:From:Date:From;
	b=ovRggwCJfvq75FDzMGNTtCNkrc5x0HtKDtCo0kMpO03Q5kl2n7Hz0ZmO7KpbYjNtl
	 35fHafIgFqdx/5V31IBAnYgLUPZBJmfUW3NHZWUtfdrF0FJNKW1Rh90lw/Oqolz1uA
	 e5r37mZn2ivMjE4jZdb3356QMh1qVyzq6qzB2m+8IRrKtRE1w0P6U0NNay1ywvYjFS
	 EaRDC23rZmug/d3vPF2uCRqIa4hu+qdy6GtirMMXBjeBPhzj94t36aiMoOwEQpPiMZ
	 5o2vX3g5apfex3LFAtdJ32bQ9+pE+yOl0TFHqUQH4dKzm6eSNYf5+minWAaxdfq1+y
	 YdUzdmdLbd6ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D3CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203979358.28692.8633991925818821017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c56133c01e44b36057bcf18b230a5ca3b5bc6cc73f3323d20656599491d3d98
Date: Sat, 01 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762039793
