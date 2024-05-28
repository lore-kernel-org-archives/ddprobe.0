Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598D379F6
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716908063; cv=none; b=gIovkJgIn1ePqJU+6rxmY6DixZkojdwvaVqVugLdySHmTex1XQEXSAwIPzx+LjWnfsE1iqIv1D4wuyAQ9gx/HayBAm5TMHnzKHG550D5eacOmLXod8Jo4yK5DP3ag5Tbusdeo+/glhdLH/wQ/wmhWN3WxK/qOPtpBzNsYOcD3jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716908063; c=relaxed/simple;
	bh=ioxnSRJ3cfg7qp7jRLIquDHj5GptLkEfuGlVdOTmrWg=;
	h=To:Subject:From:Message-Id:Date; b=Vnm8voYtBfQCkELfE0sp9PIIQGRpMt8N7kmLefjeaVoqG6sAL17NFxmzE8XJ+wSYlvWaV2Z00tCB+jNqwaBum6hRYQ1s9CoW6coDlINxg2MVKVydAJiU63ra3BcLXKPJft8KD+b2C5QDFzk8Yf6dFkEoz+lrjZpVsOJIjNNrukU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehaGaYpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehaGaYpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6578C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716908062;
	bh=ioxnSRJ3cfg7qp7jRLIquDHj5GptLkEfuGlVdOTmrWg=;
	h=To:Subject:From:Date:From;
	b=ehaGaYpbbAji+ksGRcbfDprn5jKZnmI9oh3K5WJhdSOQ+ybncJh9+hs3srrWgIMPb
	 R5IHDLuTxigkfSQ9RkzK+IrWXRCUfPnp9skZ8yKfyzecwzf1w2FU3AdgqUhzz1N4Nb
	 scS39yEyxY+4S2KqMIjaYA7F6MkrsOFEscqwzTAph4YYiOt7/WSG1hG0hqNXJeJaD4
	 3SBBkHgG658fJydiU16vqEYbjXMTcTrkM2IFduDK6EowVUfENikK9UwVAcQZWDSMVw
	 PqmaUhPLW7jRsHRiAmTbEifI5vLG7GqlcffBMMIljfZlat7VMyRxuqsNO8NdrBs3mw
	 7KKrGHHu5x76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E10C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690806279.9822.13775213029794158146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b001bafd94a742d4ef3ce3512cfb7fca5aa2853b20ee91de5475f62c6b80ed
Date: Tue, 28 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716908062
