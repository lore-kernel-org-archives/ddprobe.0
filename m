Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA371FC0EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773105894; cv=none; b=Eq/QCCqFrVje5SfxVAleJfR4h+DNKWFDKaWNAKBTeKCz4vcrIdivvCam3rsPrW88tnzxugRPQGWvGyo2jCsushOoLn2PU0iaE7UM6JkLW/KpdT49PEMwXYk5EyNgZGEPUsIrzjhBCqWRVdWeyAE5HTf5gRdk/ZkE6jPdXi/ovMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773105894; c=relaxed/simple;
	bh=ZebEUu7mEJXiYwWPAjLGmLV9kv5jbq8DvkhgQmIdYyM=;
	h=To:Subject:From:Message-Id:Date; b=HaQkTc7MkZypatw7Y37WcepjI/nX2wYrDIJLxXJ1178t5vo+WXezdAeLkPONvztolM6pfsggCYDcAThMPCypwTqaNrTeH4jlVp8wqFrWMJiGXLpkIZZl9DMwhJoRj3//UiQP5/BZ7KVl23Zdj4JM20midoGxkxQSp17xyYe3P+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d84r6WCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d84r6WCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD18DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773105893;
	bh=ZebEUu7mEJXiYwWPAjLGmLV9kv5jbq8DvkhgQmIdYyM=;
	h=To:Subject:From:Date:From;
	b=d84r6WCNW4jaIeoeIRLb18eQTx/xD7TUkrNexUmPT2ThGoSgZNsNKHUZsSLRt3a5a
	 vJrfrTtMNffru35ziV+tWKtb1v9bpcDZMLr3nbwq75SZMRp9A8AwSMaRWo6gSPPtnN
	 cdI6wuBSztlyAdXjYIhqugUTRude3S05+wUkO5/314A8ayh7d0V7YpJ8m8QuGfCGOH
	 2tV34fOo+j4fP9Y8ap9zRndZ1RN5EU7kROt3qbL6sjyyvG2El7f6NdsG/IIfrs8A8A
	 3uksCHB9MLdLoxeC65vXZH3Nbwctr3EyUt624ruaCpRSMnom6nRrh0qJX3Vg39aYHo
	 InSDkCHlnPpbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF27FCC9A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310589362.2728.15614047037061408267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d9fc7131af23f2adcb602dca2f59caaff0b49c1db9aae8bb4e8fb603e808ee
Date: Tue, 10 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773105893
