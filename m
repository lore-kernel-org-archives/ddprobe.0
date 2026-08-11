Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E92B430304
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786446034; cv=none; b=uowr7Pi+P6A+BTP44Em6XMU47/lMlYVumCxG/c2UeHd/Ag9bJOmISaTx00CXxIbGNwDAZb7NdgYB3qrtGsxMraNyJaC79BgChBitanOjQHTbFiojm2QX1XUBWFFl+ryZCR/daZgEnvM7VQjmdQvlEx2kVaLrC8l4s7WVKLGOWw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786446034; c=relaxed/simple;
	bh=b3QhJovNwPmCn8Qm8O6JiFR0gJTtHap23hRZDi3uVcg=;
	h=To:Subject:From:Message-Id:Date; b=JuCjm+eJRFQt0cUNt60uAVeeMzAEJwtN6TVrJLenp9R35Jbt5OL8ZWXUJF2uQTLBfGzldNnjwvMv3buiVKUL1jX5yCzoiCFWFMCTQ6rH0iH7gR0wOFx1LLc1mCyBUHsREZV0EqkMVXHsSew9Vc5tj6X25R47tDx+FbQ9DMR4bF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJoz5Xba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJoz5Xba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4A2C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786446033;
	bh=b3QhJovNwPmCn8Qm8O6JiFR0gJTtHap23hRZDi3uVcg=;
	h=To:Subject:From:Date:From;
	b=EJoz5XbaK6gDzcopPljxbqqpHZKDouUBLIntUCyaFjSb08UPzlF5E/1spzhri1PHl
	 1/d16hzQ95k4fr9FUJQcQgW+GuvAb51sfpfq0VX0tU1YBBPJl+G4MJxmVXNGXDIez2
	 /7LWozEOP+4qtQHrtPlJhg9wPxj9mfx//keLnY9rzFQWZ0WpzGxqQfRJaCjJXnx/oG
	 rM7H5XkCw6d0UuUaWV2xQ8SsK4qHa/s5A3Qr2ruPito7y7AZd1QV+s0ySVBf44+c6A
	 vjB1olQebnYvd4kdmv02vC4v9T4PuFghp825dSscSZctXxHpBhSPRk28iIRihYck5k
	 4dL0tG+jcerlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12BC5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644603368.9791.4416038017366542930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a10e5bbc9addccefac9db298d766404d9455ad003ea7c32903da31ba001f1d
Date: Tue, 11 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786446033
