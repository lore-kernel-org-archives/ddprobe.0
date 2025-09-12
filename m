Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9381D6AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757686194; cv=none; b=FR5F2YYEnCxl/p1Uty3ZFxHIIkaJ2ZY0rO95QZAHtuj48AdhARYZajX3ZOlMAFDB1zuec4i+8SUaM+ezX/WRFElK8xIAwgSKanvbQS1mUpPNMsC1Ph/Pn0BaSNWc1xCVbzb0Ku7tZ7sFaLFXUNlSnyMFdOOUsVkjM00aan4ydxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757686194; c=relaxed/simple;
	bh=BNQD7YlluAMEqNCuCZNCJp/FewS7qayXrwOwlXFYG5I=;
	h=To:Subject:From:Message-Id:Date; b=pkeEnpylZKzmgEj+mjjE0WvtofEWB64qcFInt5jBId3MbYdqZC2lXgd5Izl8IWLCcizxcPDJLLkx57YNBB5Dn7Ycubxe4i/DZMFTknq3RGeCPCNpMMcGv2dXN8F2kNABGn+PauJRlceYe6wkDO1DrJtMuU4BoRGQjAVyLkoxMoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9h6tIXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9h6tIXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB4C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757686193;
	bh=BNQD7YlluAMEqNCuCZNCJp/FewS7qayXrwOwlXFYG5I=;
	h=To:Subject:From:Date:From;
	b=e9h6tIXvbLkXKaT4YvLTAn+58iOZDYrzNriB/ew6kCvkhHhBRoMoBb0OXuTjTbRez
	 wrFozjaMajIkH4fmcdkrBjGmrIB3jZa6L0mGAQGF422FE3nvQgWoOVG2Xn0wsM66pL
	 /KYWfBA9zvA5a1k+5OuGVivBV4/THG1/JC329t3q8CKd1C4/XvD8ASearRfpidHr9c
	 BoR4nPhnoZli71ekv4CTLSMSU5wvYbMD+TRGs/B1uogwJs4GbjGiHHFXcGuXJ66vte
	 jw0lU76NBXxZ48bYZPTrm4dB3YKpaihtrD58u0ecgQBSkeg38/Q5gkrlnYVl3OKyuR
	 KANUkCvDLarvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DCCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768619357.30944.18324065426489468864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b0c6901696f4b47752910960bca51b8bc901afebb25e4b431bf79dbc1f6f59
Date: Fri, 12 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757686193
