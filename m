Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F269516DC28
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768351434; cv=none; b=S/80T3fG3/jaYYFvy4sCR8PhpkIdKa46eynAireGhG8bSTVHDSwKqfm+s8v4ogAu2IIf5NvKH0BqoPiF8SNNbGrp55JIkbqCKC9Dkg/qSvJiNVC5zrh9oVzyf7RCoNdggP6nxzf6P6IXySc00lsgMGPfvyyJ6lgjTX6bI2eqLNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768351434; c=relaxed/simple;
	bh=+b2ExinXM2JO+0p05QwRSaCccLajfkvOvEv5kMnkCN4=;
	h=To:Subject:From:Message-Id:Date; b=b/qJYjG8YFu724Pyeobk0/TdQtC90eNomwUfZp7WWrjYfBGItntTK0q1ZRorGYqvHcTOWRLfbBMFufmim8NXAElCKka5ObrVYxtn+b5YodVzRouYIUBBh5nICTZirJDubXNmoAfgGiegJUDQQ6DOPdGjxQkCpcvgUJ8nEbsou50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kux/rH0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kux/rH0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0204C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768351433;
	bh=+b2ExinXM2JO+0p05QwRSaCccLajfkvOvEv5kMnkCN4=;
	h=To:Subject:From:Date:From;
	b=kux/rH0r+zHcrw69ZPVSC5Pyo4MFRoobCcccgWUFU1WU5Bf6sfNsHZnWygYadw74r
	 Ve6dCxNaoNja0mJFHCk676gNXmwK8mBJ5t9eyzm+axLi5l6Xi92rFQ8DWEPNGhP44M
	 XpZmC23JuqDqW3R8TkztcOZZcfC04U0sNSRbPTDLJ3EBQUeZhQY+9pYjvxUCdNd5HY
	 zGV5VLGHW6eo+ycafx8BKZ7xKfILbh8wAyflxLkHsAbgtLnhNzUQNBYM21fNkrKvMH
	 Iy3A6v0HvBbx2vp61V5OehwyU3F8ItEvLUXhjj4/anj/sLxOyuTZiVgFiz0XCDgJqI
	 MXIT+aME7uRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C5D30CF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835143357.18868.14590452702371699309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6633bc23941edd99747f1e5772f23a6e075869c2692e3709ca0b086da8a59bef
Date: Wed, 14 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768351433
