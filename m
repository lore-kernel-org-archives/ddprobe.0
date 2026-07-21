Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519AE3C10A8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784624314; cv=none; b=LxNWA9JQw26BSqMb9uAGeepU5CaPIvoewwxnOH4+JpazHkPL56UVVP8LNoVshjEc/rJdlM+0RNIgzRs1DNofvjXcJ1DPlxsc7v2w0p/7FAkDvnWdzryePR8O8jrSNXVKCV9boCKPIPW9TXS6cyPfhY8SUmQ7PtEA6ZSGTsv3EbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784624314; c=relaxed/simple;
	bh=jAJdC1NBMEK9myod6ABnsAqIJVlfurW3scp8EOzlkZM=;
	h=To:Subject:From:Message-Id:Date; b=SImpKbwVtuKU138zKn876Ca2lvjoxb5euPfBC3wTQ3ZNzTMSiEXc4878icfDqzJcRudY4WKgOOiNH0XwOraFkp67fCwg2wgurgOLhEwo+XkebN/uaR0t+lLAWvAZ3S/fl1R0U9cSMsxCAqfMjrL8H+1DPT2y6iwVjd4dYFtFIUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOk7Vihe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOk7Vihe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF29CC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784624313;
	bh=jAJdC1NBMEK9myod6ABnsAqIJVlfurW3scp8EOzlkZM=;
	h=To:Subject:From:Date:From;
	b=SOk7Vihe566rtdCZ5PLhDZQyb9SDuexh3dJp0iJrmYgDnYobQyJr4Mzvz66mlZRQO
	 OV+JyePw/1wyYrxZbSWcp0lpwwDcHBjnHmYB7Vlry5yHhZp5tabFQboBkwohFGNCK9
	 e8cWRLtq16YXzBWHT10Q/4FsFj/XzN9AuEUsdYusoXcUhKncJbRlbf8+fCMNu1uACS
	 EL4se2r8cScu2cs+UllLK2iJwDFgkLDHJhoC2fOeMD0xpYWkpd6HzStnggYjspB0B8
	 kIVpNiweVkqF3gXXY743QYeGGe2df/+vhTPuEin7HqPdxQXMqAv+IZ6KrTSA0sRUUM
	 bHcZH/dgN01Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA962C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462431368.22224.951974669205852489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e58495b43f384e0405b96bff229496f51e008bfcf9b3970b847d556c3dedb74
Date: Tue, 21 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784624313
