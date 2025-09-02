Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7442D7DD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756792794; cv=none; b=XtWMZbyfQfYuCr3NQtxOFQl3xZVEBSbMhUNCx2WH26WdaPYdXWvgm2ChASOt7kiRAU5WLJjMAMCR2H7eQyOsXYVZQz4F5xxm/oOHMthsqmcMhv3b9uYRqxPKRr1hAHY4naNxPpNsnV4xCyt2aBpZGHeJbdIg1AEUAeDgw4oLa1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756792794; c=relaxed/simple;
	bh=Hr/wU/jx4FytnjbtjUITBNbl16RH9BwNjrUyj465rxE=;
	h=To:Subject:From:Message-Id:Date; b=vASCOB6DQL9kIBIHYSK1XMYjx4x0OQfIfaV8W32VL5CZNKLZG2Q4holhMvwt4E852mnZBXRdeRtg04k2AcyvI7gOLZ+WDS1EIFmB3Taw4RJdDNzzoNcglzMeR0DSGL3HSt+3cIdcKse7yx4KKET//ecjadggAEQBrVVTBluVFjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5MWDB3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5MWDB3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756792793;
	bh=Hr/wU/jx4FytnjbtjUITBNbl16RH9BwNjrUyj465rxE=;
	h=To:Subject:From:Date:From;
	b=Z5MWDB3sduAU833IlSBVbX0gPMvG5JSNro9kLMTcSTJNRs8og7baLqpVefLMnUdLK
	 f2UTjPaYI062inXS2sXt7ueUoC8vfVeLkNzC922Id8pg3msg8O8AuvIhYwUGFee0EO
	 z0e+mVOhUNIoNCSszBoTQt4+sg/odsi43EK6Ujl4VB4RLNs+69wcw1FDtp8BQQqWrt
	 Kr/E3SMU3ifRLyQGDiQKoyDSISY8q2j3Qja/ctMV+QghZsNi93vJkEfK91BULwAIoj
	 pfGKfNjt1BPQmybhgZREszREDfp5JhDno8p98kJUIhiQ14Afc+ohAILXtEcDoiY5x5
	 nEkjoDyuoUl5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C0CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679279357.26454.15257924976694749327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe6c0facc98055c33a7a3e8de6e7dbf6c434cb5897c170e63896218912791dc
Date: Tue, 02 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756792793
