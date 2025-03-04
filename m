Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FFE18D
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741047534; cv=none; b=eoKm3AeM97nUe8ksC8j2JgF4NzUvwMYUn0mN+sk0y6a+pjvmudrrJumcKrgUgdCchzQ4TYgnkelG5lkSkAdtezSz/KRJOP4EjGp0I2CwlgFpNCZdX7M3tAQU9e61s6jwdRzhBxDp7hlzCmMY9G9oaMped7cvWS0nSYPAa0nXsCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741047534; c=relaxed/simple;
	bh=1C2iQNyS0HAngKmTh6uEPI7r/u0MznVeDAIx/ricuQY=;
	h=To:Subject:From:Message-Id:Date; b=iXn5mO1w5Aus6P1t12CV2oUhf8tLCis4IqM4wBufTySr9g2si6H6IL0/7PFlpHZTomrUGB6jM3G5kIGTmEZZgvQhiTObqz4xMHV7BRZ1B5JzsZC/ntmVMVj61AkjyO6BJaXEjudxTAIkzJeb+H1XwV/HvoQ75rWJIbT/DGMnfLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMU7IAcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMU7IAcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741047533;
	bh=1C2iQNyS0HAngKmTh6uEPI7r/u0MznVeDAIx/ricuQY=;
	h=To:Subject:From:Date:From;
	b=aMU7IAcl3MEUwIGnzdKw34wvnkFure0IKVKaSXnOnV3jVteQPuho8DA8kGpym3i9o
	 9Q4Y+qoPei+hu6djpdemLkwQOc9z16+tX6cGC0u8nDyVXxa79jbqs9pOlM0TA/B+hd
	 tbDe9cW2GsxAWLRtj9FvQs+6VuVXVNrb8hxi3wA8s388zv729lYuIH9Agh3r5hZzds
	 260g+MbP1xHiQ+XiWty5BakSWJQEOdFV8MJDKrPlgRAO56XNb6rLUdeHiz9LLG3qkx
	 he9LIkSjGDyc0tv+9KDNnFmJftaoljDGPyHBrGEM62IqOkGANtJa8wxkNOVwGrhxWW
	 HT4WK7j2HYXoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9690FC282D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104753360.29222.7275236528926747496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f324dd4f88dbc17ce8c461146320372e5d322d120756e8f298d9af014ab84055
Date: Tue, 04 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741047533
