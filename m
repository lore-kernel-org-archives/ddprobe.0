Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B52448BAA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786014034; cv=none; b=oiwvCXb7D/36XJ5z8S5HiPe5csEvN7L6zmKm/AK8DHblzXUbFlAk8N3leQ9tmbrcmfDb0UkIl05vPtqBaysRqihQCkuASJ7sv8HNefMDaycRsvC+FpXes8sDLj5FF/WsrHVtKtAcQ4bLyrUzGOc+WL+Ab6jBBTdV95u3BqJ/gWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786014034; c=relaxed/simple;
	bh=rk5LazkhxtomLQHS3SXAvWYSTBYKczzo7ku2ZSjeUEg=;
	h=To:Subject:From:Message-Id:Date; b=d9C8beRBgc69XSeORh+VtfDCXynZ8yxUHjz5oR5fV3KK43vD9nIJ/wD37pMwYAF5PufBeYtFqA3r5GLrLH+DmASDBWLQOpQWU7iGqZthx07bkl1Q5ONcMBW4tfY5MQOH2FUYDqL6kCnTNBg2Pzo+xvE4QKMt8tVlVke557FwOv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvZJtQ3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvZJtQ3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786014033;
	bh=rk5LazkhxtomLQHS3SXAvWYSTBYKczzo7ku2ZSjeUEg=;
	h=To:Subject:From:Date:From;
	b=PvZJtQ3feyjIqDKaXQd78RRhjgnidx/VKsn4cIwJLgsQFzK8b7HLisgo8KQhJt5Ar
	 wg7iV9dpGOAVOQgz7T8JyKp7IVda9owf/cfMS43I0gSsNZo5DFLP/2aw7EZwBBBPEQ
	 cyASvZPQ6+fjc+lliL64V/2utbh5x7N4umqaGpbVSCB0rHI1n7AO5ZvTBcaYCw6fVh
	 0gU+KH1KizqJa/vb2hIwUiGV03kwK4vhDRBNBo6GUd3QPTTxfY65q9L9Xgj+VFl5FG
	 2mxplTz4GCxo5mLQumhrHag1vWFjnGlSPxXAZPsIePJMhiTJDHevMFKFRtXemOY3z3
	 HwNJk2vl8YWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF78C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601403369.24599.17739769667150451380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a5944a4415c5d5eeb1311efe12efd2238032c8fa78d4f3d30c88bb4c71f634
Date: Thu, 06 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786014033
