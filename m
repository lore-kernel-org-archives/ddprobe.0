Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B378208D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783173514; cv=none; b=TBT/5sKnUmNkC5q8DFZmC8cuRh1FEOtlIE6FuONRiHBt3j7CPO6W6nUlb91zXpLUUQfYuILMvI6B+jm5N/4KMDxjasxwI5NHIyXVXGSvuSnQxnpBUmhaxjGysU/wQRi3XSPjojbYFjXjmHcv5KojzIhYAIt4jKrne3ejYeTxeD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783173514; c=relaxed/simple;
	bh=SzlDQzN8nmSDSM8E0t9zlKnuMHCbw8fhRbRGNPSa0W0=;
	h=To:Subject:From:Message-Id:Date; b=UMp7UnIrV0VP615KIg4GKJxydqG1PDU4WqiLzauC90E36merGIoPwQJ6fuKHd8l0zt+kNA6tUbwf9sDu8L4Hd924lYw6vFloR6QWnyCH82bO6y+eByh7jFe6wKBREDmoNg9BD6e0Y5nV4pCGtpS1XgdBNPz5+4wEPYBCS8gCBMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQH19xWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQH19xWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED26C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783173513;
	bh=SzlDQzN8nmSDSM8E0t9zlKnuMHCbw8fhRbRGNPSa0W0=;
	h=To:Subject:From:Date:From;
	b=TQH19xWdibdj5bEa5xJVcKwH3PVQZOSj7c8iicSUnijsV0dfPTQ8jOzNgm2QABUvx
	 T71uofYQRpHwRZLOVdOPxQ2Pv1Qv8F641s/Dwci9KpUFt0mY2yta4f/jubjcmsGVJ9
	 pT+tv+x25ARyxJvQzMR/gzROCR3QzlmFiM7OXfdXUUoRd3X2L6dCNmcVzetKho7AFz
	 artEz2wcSBJiXRkJxLIgERUeOfJZK8Xcn745OTXTk9/bb0ZKIGloJ9Fz+PGJwda4EP
	 5I8rB5ezr69gM9JCW1a5aa/R4Rt+l+yzaAczCSWMj8LDpdNSrwABS/7RZXn6s21Hgk
	 nS97oRyOUGS6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD42C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317351368.14890.564347394449782365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0916e2ac35dce5fc4235869bdb96db5944e14c5fbcc9ece340ff09f7961b652
Date: Sat, 04 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783173513
