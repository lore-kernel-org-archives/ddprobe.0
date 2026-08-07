Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B5232AABA
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786136434; cv=none; b=cZp7uMR3ejrKBggt7Uf7PyxLTrUlFWiFcJEJz+4RFxzMz463AqLqwsF1tevU7QUZkywEaqrWY4v26XUazgtO23JDbSJqhTOoqNagLSdmArM9ytXPbT+ZRnpGJN3mJHXSXnuKmxXfLJAm6ijBVq+rOi0hH3r5bBNDe5w/SyQsAbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786136434; c=relaxed/simple;
	bh=YPMFuHzKpC2Y/sYIJfsGlTp4yLhGZGzdX66XAOf+My0=;
	h=To:Subject:From:Message-Id:Date; b=Ej/9IzUb5mPTA1aBBjz92Um+Boj9p1HBnpq27WJHbClp7hp4GtZOfVirTKYXFk5Jd5nsn4KKGvIyL/e6WOCDa1iso+aZWA5R4W3Ouu+su2mfihEz0RUzhQyDJNSAhYb3v4g8Egk4sPnPxemlgIq6drsYm+NOgD9wEiXTMSM4Mko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwD/I49i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwD/I49i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB89C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786136433;
	bh=YPMFuHzKpC2Y/sYIJfsGlTp4yLhGZGzdX66XAOf+My0=;
	h=To:Subject:From:Date:From;
	b=VwD/I49i2Pqi8pdArleRtEF/ots0TdL+Dlcn+fAUF/tPUmbgGzUE09J0TspVxinQS
	 bJvWnn/In//CgLCDFd3xWFGVGCcbIVppRJF35GhTHYxUIDVYZNmRffmI20TVcy/2RR
	 p/okTnohJZ51IoWRKgaZEMNqyR52hpwsqgpj6O7LCGT/eq39N5oLgY74MB6OZkQ/nQ
	 OEa1Mv0KGgOq805zxW+e6be+liGjqyyTuOvhR8QtRI+lAsOOtz7xu5t/YgP9HU2WFD
	 ZwfOAnrAalvs729OAhH0fpyH1LdCTdxU0wGmX2ovn57UCfjuSZaMB+LijeRh4fvgf0
	 g04p2Y5HBnBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85CC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613643369.31885.7977716689330610146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190127dd6f572214c278574e557925aec6f01ee4da1c6b7a79ff69e57460d6e7
Date: Fri, 07 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786136433
