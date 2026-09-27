Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE30221D89
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790480434; cv=none; b=d0i4ChCFmQevAn24hAo1JV1KyrFKcgOfLFlkhDMd9pwJUjWSEeK3NiecBqJ2EcvzI1sNZjoxeo124NKcneIeW06li6Cxq/FPwScZfIc568+88V2pIJXdUmj55c3gXEeUcEWhOHbLHyFhvTtSyM3RM8c+l6YqkP8uRQau8/J2AFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790480434; c=relaxed/simple;
	bh=FCyo678c4+HFklzMsADoA7XtbvIT0rp55A4U49QKBEA=;
	h=To:Subject:From:Message-Id:Date; b=pP1FmDJEnNbwV7RFd25vUi8jvMdoKez6l87peKbFEp0aYutuQFTErdW00tVoI1HHf7vu0SqLR6dc5BxKgbP7nOmN/+xn+I9W1mGHzMsG+yk9pUof2xfAZRBJ9aUV8W2bTa+clNGcDC3+Bvco6/iwlZf5q/Ygo7CMF6W8Mk+FYEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eo47z1u8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eo47z1u8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90BEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790480433;
	bh=FCyo678c4+HFklzMsADoA7XtbvIT0rp55A4U49QKBEA=;
	h=To:Subject:From:Date:From;
	b=eo47z1u8qJnLUVtg4gFIfBcUMSjpoQccNUyaTPOjmdfzLTVY/VTWvSGF85UZQWfns
	 6A0NW7yppaHBBT9Wh5Im9eu/hBoEi6GX+29sCcCcvKQoiLWjot4x+8qsOMJ9aBnLDq
	 bM20MRTYFlwNMq/OoVywEvN3jHuy/mIEhPKjzRXW+R6y7DoAInit7p40lKGinRFflN
	 RSH4Aex0b3TFi85nr4E9O+16LYruOUC7/4kAgAh7YsWPK2trD0Ky3xpFr2daXqpewS
	 qqi6ZbEnOcrdrBSFe7SwX0N+NoaMQLW1ZPtj4V+uaVd4oieemevS6GmXWtJ46FbWT0
	 apreWiNtCZw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE235C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048043369.28304.17017335923642766943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2b56cf600b34efb711312845e62ee8265d7bad80ede954f3a2ad4de80cc699
Date: Sun, 27 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790480433
