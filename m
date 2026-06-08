Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D431F991
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780935874; cv=none; b=WfaH7nE2dP/MgorvjMwbA0wIUdlvYrmkE5b0PQJpzqkh99z/a/teOxocv+jcU+Yx9xnN6g1WtzMgIzwSy8JUMBZ+KolE3211pWT3Xvyw9hoa6zZ8vjNyHzz7yKNrSnw8GxlqGJ99cTyNJv0pVoIzLW3DbQWFHQTNu8e8+WfVXYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780935874; c=relaxed/simple;
	bh=hZ0FOAGOJ2d+BY59CBF4DVXWlsOgOcUI4jEKx/S5dsk=;
	h=To:Subject:From:Message-Id:Date; b=PzltBt92PbB6DrXYubq6HJOjDb7YPb4C8wddsDXcRCMeam920l1w9Ey+M9IEErhpaBQ9//P5WlRrd108hNcQWQswX69yyyLkHozG7kYmK9KtrQqGwvdafpcNHRhSRmfj26hArafsC6hY7lTp2tvKPOdqh8DyUiTqkoYfV4Rvulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/Pcu+qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/Pcu+qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA398C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780935873;
	bh=hZ0FOAGOJ2d+BY59CBF4DVXWlsOgOcUI4jEKx/S5dsk=;
	h=To:Subject:From:Date:From;
	b=X/Pcu+qTJYPCIkykMobusBs+5o67DDHm83PzYOV5inom3/6cXo0NsQqkP0N8XiCgB
	 vHjSuUSA5FSwbeeZxKsJxQI1Gh38HvoDdJxf/wGJYegVDlP6TyCArCJ0zk2kLSsxu4
	 Xyh3pxCd0U73HLycubWUshVBJelOvPvRppKtFIdO4KYrMi5Hu7kS7gBRagRIYR2sSe
	 Ul/Fg946d8rzm8kQ83DK6RB1NUP4G4OUgAX2+Fgk5zz/s3k53Gu2WzPGkXOCW5EErW
	 UxCuSLbCPCdtohLaV95Sl4TviRT2YkUkDtmLHAmM+nSnXsdBwFjMGj6fhzUltTWNz8
	 3ADvvGXIWurUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8C1CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093587370.31326.11136628150461318807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fed4e1f2b378e5092b08f021f11cc4358a918c2e633b5d471df435bf00ba256
Date: Mon, 08 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780935873
