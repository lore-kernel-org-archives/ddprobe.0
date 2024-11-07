Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7010F9
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730965554; cv=none; b=hguugULi+M6VWBKWR3GnDG6Rj15xSMbLiEPsr0fGcwvv1kRDbaDbe5yegQ2W24UPqlGFE/KnYP7jLrfQ3W0AEYoUXYc+3AN1qWQnyL2ldtJlnHV3NqbMyQDlBcTtwj5LXAupCgmLiGgJwSNmt0K0C/BIwXWCdGrPh1e/pIXRiBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730965554; c=relaxed/simple;
	bh=CXs5e775vvaDzLxf7+xDHJYqYUbGwvUEDSBb3UFUeig=;
	h=To:Subject:From:Message-Id:Date; b=Wt3qYsZh/o08YAc9I9rTD5AF7bsrEHCBp3dqTceRAGENhDNOSYXcVeZpydbnKuuIQ8+ZJSQ21k5YiJKTgHpp/9DJYW8kmKT/wDWW+yRmYXZzURItgkK2UBIsVEAQ6LSYarnUBxeQxOyTRwwnettKjvh4RyKH5ZB/t+ee+rAozaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdvK+NaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdvK+NaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C1C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730965553;
	bh=CXs5e775vvaDzLxf7+xDHJYqYUbGwvUEDSBb3UFUeig=;
	h=To:Subject:From:Date:From;
	b=LdvK+NaW7BLlU8LU2IURZv6ECKEkbl4pLjpkCpcjvPO7WdyK7c4vEa7dMG9DBRemK
	 y0ZnlUvINFkTWzj1bdiOMmnHVNN5p8Y1M5qb0d0RoXIUFrZUP+o5299ZmIGzDWV0rh
	 h/xj4c84FPFKCNWPhSIlWUaxI7Lhg51RD+HSKmwTcYq3mYB0oOq8ELB0Jm+zBx/q5h
	 +/IZ4QqFvfLej1PHY7lCIUrGnj4aW0gxK1liV76QGMu9Frd43viaal7llU+Vs5DSZ1
	 QtYZRZ8zdy1uAqxEpfT/g0LTaw6YT1I6MHIpwCOrvcLz3hHCdpQtXY/7YGsjT2I7EF
	 5xhyxtoYk541w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B86BD5AE6F
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173096555358.21485.1310238278813216814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870c9abe1ee80e28e9b860ce11b0fb82b1612debcdf83da52634d372282dd884
Date: Thu, 07 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730965553
