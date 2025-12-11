Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6592C3247
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765462374; cv=none; b=AaONms9VV+RezkYRk8lomhFCRA1rLG8TzdvmmDCOX9qJFAomLdOuQzcsv4O81IQZs/4srxIw6lNGMMKac5QCPn3hlne+JWGPDVqSl1dT27hNUW3qMbynMuJnJLfFcZ/kHtA4d0Rg3/5tmlLtdq61KbhzQ2zVLGEKfk7ofimNHvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765462374; c=relaxed/simple;
	bh=5Hf6/J8+V/nd6UbWypDleWk+t/yQ04Rr2GGg9H+YuVg=;
	h=To:Subject:From:Message-Id:Date; b=bKMHSQgl8BdOcmw6Rz2GaHyCqnH3XJvQGbIRGbKVUe2mD4pfAlq/jqWE2F4C+oNmhETROrDsrd2Jfsj4xYR3tiAsFE+aTebodYydu0nuRSs/qkB3FUbe6+5rsiz7uH0rgQXHLJ9D/LfFaOuvuxLiWw/+3DT7aFk+dSMCUApxGBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5br9Sn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5br9Sn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA702C113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765462373;
	bh=5Hf6/J8+V/nd6UbWypDleWk+t/yQ04Rr2GGg9H+YuVg=;
	h=To:Subject:From:Date:From;
	b=u5br9Sn+WCr6us7zyUK5lJCbxHWm7v0PiNV8VhhfInpNLdE6XQeZaRNG7nQJazchq
	 kJMkqS2qGl1aQuehYeFU0cO+gyJfAng7qRL8R0hWHzwS1H4CMy9ckHlNEY1K9mvi4I
	 v+TPmTqZFB3MmnWPqjvJGQkUthbQ/7aeBU3zCiXIA0IFpWLJPnvHn3EFipV1Mc1nFc
	 7ReKSN1xyaVCbW04f72hQrlt1O9o7aTApHYVY/FKAqePA/yCpMVOSBrByU73r2ddAY
	 P+iLHKBlQlTiqxxaRgN4rAbVALw6GsGCh33xhEq2G9rThvo76sb6Np5sLUPQLSBzn1
	 jD472gCpKNKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95151D41D41
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546237358.12103.18062536784410467276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d47a2fbf58c77dd9b07b1944c752cb72d0f821ca2d60a5fa75f34b9acad6ebc
Date: Thu, 11 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765462373
