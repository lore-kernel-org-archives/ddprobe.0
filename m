Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099312D3A7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400034; cv=none; b=peoMvhtkue+RSD6w0IZBh6Jzr4vhLne+Tdr2O0U4Y3oKMs9nLI4cP2AWxOYxO4zAQ2H/Zj6/hPyYkfhiVJsHAScjTpCZKpBQVtxbqSuURRupI102aMZbjo8vDPIgZBMQOqdM/Q5VubAyhcXBZ3SCdFW+78i+30YYNCBO0CUu+ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400034; c=relaxed/simple;
	bh=cBE+jmXKb5nFrq354H8n7nzyR/ngYkUXSTqC3nGJ//s=;
	h=To:Subject:From:Message-Id:Date; b=Ed6OICnigKF95XtzMranKRPmTdD/B0q/br1BAqRYvnabJXtTq4uZ8HwLmFXfTXqPyx3y1ahaVNT/ktwnQMTCwVg+fpFYfmuOR3AjiAQzov1zQEfK57BJi2hJxcx4xN5h7oRgxRif0p9HHU5eqkwFTkVNYhzdW6ah0r/mL1E06r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlpglqHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlpglqHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1774C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768400033;
	bh=cBE+jmXKb5nFrq354H8n7nzyR/ngYkUXSTqC3nGJ//s=;
	h=To:Subject:From:Date:From;
	b=QlpglqHF+9ARdIopsUUpP+Wi7Fs5qTXy4f9v5d7v9R7SHCKMB02w3lgJ+6LnwjQUg
	 xz9xbp7xPG4PNOMx1fMrYW5aAJZH3IfuwxG235lMo2QU/MqR1hglLpe/XBUwpu3byv
	 zfuhVPLg2uTXxvExfDfju8yKxv4qCVUbmS7ETkdgYO298XJqJd6/53sAP/yvcOm3ov
	 iVvX08pLwaiaBqxr7PKOI7VRMTOrzFiRW7UyfOmWlC5lPj3p4fAFHcd90S8NwRuIS9
	 G/7p8q/mKD6PFF1sID1ZJCd43qKuu8dgf6vb8BQOWByOla2JM8xLBXbgVJe618MYLN
	 /efsmVe39ojbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90663D37E3A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840003358.25203.2649116577654681010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b8a1c2e280b08554edafbd67bd264594489397286f0b85a45da8565ec10f91
Date: Wed, 14 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768400033
