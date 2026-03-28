Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD9B1A2545
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774662294; cv=none; b=d+05uVUx/4Bsr8CQ2WwItxa/CCixarG33Gh76ysdBzHdqL8/t3MrC7q21YfJZsnzTlPqz2f1cgq6c5U8dkd4veWX480diwDDtqdeDNoLLocPi4THfYz7q61v6Vl6jWPTcbT8Wd4a72qBSAw21aVc7yCDcv757wqXxZSxlXOfFZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774662294; c=relaxed/simple;
	bh=4ggzZyM02RDDZvRWD46rLbEio8QzYQgkkOKkkzCJBxs=;
	h=To:Subject:From:Message-Id:Date; b=pfn51+lCmJdLyHmUacWcNfIatOmwccitd8m5dcmFXcDN5GF3Q2Acr92cggzN+RBwZ/Zwy/rhwHC4PCgDnWQA4Vd2cWBwt+O1H0eDvH0pPS0EunXCzAs8EehSot6fP/JIFAhQN/G/QyW8f5Xwoc8qVEpNFqpCMu+7aGMlxoPp3fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq+qCIJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq+qCIJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED24C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774662293;
	bh=4ggzZyM02RDDZvRWD46rLbEio8QzYQgkkOKkkzCJBxs=;
	h=To:Subject:From:Date:From;
	b=Dq+qCIJ0hBKC+CUe+tLoJIfjiUtPiy3GSyQ2/vdZeFaqr6BsCR5rSeP/025M61ZM6
	 1VwiU/snXhk3VCpqU0lFr7Ob3fJnwSRjsv5f5F8J93WtAY/UI1MpnzUuaHG72/kfJW
	 jMB5+jmVssohc4RMW0r4+Q4SDPSM5B0HtMT4YB10Hp6aSPrFgc3MeaEdgoOda/lTQv
	 cR0pdDv4q0TpnBJzV9vK1PMKtVu7g2pS0/BoYcPaah/rlxV21X5MycP5OUttB+7AnB
	 utBVLxkyrLRBgdtEyxF/KKfybSOO1TxUG42H/l7hiDMnuNlnqAQN4sMRHy7y86o8LH
	 iGHg5RlQsygMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9907C10F3DC1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466229360.3178.1604072486818462465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d426c32be070caefe04e9602d9be25b7b8c32aa8b06b4d8afc596f9cd8160b06
Date: Sat, 28 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774662293
