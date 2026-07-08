Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD7D1F03DE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783487314; cv=none; b=XgW3HewYTU0DyET6/oRfaT6gnxvPagD2njzvBNVG7L/dtuDDuhldwXeri2n0kw9WBtS3s51hdXfyMME95eZWmjJXPsaFPyXV/SowyqFAgSoTLxrATDMmU+4qJT3fk3xKwJdaXwX75qv7WMsp2JNxc25ARnTbQHD06ybyBRHWros=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783487314; c=relaxed/simple;
	bh=c+Q3xyhnA9ulLgdvtMGKMpMY1hu7I/A7/QQIvxjiWeE=;
	h=To:Subject:From:Message-Id:Date; b=uCOr8R510YCfwrT5U4ECyh5zqjBl8pLzPVorH43NpsO023juihXMf5f66ky6UNHmlukFVjfpRUKYsDD2xBcz04xHCYh+RT4hJUKFvL/iYGmCYntMfKgjgZixv44mMIyO8XsU8vznrGcCGr5j4NZBXChnUEnGwM5OpeI5wat4li4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIz9ep/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIz9ep/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE93DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783487313;
	bh=c+Q3xyhnA9ulLgdvtMGKMpMY1hu7I/A7/QQIvxjiWeE=;
	h=To:Subject:From:Date:From;
	b=KIz9ep/Qq4vNVMAmVv4ycO35e1mWScQUGgV0n9uvbURscE8CKEm0wZXCtEmPSHgzM
	 xrEx0IjNMsQLnX6xDWpU4GmTs0OItAldwuOo++kSUuHo0J6Fd20Yal8XEk6sZIV+aw
	 ERlgdxpXrSl4o96jM8p/23q7guytIl5O9obt+9zaYdjZF8tVFpQTC7x8QtxfMNrkxt
	 NFPFHiEOZF6ABzQmN7EkzWT6TlL3jmviMr1zFjKHxfPGiLIC+3rbLL2HabtkdA2rJc
	 gsuwTZwCsIVf1WiGbGZNCGM1XRKM2OGmX8vVi4StDevQ8eEmWHPqh9LUnV/conWOO4
	 r3ptMN+bo4JVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA99C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348731368.2797.4849194304509191943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef64ac52d2e9d791caaac79b8cbd7828182f5fbcfbacfc57830c584da61a8c3f
Date: Wed, 08 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783487313
