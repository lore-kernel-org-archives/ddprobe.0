Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD1F2222D3
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744876794; cv=none; b=qHUTmD3iVrSwVtvt5iSMCgfmHRCSSaCefpGxsHD47qCeMwaoGhBTxxApUDcgRsrPbpmpftaWhKH6hrv26E/OPJUUS1aY3LPoBkPgLrebN4v+3RU6QiVg6EmyQPWYjOaa/qnhue5bDvqyD3zssOmzIGWlBLb7JjxKOkZ/YSw239E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744876794; c=relaxed/simple;
	bh=aAiXFLm6nEqnK247DqJ+JywssKIxz2uClult65IHSak=;
	h=To:Subject:From:Message-Id:Date; b=oNRjRtdSYlyGzGr5T1mWKlO03n2LY3sKMDetpRJ15wZketvrbpHBoNNFsJ9a7wvyR6kjQU1zhMvRlob3nvNoJRobxUuVkj3t2YS5T/llQ5e7hKFj8bpcWtpSNn+40bJWK8DKAmra5nBsGJCJYIVSPL7Te0+ytV4APXOxKwdSO3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXpoJzfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXpoJzfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744876793;
	bh=aAiXFLm6nEqnK247DqJ+JywssKIxz2uClult65IHSak=;
	h=To:Subject:From:Date:From;
	b=mXpoJzfdj0cuoQPNZNkqFVoBNJ0pZ1W+9AcdDynatP+eirUKcav7hCtto7wn6p3IV
	 arC1Q+U/pvMxdTlFR2HwwleTbrxO/jOqDzWdSW/Sv6RnCLVP3aue4U0DoQ1I9q7u8e
	 jv12Vzeq6aPq2+NHCb20lq1/iX71wZqyceMWSGGMJyl5N6/k12Z0MXl+bS+dNpCDOo
	 iwcc5FMGbutNKpIU/eK0sf5/T4gtcv9uyvz7vEcvm2a2JJ0Yyx+tmLMUkg/ErkUxtZ
	 0Y9RuYqcCQd5AAm6kkRK+RWFC+7uu7XhrvSEXwLOyv3AZBwTjXhyvwiuM3+NnGX7E3
	 MXuhihAxc1p6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161EC369C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487679358.20045.5806566043128905777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2da68a0b4feaa1d20b05188f81cd714e1491dd036319ad79e67bdc8e0612e12
Date: Thu, 17 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744876793
