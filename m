Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341834071ED
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780850074; cv=none; b=hqrp21Nl3O3aoq/sHK3s9ENjxyGXImiqlracSY3JQQvzTuPKPdc8xn44phyfFKzMwww1MRFrMaPAFA9vkHUPPMQgaJp00hdxKlIOvztSTSgJOGv1pYIYwZVm6O8sxRs7Gq7bKI7aQykzZXBPrAokrGdaP3KGspBo753rGyIYT2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780850074; c=relaxed/simple;
	bh=n5q7z4uEId+ZmUXlPnxL1t90rLm4NRm7rA7Er9jQG2w=;
	h=To:Subject:From:Message-Id:Date; b=l7Rq7Miw/r4yuhYWAV6B7A8ERtuIcuysXKEXzyy4Ft2YLzJ96NjFvUJWKIDJ7L0h9ErG4iV6L8JIHldl/ICvgpo4AjrVLkrB5qonFy6NrjN8XwFFkdOP6mCfgw/s+puGmkQrVdHCukeySpF4lag9F8SpmXZd7vECKq9fiP75Uqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKHE+8e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKHE+8e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EE3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780850073;
	bh=n5q7z4uEId+ZmUXlPnxL1t90rLm4NRm7rA7Er9jQG2w=;
	h=To:Subject:From:Date:From;
	b=UKHE+8e2y1q4h2ZedA1Jsj8DgJfa356+HhtgBL4Awj51jD+G1wZ6wfm3aiDco4If3
	 vcC8ojRu1tABxb1Xh8hq22fRBLeE0apJspLTXFF3tqhi0SnLmXRDoHbDSPR5L25ee4
	 /+pno302Pn/Bl+xQ5UwhpNOQNLkT44ezBoXuvGoLi8P6FunvJlH9C4pP6kdihJeHHl
	 U4DMTONN0hzAS5zn4bneR9bFvWgr3hzzjQALpwBurgEmiDUd78QvrYYBtNVE0UVBFe
	 nwnk4Mgd9xr73edGsxnQAzMlsxmQAbANfNz6BoD1I3lNqYuhXrMiVaybu7AcKODt72
	 TL1Y5zt+/fivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE18CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085007369.25050.17516395452388240946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190f5b7fd43b990058528920b673d3a53db09a07636805d76d3d2edf8ac148cc
Date: Sun, 07 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780850073
