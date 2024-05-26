Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6B9946C
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716726263; cv=none; b=HYe6OfPKirhHX5LVYxEF38ctLuuD2WwwfsBlOGmVroG9jSaasBQL3ho4uNDjjLg3YtRePf5+VzK2jbEaz5OQARLX4JOoWyiaiyVG5a9M/0OSbnzwZb0Es93klUvSxFl7PL7TGgZkK+P3SbNV3+vEsnYL8/s7jDjvnXKDvyaPE6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716726263; c=relaxed/simple;
	bh=VBi0jOWadG8emT7OdJXgWuEtqnc6utqkZzpWMBxqgqc=;
	h=To:Subject:From:Message-Id:Date; b=ZUeisHqrY6Mcp1d6o2ht8NjRSQtqYo9Udq+A7+w3MT5DRrO1v9xYwwzKHVy/yARhtCv3FPVcbBf2M0/nJnNQl9E9T4pXvA8srznqyYVhxxE0HNE/Yk1UDcl/msI2Fk/OfeOXs+xKkdnXuVfSycpDmU3mhJHLGtgYPt5R2xzPmLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7sSs6Kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7sSs6Kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FD3C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716726262;
	bh=VBi0jOWadG8emT7OdJXgWuEtqnc6utqkZzpWMBxqgqc=;
	h=To:Subject:From:Date:From;
	b=r7sSs6Kx1YTfokgoBJULeFqp1NoDJLb/Po3xO6NcR1gZ1pAGzbUDUBp4IWeH2yLPw
	 YqGwprgrRRCVbqHo4UFCX/B/i29rwM16iHEJCGPd/pJOGAI/o0XX1VpBxIUfkiaKsG
	 jmsfUTdmoBZM1RcpemQIWieJpZLdQclzTRKUd/hsqg72Sr9T4xqHKDQDETS1x7qBRW
	 JaTKctdsEgHy1QYm474dH2ltBcR4VEuH0PyCPLVGnfz7womW0e+FFRAYrl4pbPpk5M
	 PvMk7awVq7Gl1DOAu4KTflwe5dUbLKM3tvGHz/CVQpo2dFuo9wrVaS23SHbd6rmOVR
	 8nWPnEGnbZIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5A0C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672626275.26894.12312709753138231617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd29ec93854cc9d64aa11c1c37e2b0636651ab632ce30cb03a66a994707ce847
Date: Sun, 26 May 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716726262
