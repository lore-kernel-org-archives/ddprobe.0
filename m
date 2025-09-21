Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446BE244660
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758499194; cv=none; b=ERH6j68AnLZSfrd06AxJrtKa1Zew4XleJsRButy8IizZwKar7XpRU+AFONXr32PYX1Y96P/tQVSK3ZCp4r4vO98aJzk6Vjwh7byOkrFhHFmVJOq/QGUmLaiibTzGcOuD/1eED+C8Ktd5peXZQTrPyXq8teWbaKCZTpQ6GmNajJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758499194; c=relaxed/simple;
	bh=PxDxXwUCUeuw1aBo7Oy9pnru5Hkje1rBmjLTAwGEK58=;
	h=To:Subject:From:Message-Id:Date; b=JI+j083IxSOoDRDC/xqIz4WbGcRHJ8cBxlDGthLSmAgXrQjC1/gBdghwttNqHkhXmjGDrsMv0BhxrOhmQDC1AqX8GrdepmJp62iER+DAK22j543FD5CdOyEIh5S5IKyCpSd9k5niVgYtka4K/ZgySAnkMAUDxWZ5hdH0uG0rtDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Abj3ISMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Abj3ISMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B28C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758499193;
	bh=PxDxXwUCUeuw1aBo7Oy9pnru5Hkje1rBmjLTAwGEK58=;
	h=To:Subject:From:Date:From;
	b=Abj3ISMgrLSsXWFuVZACxiHzCEfrbz4kj74ggbIrWimikZdcjmrTfPfMRPdHIyB87
	 NhICRKek0uBjOt0x3g1CxKZ7O0kYcldbMKTtdJ7oT0uJKyQBuBz3L4NXyclGx83YP+
	 5W1ibiilGum1wIUg09Fl2EEz8Dh9v0gQxQtoS+x3Xi3RcGlJzeiaBPao08/SG/08Nw
	 6LC9CLkxdJYv/SjJsYUVKv5zZgg62RlSCnbZulBqihCOd6XhEiZKNAH86nJKedVPYW
	 XU97XtzEKcPqPVKskyDC0u3Xng5FNluKHMrrdr3joYMADL4JCRTxRq0WYp+dc420v6
	 ZA18hJXAGdLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94386CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849919357.12868.10700759676907128871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d44e96db6b417ee8d8e83656e44f55d49f500168f8b4ad965de4240e82bb14
Date: Sun, 21 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758499193
