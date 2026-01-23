Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB7B139D0A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769158434; cv=none; b=izEyWPJDcUgnqm0ekc2QKZCO+/mLZG3LO7bzauY2MD9ooz/J8SzHKTkXVA3ezZxfFNQdmHa8IM23R09Cmr2YFYr7S7lBsOzzPYYKwXK/giYeIqt5aXESbnHBrcI4iC9fLqaXN0sCaFgns2nBPr5S0CusyNdv+jRx3uwCRoFwfe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769158434; c=relaxed/simple;
	bh=xdI82g6xrcIXCWgk+kFHWLvIF0Ftr6fNs2huLDS3jD0=;
	h=To:Subject:From:Message-Id:Date; b=WRsPI1GMM7BtWaLqL/qiuy3uAiC93VFnnOmKQ+ikqjLnskSbwlMmuhaiWzy/kKtrcHeQDVLyPPAQPij81opJO2D8otlBlnmsYpU76l9x7nw6ekpcjkHwLWaDczo3wQC1I8MKbrSlmGd+8nOpdOj0EXCNF5UpZg9vcJBA1vnTH4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YelLAMzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YelLAMzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB9C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769158433;
	bh=xdI82g6xrcIXCWgk+kFHWLvIF0Ftr6fNs2huLDS3jD0=;
	h=To:Subject:From:Date:From;
	b=YelLAMzLw4ZcGOws9BEshYrRhdnOvN4OGwQWQNSTfrKBnwx/RpBLou/mvduWWcdk/
	 EdmikUYCJWULRpO1vfPFwi99uaf2JK182i8AVPMI9HMNQBuez/24EWlBfGPhGZNoGn
	 mvMccCmZ+U7HkR0RNs23UknA9Quy4R3AYdfuQJ1YpQk5OrAIQiQ/h7ABdG53MDnjvX
	 T7wnghNR980IC4nNJ+ybNxM8axaJF0qRd3YzM5SlLYzmIcauTjrMCIR+bTnTn2FbiM
	 taWmxGpG/tTfFYAdFkMErOooQr/KIZiVLNKvNPoeDNpWnvJSowFkodgPelNY0oRCBY
	 NLKD5D9+FRfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C7AD72353
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915843360.2091.13369246744227517103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714d841034aeefea18a2c0f8c82505a64318b480cb94625d30c4f7b27dc15370
Date: Fri, 23 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769158433
