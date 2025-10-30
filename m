Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397302DECDE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761799194; cv=none; b=APo8mqJOPufYneumjOQRU6iIPynRisB9redyuqFCr1wPUrjWdHz3zWsG/b7wbpl3q33Yq1mzZbcj9bIEUqU8dO6qdptdq9s+yYDC5+B1dkfWJMZ1YwRlyWEQTGuu1b1Wcl85Fbzs2zKLUTDRcqsktLsGE/XtVaGLsDXHgVaV16E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761799194; c=relaxed/simple;
	bh=bugk8IOkztrhYkWSRMprFaIhCVBWa3gvkpT2XJzamDw=;
	h=To:Subject:From:Message-Id:Date; b=jjsxwx7pnR9ThxzpXejljhm2BnSoimYg2a98TwBkUDCBUg0pbmKgyFUBM/SCg5JSJMChGJf/leHBhPp5f82Gf7dxIhHgRVsGJIjxHmlxJ6VZOZtV9ibNoWXWi1m8/8kZ3pcKpHB52n7ABb8DfpPtGKMNDa9T4RgtKa6akcrrdX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbY4FCGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbY4FCGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0731C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761799193;
	bh=bugk8IOkztrhYkWSRMprFaIhCVBWa3gvkpT2XJzamDw=;
	h=To:Subject:From:Date:From;
	b=pbY4FCGzmh8XFqOInuqf+HEi0e5czLGBZ2SQ9fTYDXBgsW6BgteEtuTye5uckg9Tx
	 DThLpDF1J6KCX1LaGT6T3uq21Ku2ZrCchMcGJ7tKPo7F9388kHvwgdCdv7BAu5VpuF
	 jbAi18WfYY67ulmyviSQyvdzQo7YQnhDT/L83yciuBq3pMlV1lP4MsXPC1nEP4nmIp
	 IiBha0FGXRCJrxpWcvwCOP9ujprc0hBVYhk2ENIgjiAikDpkz1TMy8j8qqGVD/dMuP
	 JDlZ7h45Ft6k473lwXUnCGv0A/mAsVJ+VjPsHle3r3GxorAfQxDbwebfzglkEeGdS0
	 nS+8sPQouPIFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC960CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179919366.28828.4796292414646859095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5163c8c1541f2c98e20ac93a344dfb2323c9f6cf079de2c79db6fa0326dc705d
Date: Thu, 30 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761799193
