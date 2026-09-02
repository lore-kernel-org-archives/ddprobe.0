Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912C94AA41F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788381635; cv=none; b=mxZ0pNRrPKfbbulg7cB9mc3mZL5U+Z1JlOUh5ce7HtDDMeSEpkvKIRrCX1zquboimbC68fO13Kn/BJyia+8ICeGFtdyaJHGRNCP7aQK4RVtNdsW+dAtGFRH0Z0/S4gDBa4K+LR9eKm+TDBtLjfS7PXsHeZCsKYY3Q1MWUu/kb/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788381635; c=relaxed/simple;
	bh=ofZfV03HWDvP3eeexxieOgNbg+ZvecAlvHwT2ahIw4s=;
	h=To:Subject:From:Message-Id:Date; b=pC7KgeE4RCHxAC8LX1wIFHZ0OkkaBibfJq7xm69gVmwD8bCWv/6rrDRHOp1FEGEcpEqVqdQAOG77ThVtV7dILLJp0tPWG62fglN0mU6QicOKBgOn/Yt3cimrFO0YtmclOb+b9RH9LQ5DflXoR9/nUucmkYOqSQ65Qg5eTRFTJEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2CXO+Y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2CXO+Y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DCFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788381633;
	bh=ofZfV03HWDvP3eeexxieOgNbg+ZvecAlvHwT2ahIw4s=;
	h=To:Subject:From:Date:From;
	b=d2CXO+Y/WNmCokM4A3Xx+DY8ObmHjGCLPCKMVloblkNBGjM2JZ8Nvzu0dZJb2C0hj
	 qyBStTSeNjIKTGpxYCzbsPo7RX+ERjC/7TWRzuXp2NlhkmU37JYEPaNPxju6jOQDj8
	 QaKQ/sv3/AHTbdlumCgHm/osIfj4d/IabNoP0XaBpuh9rH7H0x86okvzHM1vhDUcZq
	 y8AcN+NHx+zsfdZOPhgt2i5ALOHU1UwOV8c+HKahvX1GO5XSnv1w2cHgSvSdQD0eQc
	 WqAecIGl9Vusk4sCpieKJ9OJkg1rwWrH1ozjHjgjODDJDpQ+BPrSTo+tCPa52WrrZK
	 rbVrIjCBBbtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F52C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838163369.16426.13170495915346786591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767904c297eb11b44b11915349e2934fae048290c4f0f6eef71dddc3dd71b51d
Date: Wed, 02 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788381633
