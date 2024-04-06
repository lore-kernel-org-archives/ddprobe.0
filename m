Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DC720314
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712423896; cv=none; b=ZWrHcoY04SrAgsn6vuO9GtEqt8la2D87FRu3JA8iJsduaPxXE1kYFE13UHasIGmE4MxNb5qnAzWB9yNUvPfu8M/n2Z0xyQAKRx6ZR/hL8CDAq7qEqcxHpX0mwvfY/crxvDzKeOuNWHqfV5kIK5y7jjTAs7Dw0bs51d9WN6GIsHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712423896; c=relaxed/simple;
	bh=FQp6jQ+sVyUL8v0A0rviR0/UbUBMfQuRGIop64p/NBk=;
	h=To:Subject:From:Message-Id:Date; b=kgkmBxt6hlX262jMap8M0+5lrpt7rA9G+pd347OZ/GBJCubkZc8FUCVeIKKiDAKp1imJI1vpQHPkNJ2EYGGu3TEG42RJlSzrR5+mT1ggWG9oXVqK0J3ADAnPG84Dr1VbNuoxYB7h8fPtekDLIEnmSN274JLp1nY29BGpHolZ/Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8/PxyE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8/PxyE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CD6C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712423896;
	bh=FQp6jQ+sVyUL8v0A0rviR0/UbUBMfQuRGIop64p/NBk=;
	h=To:Subject:From:Date:From;
	b=e8/PxyE15goPByFQKrwO2Woh8LPvevWVYwkADzVk3K4ulawRTJqa4PqKQX/nign8Y
	 H5ftRD20DO+YQAYMo1Ddfp+q0KSEY2HeDsxfw/PBKHT2q4ZT1575FBiKtXSxjZ8Hm2
	 e1L0T/FSWql6udEkrnhvklUXVpd/zvUp0AiHPLZGtsL21fyn/rAQdl6HaHR+pVh+uF
	 AzT0jvkEueXuy9v2JpXmF90TnQ3lsMHvWJ/SrF7eUSqChnRbLqn1PRpley0WaVu0bk
	 YbXzC7nW68lD+5VabijIbeW6aL2IAwFDVYpdHDjfS4xTzEB4KJEOO+fWvGipgzNDAh
	 ug3pOYRM9SOkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643A8CD1284
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171242389638.437.13874627585736990703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47f5026e1c23e03d6c668958bd5b1d32aa4563980c590abe6aae7423e72b020
Date: Sat, 06 Apr 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712423896
