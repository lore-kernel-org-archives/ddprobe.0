Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111F2228CA3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750719594; cv=none; b=cWNSz24YQzPZOq22vrEl/LjJjl2j/FTSufgLV0k01tdUOz3iWZkg9rUfByEldxkA5SQYSBRKp4xels95R4lVZ/yuCZsQUHBdwxKzwwgJRq3dydl4BKthiTCr6NhdCf7yVs77VURpqW4R2rpA5MkqYPxLt9vuq6kiL094eh3vxEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750719594; c=relaxed/simple;
	bh=HPt//drffcRkWhLBlqG+N+lMNXPB2fW7/0+zfxZYsF4=;
	h=To:Subject:From:Message-Id:Date; b=E3YmPvtUMARd7d0fWKL3P90w8ud5zPgBr00Qs9z4Y5PYtG7G682/o4ySPUQzmZ89TVwj3MSLPsSDKcozONCmFW4oXg2IYHpLUIibHwwGn+mrJnc2B/hObd0Wqe/XDmIf3Fpy7LExeeSaor1FHPjy5sHLfB9+zuc89BaeOcqSjZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDLqsusa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDLqsusa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A473EC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750719593;
	bh=HPt//drffcRkWhLBlqG+N+lMNXPB2fW7/0+zfxZYsF4=;
	h=To:Subject:From:Date:From;
	b=fDLqsusa3av7N2JV1V4bctA9pr0Pw+4yWO74uOIN4gBvffo1HmjKI094EGMh1QXq6
	 5sQpm2Ygcw8E/z7/MQ3I9f7+WcatTvQD0qRgb1E4DifLWB/BdlDhk2Go/3LlCnG65v
	 2VslOUf1p9q2k93Z/dJ74Gqf6wW6CXxBVQwcuq1Is0lGqpdDLdUPS5qQZNyP5m/qtZ
	 inUfw3WkwGm3ePyLKc912Z8+Aq40quX6H2FERIJHniRhoemgbsXbXt+tEu0Mx53ouI
	 +4TWTRRo/WMGxBFIHuVGlZucTA0KKfuG+b9IYD2ajNf/YBjrY1G7LNJ9aYQcLWhXkw
	 GRA5LVBf682yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC1C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071959357.16117.11448926586228810477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5547d59c37fa5c7e9a561c8c808a841f8871351e132891add23c6f651a845dcf
Date: Mon, 23 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750719593
