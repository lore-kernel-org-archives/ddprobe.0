Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3A120A5F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755292794; cv=none; b=TKReB1S1kTHy3Lyl5NQKT6f8kbZs4UCWZfLIp9tsEPen0knT2wlXBaCr1MM6ChzF1Cuy9bRBUDVdyYpB53LnUzKgINYpiLMnHp9gAHU4vwGRM8g5L3wSKiEh76GguNrvUivVd3eyjh7rNMmMb6nlTnrKStITw1fRZU+SrdbGsJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755292794; c=relaxed/simple;
	bh=1q6K+cgw/IhE+xh4LPsyPgs+aqnGxwP2p0cjS0v18bA=;
	h=To:Subject:From:Message-Id:Date; b=r0qZ5eUYgceUQRdcTw350dOmi00byT0eaDTxcs0ujQFlAi1J57v1RPWueAB6+sW0IqppAhMO5ldeI4/NncWdJWYxvLjNa0M4ubzpGpVdujaos0kzd9UH2Qf02EwM4OmQmsz1x0tqKaC0vTfPKif/3UJuBRU7V4JnjIpjN0UNzmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPEV1MEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPEV1MEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755292793;
	bh=1q6K+cgw/IhE+xh4LPsyPgs+aqnGxwP2p0cjS0v18bA=;
	h=To:Subject:From:Date:From;
	b=DPEV1MEWxi4LcQ3R/4KUecfyDjaRpG9rPMv4CJordH4W8kkI3zGj/JjVUawQJZ9Wy
	 QWpaw2uq7lVFYdRo7WXJeHc2h9Xxinnd+DZg2c3HtQLSOy6eELimQ+hPkonf6BwhCP
	 g3/KkQXmr6gwa6oC9hgmj7ivVn3ArCbjG6oTULf0mcmGx9YmFKVYMM3g2H+4V4IJn9
	 fQyYB8iwAc92BsCoatbMj5QbbzY0aszJZGVsvV+Hew7TN5lUXt/+/gx3PGtUdi3vg/
	 Jiqg9kUX0BFRoG/8HbbhclQfLv3PTToIJp2qJBV/ZLXjRG+fdQkfENJQU5u+YPnjoU
	 xVH3gPGN76Rxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF97CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529279358.7008.1850625149098626227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618b1097625a22c7f238e7269ba3d543467892cd21a681709cbc9350403b77c2
Date: Fri, 15 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755292793
