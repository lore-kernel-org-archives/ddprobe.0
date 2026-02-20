Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EBA1A0BF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771565094; cv=none; b=sUyPblUUZFflJRDS18SvALrGURQfKYOluytXIXVC3BqXDNg08EbLzNA+gP61AxeD3scj/6324FRrr5uuOLFtL0hpPaqG+tPVHf/N8WJFhSsfrvzBcxxU8FdYSNKTA4k0cK3Z8lgXVZKu0Hldup3V9pGkQ0SBQA+gYdvgF4+sw9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771565094; c=relaxed/simple;
	bh=zDdHJFU4cznRnouS+PwQq2MHKVsj3j72ZJaOfW9uPpY=;
	h=To:Subject:From:Message-Id:Date; b=dSNoMWcor6cbOp8FK0inMGVl81E8PlLbXiTM2b0wOQiQV4lpaULaeYJa7fmTxKr6s3y6GuojsDpWHKxopquaat1Og+sbCfJ57a0KcgzGbtpkgpn/8bXj12gtLrPQrgev5BAk1dT3AAlblMFDefB5m4pCDqwTWEXNtRyPEnJKYCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/SdrXSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/SdrXSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B5FC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771565093;
	bh=zDdHJFU4cznRnouS+PwQq2MHKVsj3j72ZJaOfW9uPpY=;
	h=To:Subject:From:Date:From;
	b=e/SdrXSNtnGDOfjqPWp83xlf90vq2W9Ox1NoZRHnL0D3Kj3Kp5vyUBj3RItwd1IsM
	 j0ua0fn8Px7Pb0/wfHqQ0YNWrRDp99hVHmKQAOnMFjietUfn17uA+AOZe8jlRfRJ8x
	 76zl92cSl/qNrVa0yxjqA/1nGJBXxDaqHuazZm8XeTBe+nNNpf7Pi4Y2300OT5EFVT
	 +pPqa78d9J57gwLYfttys5TkHY6YcQeUnuSJ31vEBAQmdsgQ9RiyZIGqF9ipRTCxJv
	 Jlk0/TmgEwdSt1EZMjccsckui1pbXDzqY1IG/ROoIWNtgIpHNUYZxQDIFmr09liuKp
	 pwvaJHrluXStg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A34BC53209
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156509361.11096.1961277986743338027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c1d516202fbea7a359c715c6161399b0762f24d2412f22430ac50b5a7315de
Date: Fri, 20 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771565093
