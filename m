Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196373955E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789074034; cv=none; b=C38e+bxbH3T3cP9ijwxgPYl69MU/RziWRbJBDNrm0Jntva6PqnEtfbDGEkQkcY88awJlLRq1dWUoIgPo7BDn/vA2Rs+LWg0i1c4OOUFieQOV0EUHk2ORS3FE6bzJErYjT9nCZoBQzUfboOGLPcvQI6h3UuuaZqQYEYavtJkElmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789074034; c=relaxed/simple;
	bh=j5GG0Ob7+/+NLgo3NT2zwfcGLWIZDm1qu1lxl9ylTJQ=;
	h=To:Subject:From:Message-Id:Date; b=bqq34u/rZ+tivwDb7dGKHFgJElyFUpJMN2QVGOamk1zi/UbHvQG9U33D7yCEO9/B5EexG2MxeUW3YmfaO5iO0bhZ9jHEuNriadWlVQbsyW1RTmSx4Ey1IsJPF3yXdk6rqdkHlIWkiP9r4eG2I3xAvI0Yb6d+ZISq9EgJU3RLHbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCiKSKr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCiKSKr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A7FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789074033;
	bh=j5GG0Ob7+/+NLgo3NT2zwfcGLWIZDm1qu1lxl9ylTJQ=;
	h=To:Subject:From:Date:From;
	b=UCiKSKr84YAC3flx3gpQUjd9vlb25G42IS8fvOq8/HJhEfTVebHtZQnlFT5iAfW15
	 Nq5Hd5v6JWZz62Se22LM/5oQeDOGnOJ8gYpDKI5UEkNpNxnamq/WG9cfPFH0F1it49
	 ZQh9h8BW34B1/0HLuZkjYtRmJ+YYAljQvbiSj2ZtwFbBjc19Ny20KR0Yf1TUTuo4Ha
	 CPkd0PMYy2yR0+IlEloTvrWAXNv2E75NUmqqNQk2srQStN6YGtNzGzKvYIe8q9AOZV
	 ZEwHzTi4HaPeooqkwPhFadFqIb17ylSBazFzCWZM9uclVwqC2bXH5LwI5/Lx70qjN+
	 tDOBxObfFYv7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE72EC79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907403369.17983.6942229292025796147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c14982fd7379b8564a5b1b8fdee013e4dd1f449501100ec7916fda34c348d5
Date: Thu, 10 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789074033
