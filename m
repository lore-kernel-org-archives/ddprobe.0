Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2759C1B81CA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767383034; cv=none; b=lICVy+sYpUWgDISbFO7MWWv4B8lDkyDL1mY2Eqb96KSaPHvGx+L2DL9+d8U/l7CqeNPoKbI2zhMb2G4Mphk6ynIgCgHbq1mCnFb07HXtKSohyia7gbxWKvgOtPBQc9N2kD+zzvKtmnqdhwadJCT+L9GfUt6osL7K567sBUnM9e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767383034; c=relaxed/simple;
	bh=9setewZ32tluOgrI5ZgdfKgcWN0MeMsssR0uBjeOsZM=;
	h=To:Subject:From:Message-Id:Date; b=hOA3bWT540PGpG1PNcR6zhQQlHGLKuAGy/RN3fv+zj8CbwvmlErexjRo0WgOt0as9IZZkmg86kT/1nSntHpdQJo1m4QH7dULg7tcfxsvO1nL7AltPQV7DBWSxQIbGacU27o2KerBo5ow3mceHxXU4Ws/3CNYlIne24XxxcrDUO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmrCKq24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmrCKq24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A968AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767383033;
	bh=9setewZ32tluOgrI5ZgdfKgcWN0MeMsssR0uBjeOsZM=;
	h=To:Subject:From:Date:From;
	b=pmrCKq24u7CsYQjM1z7Fk8iDXPBBvHwxVKieg94WxU/2vXL5xLfgEw9AYe9fiGIJC
	 Nbn+flLBXBcQVjJ46g10BGBe2uiJ7D0W2ZH4qCtoWRF/ZH7O3CFoqvMAl4poWc5Ic7
	 dq+qJ3o/It9W9TCa3wofTQeZXXBwAiAo4q5F9sWCoEZ9lgRjL0atJpcVVgGqM4kK6W
	 QybZpzlTsm1ccVJiSKcENO4mMjIxx1Q88fUWRC52IxNRDCWiH+BJuGh5LZnFV8Ti1P
	 lZT3LL6GsbE7u9H7g5IYsx6sjrwolQiWljUnrSjzoIehDRLrE/yUFL6Q/S5lg0fXOQ
	 Hzx6eOufnevgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F1FA375C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738303358.11160.13795649357587087565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e62e41dbbcefe406fa48c624d4f50b4393da926cf79368879627e352ad4b266
Date: Fri, 02 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767383033
