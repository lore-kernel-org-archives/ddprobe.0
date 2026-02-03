Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D237E792
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770160434; cv=none; b=Q3+HucD+KCeiP5Ao7NzncTonLDxWzKgbN0H6uvTXZ/pwThmRKMpeHvKaet9UQt0/WiyPgyrtMwEpk7+lYMYUKHa+rBJwVC+181eIcQZhk5o7ma9MViDgbmgNjNdQPF5qhMtouWk/WQwQ7I3OezZsffqokDOxYYa8YhiAn+csN0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770160434; c=relaxed/simple;
	bh=wmhl4qnRrxFjjvsgLmLLxmByRRa4t77BZWaXD1H6jGw=;
	h=To:Subject:From:Message-Id:Date; b=afW4xrpZiTQuS3CmDht7eETpIXP2wjk2NZJGV0uDLcxbipJMxYKn3b/h6SStDyoPs1Aj8spPq5vyoRKoy55WHcqyWebL94qSXwD4PiQqlID48S6/fA7A4AZewgH8tIycaSxptoiSWyAD8j6k0xSmi7lWL69d8ssje8iuA/3hmig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDg/1sp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDg/1sp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3E8C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770160433;
	bh=wmhl4qnRrxFjjvsgLmLLxmByRRa4t77BZWaXD1H6jGw=;
	h=To:Subject:From:Date:From;
	b=bDg/1sp9p8pOV9zqrLjMGphDiJXP18Stv0HiKrkZ646yNSbMRURf279FajDefPBsC
	 qfr0E951biEbVSbGC1e/P55zc3TNExqel55Po05a/6w8Mg7Q5TIk+xqmRJ9ldSPrSy
	 lsmPDDLoIjy8G6OK/bqBEEZi8CZMqJqnOPnN6rIcn087mJCW1UK0maO3rCUMFuhUj2
	 1P138toS4PLEy/Ffa+bk1ENbdWmNNqYLwI8xIChZtmKq77qUK2xQKmNw9To0nTEh82
	 F9Sss8x7ojmxYclnFWScYzSmP+8UNO++xSPN0z41EWUHvkagoHyk6CoZy2w8ja97Sj
	 LqLO+0L0p7I6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5081E8B37E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016043373.27699.7096434018752191896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc63751f2a5ad53faf6305abef067c1e9e9c64f28d0f9edb4455c9c9a9cf79de
Date: Tue, 03 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770160433
