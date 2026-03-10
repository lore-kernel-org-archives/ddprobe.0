Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20320175A80
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773106494; cv=none; b=GZNwXCLmaMWIbuQHFKq23D5ieu0kPPKc80QT/PnZpyGieV+GuUJz5XA1LeIT6b8bi/CNJM4rVzyhPgqIp3PMd49i6eyk0q18ps1mkB+IYYTwVKkHFYFETO7/9D0z58f8C4qSUz/V7QB84eO/2PaGZnIjVaxhPBbsU4umS3d5XbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773106494; c=relaxed/simple;
	bh=Awc2+PhQymFWzxe+x71ynrpsGkdusaKvtuqV8KiHLOM=;
	h=To:Subject:From:Message-Id:Date; b=M1jeBxUbrlrW3v8Xj/m30Rao8/jjU6jXQc86vw5tWjBFkh6UsmwAXVpV5bvH30xK/UL2zbBn+peG11a0keushQOGmMIHvfOtNdO6aBQa9aXhOjfNm3+9gIamnHDkB9EyDdMsvVA889lA0edrah1Gwwe6ZmsDAnzIHjAQZy7xqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssUXaYAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssUXaYAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4A3C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773106493;
	bh=Awc2+PhQymFWzxe+x71ynrpsGkdusaKvtuqV8KiHLOM=;
	h=To:Subject:From:Date:From;
	b=ssUXaYANO6zCzL0ca3FI0K1Qzt+hjPwj9ountTDVzIChj4YGl+07HVn3foV5CXN0P
	 VlDwMi4KDneMR/FeAQFHf2paqkJMCyfFeDUblpyBc7VCHNonaSVWEZptB2wQQ72KoR
	 DOkLCKtSA2NzYby22egPeKmdEBRwQiT0htRLBK+OyEuIR7wXVZCcwc+Sm2Bvv/bnnJ
	 Gkvk9mFDWPNdemHho1hVa3+IPtmYj1UKpmc7cDRc2fPYlP0FbLkdWM7WM7jddgow3a
	 Z+2NoYpPYKsTheLhgUd2K1I431wFtzPPl2E8Ioh73QwNQTy2oRULjBqjF2vIGcwqan
	 JQTMUCmx4XdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C97EFCC9A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310649362.3693.5948606674524427777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d8f679ad42d60f1623b3fb5c11ba0ae2e68bf2867ee0f689c57f1a6bfafa09
Date: Tue, 10 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773106493
