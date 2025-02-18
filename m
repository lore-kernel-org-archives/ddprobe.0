Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D381E
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739853534; cv=none; b=aTEpV+pD+6ZpxrjenK8anMyAtUF6i1dyd13fT2WZ2wMuSu4fym1nEryC/Ma7/+lOnnWnK4lqkAoKTK8t0wk7oSvuqgwOZBoTeTNbyV9yWVhwe3Twnu01/PKMt0/sFWf7oeKEBWGfLLZ44/5WhGuQCvY4teIvsK9kH1yH61/PUPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739853534; c=relaxed/simple;
	bh=1lnwvF8QNLzeqN6tGISCLgokLMODWx6kf2n5hSg9Qdg=;
	h=To:Subject:From:Message-Id:Date; b=SXqrQq+b8xH9ogA2greZm3S7dc2L+NA/qItXNXdXwkFnohLyALRNmG2pPOqlnazMgn1bq3a6p3F1FiTtuhKzdqU0gDa9+iF8Bap8E6JUD4VYsmVMjpimq3jNRDrK8L2JZXRl2ruf+zHjfsfNVqEIaoGuToOyFS3YtVf++ChMvp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMKgfdnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMKgfdnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05F8C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739853533;
	bh=1lnwvF8QNLzeqN6tGISCLgokLMODWx6kf2n5hSg9Qdg=;
	h=To:Subject:From:Date:From;
	b=hMKgfdnpm8BoiPCP4cFv75GGZf82XsKap0TEGNg+MquJK0BZMJgl51qis5PlL6TEw
	 b0V3co/GHe23rAsto2H4C5kTfOCXmcFx71ZOfMUmrack1FFFZjs2s5ig3b7OUahIck
	 sCYX+HJLb0lL+3vBLa59zNSLcvtjoEODFizbau12R4srQnWij3XiSzCH+DHOd5Jk+H
	 udIkR2wRp8D4obDeBYYPZMslQsrlfsgCtPBCxs8frdkU3uOEkguxesx+90fj1R8C8W
	 xW+/U0U6YgXVQVIDb39fXr7Cxk0XnmYPaXaotwJFN1KIsPHIlwLBoANf3oyXXteTOO
	 74R3qxUwmEDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA28C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173985353363.23532.14970515527550483973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1267224e1d840f4d31df1c40903ec6f6014500c02fa917d9733d43580e7ffe89
Date: Tue, 18 Feb 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739853533
