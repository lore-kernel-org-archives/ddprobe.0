Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564853BBA01
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785901234; cv=none; b=dHpbvxSIqIYmTHtTlTzBZd7COqX9ybfs61XcQaVyc45BxuI9cpHXFAYerh4csdtGISEP/i3dKxxkeDYJiV+ILoN/EyF+Vtoi3h9iKiupCPVnqJ4NKy0wZwDn+E+xghvWRxMprDrB3ScG7bAdBzW04g2k7gU2ngT3pD3jMeOL7sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785901234; c=relaxed/simple;
	bh=HnhAftxByOJdVWaHh5l8UgUppcBqrcFxQc/9KQO+s6o=;
	h=To:Subject:From:Message-Id:Date; b=rGiAQKH2yVZ3SdwBIIMxY6gT2uYYSTUEJHSJZSXYpVz05e31QJD8M+82enJ5oqSQmOJX6jCnbr+ZFjNSLS9HupApqVCULfuXcle0QWHoI8/5jy/x3GcmSD2X46LNM3iVWNnCn5X6YV8taUTeoAiwV/611ISSoRUH5LsVH4zLtYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUO59Y6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUO59Y6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73AEC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785901233;
	bh=HnhAftxByOJdVWaHh5l8UgUppcBqrcFxQc/9KQO+s6o=;
	h=To:Subject:From:Date:From;
	b=oUO59Y6vpmPbQNmClowcJDZaSDV8PqHP1kDpEfHWGyQ7RB4+R/XRzi8Cz/SDVwFtT
	 K/cveaojZBQnb3VdQaFHpPTTu9IkXcLwM61w84YoZuhrz4vzAswWh1uRTiRCgwfBdK
	 MQ6TcDaoYk9d7f3kQlb5Zop7jLpkxWRY4XyYI8mfWHWngJi56TryTgSEgRVNHkqcPu
	 NELAKPzGzqsVOpe/rnPgjdUN27bII7bleflEdALCbeWKwhfNc/CZFX6y0zPXaAdRmv
	 hyHbWBAuvaDZb3IvRqUSF4eV73W9dUDv39PNjNzNqL46HxiZbwH+nQnKodHLkD3chZ
	 zGRD9ndG3cIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DE5C55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590123370.31316.15266320494460087097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048a52f4f0cb0010c3d30d41622bb668a3af763417d4e73da24e76edb97bce49
Date: Wed, 05 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785901233
