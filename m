Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B436C0DE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764960174; cv=none; b=scZvscIHMbNJGZ3M0kxB/NLDgqgUDSi0KcUcXRm3sdGGu6AdDQpZUqYGgGNgUH4aeXb3A23eeZ8oxv3rhStwMHInGVloIrMtoqO7W/adefQueDO9iAz6iD6rMO2IozoBJ7bK5vMLcW8nQbyqQsAfg9p7lhXkYtAqpxu6PyqLuBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764960174; c=relaxed/simple;
	bh=MkiVJfFkgbRwTyqxtSl0y6t8VVLofky7Pwl6cFo/BzE=;
	h=To:Subject:From:Message-Id:Date; b=c0yXAJ5VeG/+yt4qVnapzQFGV5l6wrlpMElesOIus6sFRdIN/xaNVoAtPmbgFwlvhlCSw3JBggnxcatCUWZzUNZrAk+OEAVXfHyib29+s0820fpgNa7RPSrCpg3KBLHzXklF2q5G37Ok7KgafI+Uk062Ey70E1Bjs50j1yd4Y/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRRG2xn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRRG2xn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C53C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764960173;
	bh=MkiVJfFkgbRwTyqxtSl0y6t8VVLofky7Pwl6cFo/BzE=;
	h=To:Subject:From:Date:From;
	b=JRRG2xn38vHpbR1/dm/t2KDhlTJFMw7P49hSbMvmn6Jf/X5lefEfPn9dTYcEdFDls
	 FiZDCFA+pTAtB6IqHCW1iPWV3n3s820msDe4zx1YU9wzaHRb1qVT0OL2VpNPKu78h+
	 0V77HUBNHzU042JRHA80Jm2lpsbKT2oFJ32bH48aTkrisfdMb7MVxo6y9sFn4vjBzT
	 mDeVY7AI3859Q714avo/krj8MU5UNedX5Mb7GY0AZjgZXPjLIkHNpoedtwOOcB7yt/
	 sH9c8U22veAETnQ3f5e5Hl70caGMzPqfWfkUwnrRL0ssBH5kXJwOSmC/e56KMbSEqO
	 8MqA8jX25gezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C22D339BB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496017359.10344.17832568411140827708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ea8b0cf1146948efc3f496a21a0085ea57f69c7fc2f3089628d0cc24eeb6da
Date: Fri, 05 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764960173
