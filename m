Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227EB13B284
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766018034; cv=none; b=kvZGKQf8BMqLG/xSMDf++BHmQH5sAOnDAAUg3tln9ehICjzkfVcdKv4p2PgR3jnZOfd8AQdweT+ZushFk51aFoGmdJzHn4+v/dQRR/gQLNQ4wEr5SYwHOPl1IVOm0gwDsYS5adYyFlwYYDpNnA2VwERIqAfCeed+J98tfuGeubo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766018034; c=relaxed/simple;
	bh=8XmEDFPDQcsNT/FRAuZdLUk3mEQEWhV0T7/Xy58MNMg=;
	h=To:Subject:From:Message-Id:Date; b=nIxbvlX7D7mPNUW+P0SBUTVOgkxWXFgkbxiqct/cmvr9eDoSEGsm5zN0SoWVG0xh5B/O7KcwE1+QCvlCGFNvxtuNWIArKzlR6KlEWsXhcqFL9s8Voo+v6CZTe660tep2YdVOUr2iEDT1M/FNF3VHSm6/89wc9B9oAnhW0BAq7/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpdC+z34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpdC+z34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8908C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766018033;
	bh=8XmEDFPDQcsNT/FRAuZdLUk3mEQEWhV0T7/Xy58MNMg=;
	h=To:Subject:From:Date:From;
	b=LpdC+z34GXdYIYGEMowmCynXrTwbqjID1q9Csu3nTgHYKvGdKLKbh05BTzD2GtCYe
	 fxgRyiJaphL/3RKS7+Mb1kcJCuNlIRwfTBJ8NLwDpzwupyiY03gdB/BjC1ksNZu+7u
	 bGfsSn5rPqsqCWub+MIEq5O2i+sgxQlj1P6R+ZrHAPvmcS8nQZgE17m16Bll9HQ2RG
	 67LJQ0xUqPnuImrRSarYrP29YevqYdakXg32H98Kh0EeD2dnGVpQGdpZO6dKSHXyh4
	 jqiWBwAsYn/7SrulUyK92n4Duipkar0XDT5LHOSVPv9f6dSJBuDovH0NAYPGjzytU0
	 GIcdXm0TRX88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96799D65C7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601803358.26113.4757205323139370835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3a9fc7e559bfdd4757dbfa46bb8841f0c1b08c673b69112e428fe5cd9a088c
Date: Thu, 18 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766018033
