Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0E62E0909
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752758395; cv=none; b=nAZw0oBMCE/AjaWwPaUUtJnWrF3/U2RmlYseyxOVkzttfvCY57+yJFMVnSGLyvVSOui19xGRwUbMVoD9mUbICDPKv7XI+ymb8WvQzNXkrf/KZnTwmXaQKA20/mMnrZ8N0gCGEVP0HAwxPW1AXBSRVWDKCbyoy2OK+2zT10sUrjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752758395; c=relaxed/simple;
	bh=URbAxuhyXNBY8IG9EpE8grRKdY2KqdSrc8AJ3op9ZSo=;
	h=To:Subject:From:Message-Id:Date; b=hlp2jRAZdxIl60m6gCTS2YBU6B280kEVtRx0/wBIxhvEii7lN7HMQ9FU4RHDK+aeNrKUzZ6XNi8zyPhAozVK8p4LW5EpwCYzp5V8U1I4ZCvA/YEKIyr4byXpSxm/A5ldEr+RGGSO+7GePAOsKNF9kdZMsori26qU//lsfns6XBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRCsI6tT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRCsI6tT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9E9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752758393;
	bh=URbAxuhyXNBY8IG9EpE8grRKdY2KqdSrc8AJ3op9ZSo=;
	h=To:Subject:From:Date:From;
	b=YRCsI6tTIWGSKlhRJkOHXYHDiEGna1kMeCXTpSITHlujIrlDkZlzYkkCWGlh+jODE
	 9UhKNvw6y6lLIMMd5aeI7H3PJfOYWbpQiODOZfXcL/yANi/ACl6arq5bU/PqTC+M1x
	 fKYEWQuC8GhDfO8bYYQhRVROXjfOxsjTNRY4y+GsoLwFg5Mf/nOcd+H8BQ+krAHVEB
	 Ok2VIcX6uKSlwAmnVIEHUGzIAW5Ihy+B2v9WfMHCsAKYTK8sYrZtzkKQbpi6GyOoVu
	 KP6lFmfvSKMqxMnPWApxmE6ESUKDUqIbuI0yViwJB3gd5CSaOcbT9WmD+ksCA/Z1Ay
	 SCGq1VSN848UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3DC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275839357.28452.16852384445914614323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb27ca3ca6a796ca475f405d08fecef9ba9a5ba5ca974e6efd75866f94f6bd1
Date: Thu, 17 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752758393
