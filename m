Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59192EEC0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786158034; cv=none; b=kGd3P2yjLAKKt5YzawZcBFOja7wyNTXqR2oVZ+izcmlSd1KMCPU/oS6fUsMtqmCt+FLK0JA4qpF/Iq1pAahqFKJ0k/saTZI3RD5HJ5asBXmU2+a63nVskYYoyZu5cOIo2WDd2DcxGAQVS9ZiSAWrlVzvMKegGmGdodhr/ZzwNJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786158034; c=relaxed/simple;
	bh=uFag5UJGufkRDwjq8ONrZC8kWUVRk9hn5NW0o4uAWhg=;
	h=To:Subject:From:Message-Id:Date; b=OrsQhJ/Own6dzz0mMEej6+2txdf2wQzbK1hwVjxz2yk0ikaHCfYOijCDi3WwO4z3Lbfs5ND0VDNzTuNGHReqihkN/K1Am51XfkEsQ1WYpfj/bLyPBLgcpeCNQ+9WJP8kiV/npYFJecKmm3pAcTQBGnpY3ESFHlEDWdho41b0SZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNeEcq72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNeEcq72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB19AC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786158033;
	bh=uFag5UJGufkRDwjq8ONrZC8kWUVRk9hn5NW0o4uAWhg=;
	h=To:Subject:From:Date:From;
	b=CNeEcq72hGXsZiKTynDUrwfLYbOccfvzYEYAYLCpacOytfVfF4g92ctvzMHKUrkMY
	 1QoJdzUSIj9OsU5toPvY2NVkJ9R0LfvcCfHnouQ6rxPzcrrnez58iGy2F5Qs6d7JYn
	 jt2HJJ2Ay4iELX1zan+symNpRg/HaWpNwDxE2anBxcmaqujxjLss/EaC4xubD+7Mcx
	 o054oJia6vOBghMi/PHlxeZCmi6U4sTHPLHS9dnvQXdVVfdktJjnwgSa2kMw+p1P8y
	 YsbsS9ELZPs4q7TqaBfQElGVnp+dzBriyySL6feD+lih3493iarw1gF5tChYKD2TlN
	 kLAljbhHIjDGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F5DC5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615803371.7159.18147789235190223452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5cc93827ebbdb30ea0d87bd8c197bdcee5f4dd60a9f6bb92f30ef53cc876f3
Date: Sat, 08 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786158033
