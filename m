Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DB527701
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750820394; cv=none; b=f+9Gt+Pb/FhdEIBlvc4Gs2Ti/LHMvx6T0cg5DI/Dc5EHDVUIzXr0v66OuCsC3EWzQbQYgmdf/1Hav+TcW8+b5iIAtE8sSqwbGPSdSBXx+7gG0ZDak2BgNnNjIG3RR0nh9stwmKsVHA/iJn1NjTtvzIF9WrvXHFm+FOgk1Rkthc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750820394; c=relaxed/simple;
	bh=d4w+w+6sEJA1MtxLycx7YviwkJ/PtVB3YhowiRs+pnI=;
	h=To:Subject:From:Message-Id:Date; b=RCh766Psvpps47SS3Wk2B+iWsAx2W/XnmL1TkgMxbvI5HJIzl7RackYlbikO23abYc5fMv1G8oO3WS7C91ZtZ/O01JJv0WIJsTakYPVdWMvD+iQTfc0go0RjDRjdB9V6aSpq1B8Qy83w2yrfY83/x4tr1UcZFezuw4GjwAxm55U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQ+wqr4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQ+wqr4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750820393;
	bh=d4w+w+6sEJA1MtxLycx7YviwkJ/PtVB3YhowiRs+pnI=;
	h=To:Subject:From:Date:From;
	b=cQ+wqr4EpNgzX0WQeaHYrPO3QXApunKp+3PTBNtLBSEFjn98pu3xFPFkKWbmygB+5
	 5e8wQSvV6a0KmN8QEyQKhY1FPnmfa8eTsdFVRtAk0cwAKeDAkeAoffiF+BX7LdPeCV
	 ky3jXAoNJAufWLQB3H4HI6Xe+Ha+EYAKHsN+3hcSL0ITPshHhkiOhR8rVM3zAAMfoS
	 cR4xpl3rvULNW/cUPKT8Lz0U/XDcSgheXxAnXUfwuBER2RN/TzglAwM1AeKoB7fPOy
	 +LgJBu2wjeWdDTrHbGzdQz0r6/F52eJECqoBRgHbiUs9U4slkQFctTuaGuUGh8lN56
	 uh9gWrFYLaUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D8C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082039358.14876.3500685151832074703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32f886347111b8ec3ba476f669314ca9e2ce2d5225f2eec4c649e20930b9d77
Date: Wed, 25 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750820393
