Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475463839BA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781013334; cv=none; b=oN33xyb3zXXvSIN54MAsxXmA8oCAyqoDCjm76zlPwY6pUbwsk4zb4IfILNgRAUzyYsi9MRxQrYcKfw6g7ZXiYBk3IL5KqpEY7MeI4CdEgdyZLZ/nWI5avtILemmWSUaUe2r08NusNCCIohjN9pBy2VEWGL3xEgAgZ+IdZ956AIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781013334; c=relaxed/simple;
	bh=0M7ZEGK6Trn0odqt0r6rWTU8Frabu6L1ZN2son/V02E=;
	h=To:Subject:From:Message-Id:Date; b=YTS7JVZ5VqoQMVSQHYjiZYQyb8IQY9iqG+JXpBd678MCtXaRLUFFaNRvB0rLAcSWa3P1OCOILRPAnU+rwzQj36OBrtYNj4XeuQvznUWdbgdQpTW/6tHlZGbZaj7WkSIRMKK18eyvEUWGfgQXnwSSJHU3+8DITKyyiQX0Whdtztk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj/HJhF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj/HJhF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2902C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781013333;
	bh=0M7ZEGK6Trn0odqt0r6rWTU8Frabu6L1ZN2son/V02E=;
	h=To:Subject:From:Date:From;
	b=lj/HJhF2GWtS0i2A9SuZUKdR88OfOTSBilbqwwgsHALgY4zqfiejz2wEw3Y0Qt7+o
	 9Zyn4f97tJ0/RRlF5wlcxefK3ZN3ZgPUMfm6eI6k48se1MG9y6FUPXV9LsMxj11GY9
	 nhJcEDd2/kCRwSMeiStotJkD5lXcvQpcSpXBbtkWj3hfU9QL75xI+KZZAR1r0zKrPs
	 ZsycjJ+GBMxO+4loqJ3s661ep0S7kDB2SpocEviseWo6fgtsjd30CPDdiPLQyHuLJl
	 DMUXnULik4o9iLFR1wd0E++Q31Brl/PFqVr9XOMEQxmV1k2kcJkP26PCjKwNi7xaql
	 21ZQ4ULdooTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C4CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101333370.1802.7858950875757731034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c631c026504a74310d1bfcbb1e3dc194280eb585f3fdce7f0885dd4f0d926152
Date: Tue, 09 Jun 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781013333
