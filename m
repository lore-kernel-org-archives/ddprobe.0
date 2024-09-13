Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241B5E567
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726236954; cv=none; b=euyEEQoBP8WSYlzpsLr1+MZab3+6oil0L0QtEAgYC+rvFc6FxPzWueCOO0i299RUSZ+j/ljeyR6LLUE7HTvOIcH9ZJwRum4hhms+EdK0PnDRT60VZ377sUbJjHu9ewb4GIRNK241RivvNzkZJZst0HbuFUlXzHXTra+nFA6H108=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726236954; c=relaxed/simple;
	bh=OHLw1gmHvBbHv+YTUxz6vbFvMnZXeMYuukYVLRJ9F/E=;
	h=To:Subject:From:Message-Id:Date; b=jCN4OocPtLSkEie1XgRgPqSJX6NSBkTL7VoXHwvjGhCEhZFeUhD2/Fsm7jlqrrASZELUHosUXoIiT24s8q31UCx8Lc1HZPo41Tak43X+CoC85wplHOWoRtwu/p0pTr6IEkw96CUuvXwaYLObh53gC+GgGUTyz7z5fqxDDigjPEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxmeWAaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxmeWAaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C3C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726236953;
	bh=OHLw1gmHvBbHv+YTUxz6vbFvMnZXeMYuukYVLRJ9F/E=;
	h=To:Subject:From:Date:From;
	b=QxmeWAaDTxG4C8VQvmWWdoSi3B7z8miDweLCXXvq/Nm2eBCvaCFgQS++s4gsIbiYU
	 nSszE7JUfss8z5nsqVUI2uwEBdyuXEO7JvfTryQv2G2GATbQIB7scUX6Yc7dSOJcIo
	 nzfasy9sIDPuhCiUTETff+SiSw0ltRtbtKjH1QGjb4JnispGvf/2EOF7UM9p8V2XXh
	 vMWKYJXIX0uPOLOFz4/j/kWP73xS2pQ2dxfsY2ip4nq1/YxeTVo5A7y5cfhHBizI3s
	 vXFI8LPREMwziKX6WNz1n+rnTWwWupKWgWoeEQK5hf8o7ZuhU1/DNwquHcs9Dt5OG5
	 8UIFqgsCZy+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240CFA3755
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623695359.12769.11042471706134745480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c8e89f97ddda60e6ff7ecc04b6bf799566b44234ef38f57443ddb465dc3ed7
Date: Fri, 13 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726236953
