Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD8D39B94C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774907094; cv=none; b=aZyig9Nn298nWrXdBzxSrmOmOu3kI7F8w8opVcFKt59nh2Oe6ubqwgdb9VVaPGkBD4dpITnf7Puci7lGub4pyLbjTyq4ZCuVdwYIPasDFYrY6HuI/Tp3wWsxxOb3MFvq6YtSNru/LNRvzPBRyBqytgNCYWZHAz8trSHdpMS8/XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774907094; c=relaxed/simple;
	bh=jBfDQQinJBpJ8u946wSjMD3sRbvz7GUUs5X9478k+Ec=;
	h=To:Subject:From:Message-Id:Date; b=oEmekLIVmprpPy9h4gUmOpbiR4lZHLJZUwsKsIjiClVCqytbhF5Nyvy0TTqQ0Wk5pUnRFFaIbUWDarqJFrgtr+5b/66jwtxlzgiObsp72yJ55O7RVyuwxz+E1Wrl/Sg3/Sdb4xCIzHNseDPAslD02WBG/ff/N0fzyLOy+DMrk8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7CJFG0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7CJFG0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE01AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774907093;
	bh=jBfDQQinJBpJ8u946wSjMD3sRbvz7GUUs5X9478k+Ec=;
	h=To:Subject:From:Date:From;
	b=H7CJFG0AnMCNWEJCuEhNkvKQmdghOpgRXIdoU4X2XKlKDxvBCZTEGsFqc0CU+SLeA
	 aYGvvWXYvkUR56vnikPQGj+6cbJpY3Bty3UOomOZuCiBxuM2zuIAhkRzJMLUdVI97W
	 sNuBrta9JJAPWpcVY/NHpYj2odQtiLIPPB2Altm7s1EYYi2Pj/3MzYtSYyM5VG8dCm
	 PgpvNy89ohKuwbqh6nd3xXPD047sb/tbCpLn0kX4yREY5cJSYAnpvMBfvyuEB1SoLw
	 TQWEaEmqF+41fuwgzPcvkAn0Y+eOWLesgIPM+ImcWNhs1KXsNZ4SOprTbxTXQpylg2
	 tQ3E5ghiB1smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C71F1061B26
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490709362.23158.17173150739866510526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfa37ee9afc320272b7d0c95624d0a78a667a3c23ca42e85fd81d50216caf4e
Date: Mon, 30 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774907093
