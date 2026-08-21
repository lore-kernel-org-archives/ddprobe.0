Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FFA22A817
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787284234; cv=none; b=qKsAut5XQbMhHvSKEUpqCT8piJIa+GCpCZRaiBlWc7N8UMfZE7uWLePbx6haaAqQCrjGWOEydP7H/gWCFWrX085NBZ2B2s0ZtH2/6Wp5BB9Z/31AbJvHsaI9YcxApu3NPcpNnAnNfNepcH/b2iOlIG0E8QaKFKtJvuPcXmuVEEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787284234; c=relaxed/simple;
	bh=CL3dhbr6OyEOb6ous4fbILKrtifEJl+6RqDmxcg8iqc=;
	h=To:Subject:From:Message-Id:Date; b=cByNBJY85L2waQI1GUawI/Lb3nqMQS0oja96P/xjeX+6iySVXHmAN6kODngS6WUUa4pG/lWc/GxGOn+wbzt+FN+myoo8t10eQ+FeDP9abL09NFSM2WRWq7Oi4QMPM2OVYCBLX/Ks5GLduH22lPCuG3Mil2ubPkuZmXm0odI90PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJFrZ0Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJFrZ0Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72BAC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787284233;
	bh=CL3dhbr6OyEOb6ous4fbILKrtifEJl+6RqDmxcg8iqc=;
	h=To:Subject:From:Date:From;
	b=jJFrZ0Hwd2/PMYs2xbMBtFRifA3Pfa/mYThTzTCAZ+mPLy5xz++iKR85Fv6Fjm41q
	 OJ1XuvrauvUCdsodZaDKpPzO66dgNZnI4wvM5ji8BtslYtplxF1vqEY2pWaCxTdwBA
	 drQ8ZMHfjeNdDtPprMkYxU4g2mUv8KnFpdRn1Wd6DY/67PlIqxpWTPv3+vN0+gv8vo
	 San1P8AZ5XGNEMrDoWTmXjDaTlTgFlC0u8HB0MzoW2IDQq549tXQAiaTjzxzQVcb/s
	 CTxHeafPnGgDyHun+W6HvGPBYVWKS6RhVaS0EW5NdcoyrzD+kyxpQWchPZl+9motMa
	 LnCIcH2QKcaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE207C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728423373.13807.14176409305000925364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326240d487293005f344dfcb57a2e6746102b6e64e32297cb4928bf1d30e3d6c
Date: Fri, 21 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787284233
