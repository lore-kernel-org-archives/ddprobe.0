Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAB52FE59A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769187234; cv=none; b=FEy3jd6zSOXfIkY8JaHd1Xp6Jy+yuoRnCngh4Uf0kNow9m7kr71hYOB11GtaqxQCYfuxCAiBx/Ge3qTZ3t9fTPop/GWU+j4YHC9V+jgIZll+UQGeFK8lTdamHINMIrrU1NdP6XbkjML73or6Ueg/VDO4HUtzfkjc1t3JANV9fF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769187234; c=relaxed/simple;
	bh=aszHDZfo9/LBT29QuD3JdMUCro1kiE9vYa6Olu2YAM0=;
	h=To:Subject:From:Message-Id:Date; b=QIbY4dVk+9v5GdKJ4DRBWcwPKNllHW7cy34Bm+caYImeLYm7rKzvfKPYDxIRoMm0gf9jWGzz8mzFZd3LV5SmNGpSK4XIk0sb7ZLSfqw8+Dej6YtFuMYyL8TeP85YckvxHS9lTlqlgCDfflSJ7LmYb68+1ezUbkFHSCTpvwPSSi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ8hFAAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ8hFAAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A481EC19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769187233;
	bh=aszHDZfo9/LBT29QuD3JdMUCro1kiE9vYa6Olu2YAM0=;
	h=To:Subject:From:Date:From;
	b=SQ8hFAAJfxBfhA0BJXTMP4UMSg+7hL64sSYTGg+wRp9bvLXenRvWAggLfRLg1HEFf
	 CEzOpdPdcqBmgpnVJO9QkvdQwervjjt0CBpr22eGSmWECuZQzLk5cflIuPIXDPt7eN
	 Mhn/ysO+lJntERdTXnqnaqK+c+WzqgXHxt4sR6xVXbilie1oMyla7mKVe1YRUbHb9s
	 zBjWJOzUNcU/Hxr3xDCm7vUSJsUOBCDiPggrWAnG1yCNHLiW9QbOYue12og7HM6kZ4
	 qxcy+JcWLEavqUziEiTLevSQGM3zpN/etw/WWsenO4yI7MR0IZf1nqgt5kV7y4I+2/
	 /T5GX7aHr9CpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C02D77880
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918723358.19059.16809991111819438839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a9e17b6373b02fafc2d3ddf5465b0be0467ac1ba065a1528bc6c56997f8b38
Date: Fri, 23 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769187233
