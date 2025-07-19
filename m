Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B3D7260A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752936594; cv=none; b=Xuol6sxmAXYbfJyJCceWc3UQbIiuRY2DvlRU9ogESPeFRfLocf7ZzWTFn+bMffnxqUqccqJsNjijvBoqepeXfpvW6QVNf7lyMNb0UMpet/IvCwyvcV+CiEDrB/1v/+vvgyf4hwmfAHQMJxb3NApad+qB+sbtEg2wQYXIa4kX3iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752936594; c=relaxed/simple;
	bh=cISeiNh0M0fmSqUQKLRQhFUwMY1+6ywwKMBxOdqZvzk=;
	h=To:Subject:From:Message-Id:Date; b=JWgB+QP31PDIbEdoEOgB4tyUNUdbpCauoG6CUvqHZL0EvggtsG3VLd1cWm7O/YLw/FQOIrffoo3roCUycVJsrIkGEATxgHdU1tg7rLTGqjKfT750cqSt/nqnxtNmGqvCQlksBBlVNkajmUNvRlV7c5UzZJgJBtrGH8crQZezE0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxcwnY2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxcwnY2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752936593;
	bh=cISeiNh0M0fmSqUQKLRQhFUwMY1+6ywwKMBxOdqZvzk=;
	h=To:Subject:From:Date:From;
	b=JxcwnY2H6vJj921CMd9gut7EGhifhCIPf/RWR/ubjG+lfv99OSF7mmwBgRZ1Bm8Wv
	 DvhFU3sehVz8OqRWsACAMJKlzB9BveHMkmxmtkzoXb+xwNgt1TtV7zEZhbc/xk39uh
	 1XPwkdEkgp1+pG6Kn2ItzE1lYUYVmvbqo2ORsisPjwO7u+s3RYufwyRmXul2rhIYNM
	 +p1Nt7P6rybR0roe0ay7ESfFxM/B5p9Aj3t3ELIvR5LeBHJyqkYOTPFzhnaaCssADQ
	 shfOam6axtUvIAfMYlLynELj6HUafJvPoQXV0dAm0EAxv0PxRTmCP90NBBmH5tY/7I
	 V4vRIHHYMc+/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487AC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293659357.3121.14930651173682373903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b26eb96f3619b148cafea0f848fb26df5ad87a258821be453cad7d20d60b99f
Date: Sat, 19 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752936593
