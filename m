Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C128834
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791171634; cv=none; b=nAS40g53GdciRpVucO+1iwsjh34Ew8a9MTQ4XYcpzfdjyoHEdyQsBlwHJc4i4zvJMLe6Ziel0R7EYS2sbD5Av7EoTknLu7vp4GragLOd69fJTujMBKRZkRGCMV1NfkJqEWYYgsnsZbsTuxILRKv8xHtvOiM+LleoVlCgHU34AIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791171634; c=relaxed/simple;
	bh=ryXVSJK0wB14DSUBCPTNta4DWn16vhrEyN4EouUGtwM=;
	h=To:Subject:From:Message-Id:Date; b=Tx2FxKh5a/oyBYDuDLl/rZAh0Rq8m3cpoWU58YYXLySYYu2tExwmXKLNX1JjT69SkkbDWj8aBtXtaz4qcFDufSCTbUpF1v5NC3MEZXqiaGBFsHc/FDHIq1a68X2U8kieZq+vO+T7V8vnfVcVkIR4G1LKa75Jqg1AgbVN9c3ocxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+5P//KB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+5P//KB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D312EC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791171633;
	bh=ryXVSJK0wB14DSUBCPTNta4DWn16vhrEyN4EouUGtwM=;
	h=To:Subject:From:Date:From;
	b=d+5P//KBpTsvsx1UiYWXu6eqZGpcrKLwMShKn+TKxjKHFUAGEWOrNJSmfkbWHi3Ja
	 Se8gV/qGOPRjW0a/9ywYFfZsfeZbhZB4pefRk5GzluR0+IvZkWlxpeTNnJE4QnQqEO
	 Tj1aeiCnbrmmIXpv/Kc3iaeTXznu5DBGf8nBe6FbhW1HzmcZjT1e4eSrFiRbvLpCD4
	 QStUT6IddWky3JVCHJXNgnHsT3IV3rJvBi30SlW9ZdXuDNy2p0yqiINHEtm1xubLLA
	 aG8iUeZC5ddyoWMgBKhRQkwAddrXbAccvGah5G+RHm4Gc5eOxR7URq97aWOTzFSUiI
	 7HTPPbj7ubanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF6CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117163368.1276.11662724099994823540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b31d06498a225dda63bca940d8b7db24bcedf979bac5d5e96dfcef2286310a
Date: Mon, 05 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791171633
