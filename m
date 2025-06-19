Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346411F0992
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750348794; cv=none; b=fvZQECr/Dkl+pN3TDFUZx8PBD0NhbFHiZGllYZgo3k2YKZSsrFrSoJmCnEpa+NVLBUGr6xhCo2DduGePmIykFhK3t/uyj7zBXZzRZlBfubgQjqI3rpzHzYADDrEKpf5JpwYHzHywHI2qWN1C+u7UaBdEpWB7XOCW3VH9hIUSh1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750348794; c=relaxed/simple;
	bh=jJR65nQ+A+ryrVi5JMAA4eARIltlocENlBqyqEUnvl0=;
	h=To:Subject:From:Message-Id:Date; b=ei9OViixmJHryCHw+2eIkg0N1FXdu32aQTDLedxEhAfeuXzExQKxDjmGLDsWS4F+t+bwLSiWufy02xqklLQADtmzBWFwLOp9C9xKQsP3JD88MqhRJhWHaSWdFWKY/iYX0NdB0ktXtX+GjaYys//iTeo/6nrZcfRt7ZEGMZp1j1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqRwUym4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqRwUym4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A656BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750348793;
	bh=jJR65nQ+A+ryrVi5JMAA4eARIltlocENlBqyqEUnvl0=;
	h=To:Subject:From:Date:From;
	b=tqRwUym4VEUCyPfN6GWUMZ3kxTqSiMRoHBL8qS4/IphzkGVlhS8SK02DY3VMnwo8I
	 oj7kZ68pBizBj+dUwQ+MzeMNKjDTmSHVjOsS4dUD7rDQuaDRPd9JqEH91nzDSSMeAw
	 g/i92T3KA1noqaSIcwkZf4q1YyV+2lBvBHhwjHmNk1RH1HlX7d3wl5IajSaj2aRjNu
	 UIC6aldK1yjdbHHdTQ6Fj+JT4ptxYWH9MA1ILdM6PvudbPCRXiZ6eZcyJrsmr6PPVy
	 3exIFj19upCut4XUY2FKN7arkzQWlEAVqsGFx9iQnx4xgRSqa1P3A5rQ/8Z8yI8jbx
	 Ft4REt5NNckBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E36C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034879357.15036.13822137510479426278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc2f6071601d93efc70fa53ed3b51df00c5e48aa8b5a3e5cd3f8f3eff1bbf23
Date: Thu, 19 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750348793
