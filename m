Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1DA140E5F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779066634; cv=none; b=ifJdb0jlJ7v0SMDH+RO52XfDntyq8Srf65/560DBZEEEyYNzocxC2vWz3vEOSeWvhUHyTv9PNvOfwSwSithLynxYVHsNreeSMqSWQpJ+i9bgTNkHEVhc0DgEZQoLVrrUkp6zVjjovncGNmw2vkOACxhUgfnILLawfkc3X64h6DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779066634; c=relaxed/simple;
	bh=7a8jMSHPdTPJ1fbjMsIpuWA99niiKz2CwGobwDj0Oqo=;
	h=To:Subject:From:Message-Id:Date; b=cyGSIOaTTvjCiAEsYNfbrLKfgJzm/kLYvlGQMsWBT4TRmbpIn0J9cPCTknstI3Bd/zPHTZZfQ1nw50CfuACrpiBy8fdaXDrDmf8bQ7ydNfdgYX/DRHVSEd4S/POA/AMf5xKfi5GU+dqjFWCyqekAFiRWpQj6iE+/kI6g9EYHtRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeohV6qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeohV6qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB215C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779066633;
	bh=7a8jMSHPdTPJ1fbjMsIpuWA99niiKz2CwGobwDj0Oqo=;
	h=To:Subject:From:Date:From;
	b=PeohV6qzp5fInRrdaez4ZJ2WZpQYg9aPeSAh+72cr48PBi3LyuwVFJ/mVMnFniHJy
	 lIC9KY1315jATzfhJyhw2bAXtw9z1DX5uNei9C6eU0PEBaYDKVYX6SFMr0h42C+YVI
	 yTA4ony3f9/ski8rSDIIQDStLqJxGzDN52E34taTQn/ucJcfIEVUzG4eUrfEgyVglA
	 EHI6cRYvseRhvrhtBpDzoA3i+EzwEtxZimGyZpl6Q9Ev0xVbKrRYYuQDX3DPjuLe2D
	 DiO+svI9xBc3b8dsUEboHZqrc3zGxlulWJQTorC9sQwbPQTaFgRzb66iZ+8b1v2sZr
	 sluakoqVTG9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD26CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906663369.6060.16736824881457594334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae1e222647da50773c96c8e1ed30fbcfb7afafe543de855d1328839cd7365bf
Date: Mon, 18 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779066633
