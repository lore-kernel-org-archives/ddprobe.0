Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A1F3F9284
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780470874; cv=none; b=dPFQN0Qzfnd25qkhvkKXBz8A/ZbaYyk9Wge8laJ5Y43snsrxcop60BlWbH66f8glDvoskhWBcpgh6TV9tg9QMG4LtMo/83LgVbsnSsmRkDCB/5hZGCZMjuAZUAoNRIWwpo1qnllVQLnEBudkenxwIPvEXhUt/ALFKLBS3IbJ0xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780470874; c=relaxed/simple;
	bh=gB7DL8y6guNzlzQKs82Gs70fLJcaQZb7L/N7M6VgjXM=;
	h=To:Subject:From:Message-Id:Date; b=HofWlmQ6PE4GnyXp7lfCYH6eIYbogZz5lsfm7FKvSSVtfX3JdJOC5CV80BZqHQwvt+6+lGB2cg3uBm1x7LnSuOWzwLS7pLYyvrvQtXir6QSp3voRDtdXR9tfsk4yooC2v1itjVd7aXUml1QTupV4boJhyWrTn7MA93RHsOCbsGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rabBiMbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rabBiMbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB09C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780470873;
	bh=gB7DL8y6guNzlzQKs82Gs70fLJcaQZb7L/N7M6VgjXM=;
	h=To:Subject:From:Date:From;
	b=rabBiMbeNwd+QneOZDyJKKzq5rxRxJjo2uGUcgbByXHeRts2qHaJiAuGL58nmuBbR
	 yTJZmJy2AQkglyKvei+nmTWCMg2id8MKDR07FcO1WVM40G1tia4JTL9EA45Bi0PIGq
	 h6PzdsKESJFza5sfFdesthAm3/b82X4FzopML3ocX3Htnx9ilIDPN/55RgigEolwq1
	 61WMmj75biCyQy1gbqAu6wot54g5uGPdVCELHWYHCKeKh6dzhrpY81RhVMN4UO4r8C
	 tNrXRlwkFXSPm12JQZQrsrHt9rPCCOLCHncGwaDhBWQQdGEqIiS+TpD1Vn5ObJsTCV
	 MD+YwRJvTfnHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A927CCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047087368.7302.8549961637533433845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122b09d032d303c17f1b555e41a4d5956f7e1c9a974229b689ae53361c28821c
Date: Wed, 03 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780470873
