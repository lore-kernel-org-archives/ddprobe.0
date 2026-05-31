Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3F2F3C07
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780266874; cv=none; b=TTfgDJvAcdYBFasRRnv/N1rIxi3FRUcBAFyuw9m8J34cgqsLE/cDOCxkHKWZGnAzJV+Ft+xSPmZRBPhqo2l0E2ReSE2Who5DwajBww0hMTR3nZb/Zl1pZiJAVOhtLRP8FAlEoaM70gJpX1JumFpXltFgSxybSLJouB/z7Sh/ef4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780266874; c=relaxed/simple;
	bh=JWrmz8RkwEJVgXWPONiAX1VBi4FxGAgSFxJoGkvXOsg=;
	h=To:Subject:From:Message-Id:Date; b=bsrYXOD1w+CxSI8v1dWCTcWDzbP90HKM5cytVl6nOA1kLdSe2qaJSGPdwX2dvspiPsmutVq9doYEthrSOJKJgK+CUdG3ZBmoZRvsNTuwSrkL0Z4r51O5UQSo9/gh9zx0XMTG3wv2phU2cdJofQtbP1YKo1XBM1Bj0OvM/UO754Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aARPRM78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aARPRM78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67F8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780266873;
	bh=JWrmz8RkwEJVgXWPONiAX1VBi4FxGAgSFxJoGkvXOsg=;
	h=To:Subject:From:Date:From;
	b=aARPRM78QmoHRAeAN2Y2AufHmFNlfUUvzOY0R8eUdL/Ui5CG7ecxpMGCbwwlO49aQ
	 YrmeS8Q5PO63wIh+fbT+l1ErWZWLP/u/MlkUV2N+zL8FO9YsT2IwJKnr6HbOIdsHAG
	 IzNBGtKPyyN33OPf5BOkfvnIVDvQGpzemVCC5YzhUjfSuKylgxa8ED85Zp1PYxiWFI
	 kSMFY+gGJYXTif5KFccKC0kQ5pBLyls8zIgAou2iP9GZufS7Adcv9ERHz+t0o9R2LT
	 GtFnaxHk8WTyutOqcdo5vzrawcnN7rlx4KTkfADt75iZ2xmbx6hBBt0OpL1g8XhKgV
	 qbrnt7Xx5udpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1EDCD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026687369.11472.12431678175332932072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982569bc04510cc1e0c324892c98a88dc44276caa82af20c3e397d75ec0706c1
Date: Sun, 31 May 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780266873
