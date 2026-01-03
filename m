Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCCB29408
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767419634; cv=none; b=Vaj66ocymf5j3utIqTr7V/NO46V9mLyUMBd+FZQZxYvNFqjDHSo3gKGa1M8MoIUVZEP4tMn64C1Z1O4/UaK+IAEuQUDC5rK9VuaSwEV14FciQnEQk49oFB8PDkJUNHi5w7cbKWaaiu76JnUBs/NQaQb3OXZTh28pI4OWQTBGFGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767419634; c=relaxed/simple;
	bh=doatO0w7HB7OaCCGFxtsVWn/WQwITAEGyWodRgc4E/g=;
	h=To:Subject:From:Message-Id:Date; b=eyS+LszL87m6qbtO3ZH1wMfff50OKT/h+mqJMe8eAW/AIOBDYU4YPy3bUA3GjzPUOfZyXicJGDKNjN8Gm38EiVHMlap7fTS1y+cRqv2Nie7yuGygwwY2TJYr2hRekQ43YV2iOsbe2ho8fwfsPDkWccsInsx44VCV1eJ8FVIQIyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc5nshyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc5nshyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C7AC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767419633;
	bh=doatO0w7HB7OaCCGFxtsVWn/WQwITAEGyWodRgc4E/g=;
	h=To:Subject:From:Date:From;
	b=Oc5nshyjMgpOUXbGg6zrd8pbiudGZmtPkHZIzOs5ivlTFnqnm6+wktn0DRgoR+8OK
	 vOrvUgtoKipU4rNG9jCNWYnSber3oXir9Dsw8ZvI5lSXWVWkXthYYjTYvJx0t/pCGq
	 6kSisK1sekBbhB3UHX8ycSY6IwhUu7bONurvADpoDAQqz771t3Qhl4vnSewTiDkBwn
	 qGbimT1JBN3UHyACOo00n4jaDgnfuquOoSLtY+XL10W45F4885jhlpFgg7TluVOqFS
	 CUR/dTDUUVhaf3pFn9B6BQLVw1cVICUmJ9vXE3lc34DENcqJqyKTBrOg0IufB6B3uP
	 T5lM/de6lk+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529EFC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741963360.14994.14361869823837016615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4792d9489c9a02d279b6fb416886128babb35d13a74f7b677b924a13dc351b39
Date: Sat, 03 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767419633
