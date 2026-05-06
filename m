Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8530B50C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778096254; cv=none; b=bAGRNr5dSWCdVvTC4nHmJZb9jmynLvMxsGhd5/gInQkMLzmiaYk0sDV1U+CoQCC5FAwWJCLtZcQZhjGHaBz2T4TXPRAyUM0Coflzq/1cCY96AwpOuotznXu3PUuOGAso/VK48DfmUMy9MKq67xSEyJQV+r+peCnvOYrN2U8OsS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778096254; c=relaxed/simple;
	bh=LGoSZ2gafH7JfOj3q9/PgommUwZmeeh8C+dfNJuTr9Q=;
	h=To:Subject:From:Message-Id:Date; b=UCjea1NLb83jhIuDx+hrIgE7MJK857/LMCKOL0tGl6vvJPnw82DmTcyVQKJb8jH3HVW2aMk34CQoE+7pj4IqsFJgx3jmNPhxq5REhUnHeBxo7l4tJO6t3NW6OX8SEpQQlahpvj1hbtMbrzVmwy/Kja987X+hqdBY3nfFQ1GadvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRQTenCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRQTenCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C370FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778096253;
	bh=LGoSZ2gafH7JfOj3q9/PgommUwZmeeh8C+dfNJuTr9Q=;
	h=To:Subject:From:Date:From;
	b=nRQTenCDXGzYVD2ZpH4HKl8afmJwytazldiRZqtRrQj6CIsjSmH1QlA22eBUHGGBw
	 xJUNyTcPfQ4PNn3tHPBnkZwmcCB8SAkI+Be4djTk4uOEqSQx9pf2coZGaLnRCjM5S3
	 czXyG2VpTUJ7HlcvYMXHkasM4N7tn0E8Vyz+8GLwN6qOjXkocyQUJM+aIYlTm4h3iR
	 x3KgEzBBrw5/pGjHAWekr9PJhKA25DvWY97vr2qxdENKi2uQE/+BsPq4vqT6sX1I96
	 w4xkF1Vu5LU0xL72OdAQv31FWUNv/YkPvH7anmAs2Zv9d/yTdZUMOhTVu27U1gWLOf
	 +UW6EORnfyyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CC7CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809625370.12435.494934892168239271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced303e86c757a9b9dfa729fb68a56cc25cbbc4fd319b0cfd9a64757c9a7a16c
Date: Wed, 06 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778096253
