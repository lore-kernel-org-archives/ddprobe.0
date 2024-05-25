Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631D6BE6F
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716624863; cv=none; b=erMyHsNotrG2bq954SOKjXRN4VTZ+sxC8KHe/KlyI0ObPHm1RFJRn/csfYDRb+DGIzY84OKtXm3XfwMmunPF/9ez5645UjxBKWuT0ezALvnVnPENS8n4fUtZ1TTTLlEDIBdKVFA6sT3mFCIr+qwl3vGRSznCjun37+mhmwPSSig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716624863; c=relaxed/simple;
	bh=GHWvV2veGStcd1NXvDbmnyVUDDUW09iSMYbSupeOoP8=;
	h=To:Subject:From:Message-Id:Date; b=WBoe8pmpj4rXfWdZ3we45u1GuyeuT/EJ+bX3aqO5Z0BdzpOa9bAGq3nm5bmYKSioPLsNy68fw2528lbhc0MZNBAddApBaAWvvspI43DW9w0HLhdT7grXH+ZW9RJa4ATDa+gOdlO3OCWwXqruI+amUR+qt5wKlHkThsyyia619f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojf0OGzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojf0OGzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C47C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716624862;
	bh=GHWvV2veGStcd1NXvDbmnyVUDDUW09iSMYbSupeOoP8=;
	h=To:Subject:From:Date:From;
	b=ojf0OGzhJaKZEQMPl0Qnp59oq8sqWZXwTWbvkqqKDUkTftlx5jXNKkXU6aQjJ30x5
	 7ZylW33lNzCvnPVuMAMEF3Z7L29xqgiCgxuH7iUj1XWYHormzaVxj1hSSmT+WuEXbZ
	 PZ8QGppBTm/FNEslMl3w+rFCwSm2iMSokriZbxPIShfaoOxp8YNoIJlF0y+NEcrG+N
	 /+icY14zXGg53nwFZ60Au1jimRJJx/i91+HTSfn/YZKjPoX1Xiy0MYLwZWSvkHlSOd
	 QpQGm/eWjn5zh4Y/yJFQifYulUa/W23uzsuO3eqerxY97A8egR2O1tdhxGlBU8Hv3I
	 6PvbIOUCDz0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8319C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662486279.19408.2274275700640217883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649f381531d7922c63789db9ec12bcd07bd75dee3417d16e7a93eb68e2e5309e
Date: Sat, 25 May 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716624862
