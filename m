Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255AE134B6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721712954; cv=none; b=PQxkcoAF7zSrLTohF2R0sOZrxsFd4yKB1GZK/U2uskKXevRfYeDYRxam7rVc7cqdAksBDl5fMx69dh61T39/IkTkEtW1LPeVLT6r1PXWONdDNyEocVgP99YS8tKhT0tAXq9KN1NmpE8sczN7y3x2sDC5mFqAxcb5hnevw35TfVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721712954; c=relaxed/simple;
	bh=CZmcNX1EvVEOV5FM3o4lKW7PReYUEXiouK+HFIEFKYU=;
	h=To:Subject:From:Message-Id:Date; b=LZfYqNqKCc+zuYaiEcc4U6U0JBQyHV6bmgkOiHKbO0pWmlesZCBkmcgiKEZnQFrrPq6Zu/HwMGJnlkUu8p0Qp88ot6BnKVheUku9hxHH7WdTzYvZGSiaCCG1JaWDtP7/YNCfXnM8Qp/wL8497Aw7iTF/FfdYaCAysRtP4Dbujec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwF98Vvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwF98Vvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB020C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721712953;
	bh=CZmcNX1EvVEOV5FM3o4lKW7PReYUEXiouK+HFIEFKYU=;
	h=To:Subject:From:Date:From;
	b=MwF98VvsVSZ8uZnyDrfoO6MOwMrE9meeOmshFEN9rUn18kx76BruG21fUyXziGvID
	 BJDviYaYLkWI9gBdJtlvDfL/RueQ2WWDJKO90ij/wlfrXcDZZsr/SIWKMkpJAPETlZ
	 szJNpX3R369I+W/Z1F8t9txfrExwDvzEzm2Lnethsxgs5VCr5yZuOg735RDPaHpM4L
	 61Cwdvy778ojkLdfPGGxkj6T8BotUVxkwtiUDmtYlirYq5vkRSIvfuSheoye3lXlcc
	 do64jWzSF9l8caeDTHq0VwI024cp+Q34aAZq3CrpU2Fcrtkz9p3ZL592d3DpQUWH3K
	 0uoCtW8UwNjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F9FC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172171295359.2994.10844625013018143900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868d3825844b7fc5b5238ee483bea32635a7cbb9d4554cd5008fae58a514d3f9
Date: Tue, 23 Jul 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721712953
