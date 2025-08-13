Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D1E273FD
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755051594; cv=none; b=ZD2L5WSxk4VPxnIZG5+e5s2cv4yK/CwzM4N2mWdJ9qJRv75piPI+dJ1gi7UUYu2qsG/iePzTLooJA2T/Dcva78fMdf7th1a+X4ObrhYv+oO0Q5UpoCNebyjWqSvheG3I2EVdFr+J89NbWesmiOYudaA+8317p+dZdhiLy8TKT28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755051594; c=relaxed/simple;
	bh=ho7d38aIPe94Yj+bcpzELlR//7uZelfWraycPYkQWSY=;
	h=To:Subject:From:Message-Id:Date; b=Dm7fhkPuut1nRxyN7dZGwDsT3OwTewudhmZyB8jd4O61ZKons68jhALm0VRamQ2C8Z1A+4zyu996hL6NrXMbr8ofWH598udQoD1eB7dBpZMYBemN+AL91KLVmKLzSlq1xLRZUGnbWd6HjDyeXbCxW6LGxyXcy4RLCvZFiCTXN/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhqKKIo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhqKKIo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0921C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755051593;
	bh=ho7d38aIPe94Yj+bcpzELlR//7uZelfWraycPYkQWSY=;
	h=To:Subject:From:Date:From;
	b=OhqKKIo4toWtQ94hWTlxVB1oU5oiTPoyWbNFJZu4WBLpSg4wpXe8wtXBkVI6AkXye
	 O090YAEmV8fQ965e25PuFgVwL+zbP1rQZDhf1UvUb0M7AtoCtdQKWTY6ymXxwfsGMV
	 AMvkaSoPYWqaQ+GSk+U7drc/HRhofthOaKBnhwBbYVB8S6KUoZkOGFuQAwEUci4/ZK
	 u32fXE5sQ4mbCp2ML2Abp7ff0Ks24TTqS1EYtGlb/RrWNsbWGj5Ji0ASYDqsg86iN1
	 9NEQHzEAcWFg/ae+PQksdx+2MLExgGB4upWLNqpmhkw/Ul2DhVV0PYoUmXddnL723L
	 vuBiDcCbL+7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2ABCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505159357.7239.7631526022249531735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bc1be00ae152062f9ab8361c8cb1baa5ed9e1d93b5210d36b2189559404f9f
Date: Wed, 13 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755051593
