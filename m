Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D22E555
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773446694; cv=none; b=AcGsG9h50ZAVGqRMdahTmhzwwyLAf8n0I4SutXc1mYz43hcRKUDmH7OXZzBCbefc7kNn716TRp/18H3DqUihyWzHkNsq4QYPC6qWT8igTelIrgqM64YSeYHAlwtfYEOm9QQQVPHwLz1UN2TKihD0a5AKYRyV6NCLom2Z5U0owPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773446694; c=relaxed/simple;
	bh=KPrzR+ptLWzcLmLuKVmpateUyzh31HKSFQUy7rVlook=;
	h=To:Subject:From:Message-Id:Date; b=oBif6mjYMLP7iQl9Ds5zYst4UyEAB2dV+FsK8oT4S+PdoJUVRQ5iih5Z6KiT0k9ZZFcrRT/yFVmDaoCkfD+myW98PNkzKqsY5R2+RREj7MQoG5KUoMZbjrytL+yO7UzfsFfYbLyCny+uV4aaV1uFnVH/+OnlU4OdMzMsA/80xGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaCG9xrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaCG9xrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E05C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773446693;
	bh=KPrzR+ptLWzcLmLuKVmpateUyzh31HKSFQUy7rVlook=;
	h=To:Subject:From:Date:From;
	b=BaCG9xrSe31e6CmqeUIe76CmaJaqkV2fBlrdBArxYkqKZBE6s/6qIrD1rbHbf4vT+
	 GVxKT5DJw8zD0c0Q4m8dZ8vmMnZPPp0EBesWw7U/Tcqy8eTSYhV9yiBd2bxNLZY+Qp
	 xiuD2t8CZtwS1wPc4qp7wOG9N6HUdzk+2+x31lptlYhKo4doyojYggB+4+U0bKR6BQ
	 rPhTN2r4FI+ZEAqxj6uL5EwMtG+pURpf0dz7Awz1jqgy1XYcx2OB6NLUtAuojwJCsb
	 pWSkY6tX0LmToz0dnWfWAjktZPJMhjv4xcrdjb8e3qdbNTYE9edeDOD7LkAcdemzFo
	 l6GO3N69gLUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EA3107BCEA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344669359.20041.18041620737295897956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6495c4e5ad9d2373429567e4500bae18d79fcae7bde13fcf8024db1381923045
Date: Sat, 14 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773446693
