Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFE1A935
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756048794; cv=none; b=BniJekiSdQbkhPRah/ETiUzb//2F0+Ruu5MvyyTZu3LhfPyCgAuTyGVIkeZiqqXRzcu4s5xRvQoKRRm7GM9Dly7GidrEBKGt9nDKzTJxwGs9pQWoutF2bQYwCwv6R22uRBsE4uKp5v9fjSSW2W7CmYIpIAIH9+IOpD8iwYLfJNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756048794; c=relaxed/simple;
	bh=W4630mg1fmcvj4n+hMvN1ZWPJG6hiDSvCAMpLxPc8PE=;
	h=To:Subject:From:Message-Id:Date; b=ZyfxV/Kgdoo5qmuPMw142+GSv0ljLdM9T1aQqZ+JXehOA0SkqDBj8YHHXqr+GZltWrXRFgAIydhMvAVQGrTNCtqfWIdL3W0EOF0XUzqaNN2RuQl3L84U9j3AHNFYywZbadFN72ofip7lj6W15sjYqdPc8xXgkJDvXZuZssUCuoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+Zsldbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+Zsldbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1647C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756048793;
	bh=W4630mg1fmcvj4n+hMvN1ZWPJG6hiDSvCAMpLxPc8PE=;
	h=To:Subject:From:Date:From;
	b=Z+Zsldbu3coB9AQzV1rQd8kAwG7HbalYmb5oab+MXONWFMr2yA7EMc0Vazue6Pw4X
	 EuRxONKanV1P2GRvsOxo9wLkjXEl7eHRPo8rvq/yk+5tBAlMtkDDBFPsRjGg/M9Oto
	 ptcq5RTQCESBws5JKxqIrQUaUcZ8IdFUGzOqDHQNPQ0z6LLZUTrQE5jTBzD8kOTGcT
	 DAXKZiS0f1HPah1OyzQFuL9DVgIoBINFw8LzZSi8jwAXzC1GYzJCbMqK59wH47GjPo
	 IOJU1vZPTfN0FGqV1vCA78PY3Ep+c0AbSZkcOQUD4IpstKBLpWDk/TcLEV8QbQRhBf
	 ilTDEJCJ3BnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91DCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604879357.11591.6064318887908584511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b190899968aff3477b6d831fb3026eecf028edf8d58c55c38e856ff83107f2f8
Date: Sun, 24 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756048793
