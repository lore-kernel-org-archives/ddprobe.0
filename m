Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F819049B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777357654; cv=none; b=ZNG4YoDk2poXsql5j2klvvvh6+aqg+yXzHy31s7XA3ru2FpaG0MWLCWawNCsbW/LpBq1ywokOmPHNi4IowfJQLng9bsK0xPp8st3iP7bEgNr4AqxZchJSAD+UNn0gpRiw6WM1Dh6w+aRfERByPuYtXr+pTCtTguhd63UF22HrsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777357654; c=relaxed/simple;
	bh=GSlMyEAiorhpBchWw67ZGirAR/UkNCffVjHll7IoDGM=;
	h=To:Subject:From:Message-Id:Date; b=TI3kMw70CtwSeS6+HZ+sqniHSA9IV7hAU1Snqwoynf3nMYbOa9p8XZYEmzIQ+HKA6Fhhv1Frh4mhQsV2mZXd/ljIjspRdeNKby9XeeDNxn0lblH9tEyJVe+w+wusHoACXvJA3qkE/7QTcd5Bsv3X8KDPtzRvpq7zC6aIvUAgssM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLEneYMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLEneYMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9190C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357653;
	bh=GSlMyEAiorhpBchWw67ZGirAR/UkNCffVjHll7IoDGM=;
	h=To:Subject:From:Date:From;
	b=RLEneYMQR701GLfKunUaUEYGRwVfcQx44RumcH/MYuK+B4BS4DP3NgKE6+rmp3DLw
	 1h2Xey1HI0hFtlHWwa54tbSAkrysx9DmN6CRp0BU/sK+aRTRAAt56k5oHahSTm1prq
	 HDrYJfLL3zKkhX+L1L9FoI6t86JYNg1G+Cxq7TgpqKPOF2uYjwD61xFRWEfjuVZLTO
	 0SOiWqxqkZmuPL4frU7uo9kow8dFINIAuRBL6euILpaQjJVLaCbJxC3np9fAE+kEiR
	 fZMly5BIVZ5MnI5K6H2GEjGkrQXbFHu8tgFO1vpJ6JfJrwbbzkaZ0DUKfqhAmM4+yu
	 VNoHuHl3dK0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8FFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735765368.21316.4089786873399062205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5559182f347088f68c59063d1bb94932ecdb19f281387cba1b5a23724d7517
Date: Tue, 28 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777357653
