Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6E189B89
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724447154; cv=none; b=G+oyKcjw/m5JVmruUayxdBi0GaCW3/vOrA91RhdZ97Ordgwjjys+mFI1/aQzqjolY44bfTLmnl1Dn9Jj3sRcRj1OmO4Fp8EaMnRY/P/gzDzUi2E78A+CYJVhaDtbaG+5Ta7iEkB+HYRqLLaalgjPliCFyrUSU/HOnj4ohMZaNpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724447154; c=relaxed/simple;
	bh=I472sGidutg1VzdRh/oaq3bVEZhZo6cfpC2C7nJ/5wQ=;
	h=To:Subject:From:Message-Id:Date; b=WzSu4TBKwmj0pUUmif1GKJtYiZMpjK2Z4Z8QqLX5p52R2wJJQMAXgiy7S0Qn8ki2fNcHR1ahkD19IXnfsJPexIaHIGKes3uULse0sLY2qR7nfmkV8dhbVaZnc0Et7wthHFbz8zRcrSncBSr8gYRxEbdKbboM0pihZoMOdlcCOnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up7OdtGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up7OdtGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE49C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724447153;
	bh=I472sGidutg1VzdRh/oaq3bVEZhZo6cfpC2C7nJ/5wQ=;
	h=To:Subject:From:Date:From;
	b=Up7OdtGZyYeQcmK3gH447cx18TTlZpX6yqu9JMIB21jUpuQWPGxrM6YszS3dFa1jF
	 COn2pu4tBgtPmT79pRQgJk0Xy/iwemFPIgTDwx6CqAYYm80SluDXPLGcxXWCoBr/JS
	 zwz2suyvw0CfLKeoya/flJ3Zg9JKq+suNGKCwXgy++pTFU+n+UI1DPHnbsLKcvhlJh
	 kGHawMBg4rjKJ8zLvjxL/QBe1KlbSqapZ05OqrSk0xHoVyany1vkeSiYPcp52By1s5
	 tozja8ggpTp+HIIxfQ7KWgMI7U9CfuNWJr1862U32TtZyYrRlP6Kl4cwQC1UNwvtEX
	 j4dDxpLTPDd8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F663C5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444715364.31408.7128879376801747576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d52559dd68d13e5f8cedcf5e20c5ffa5a2999626ad94c6e3bdbffa0ead062f
Date: Fri, 23 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724447153
