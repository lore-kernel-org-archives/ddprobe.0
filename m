Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB905464A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718224103; cv=none; b=oNs6oiZ9nwXjIyE9J0qppEDpsp5um1MsnI+69iZp9pkYwgYZIrTL9GN44YfhHYwJCbQlnP2xuiT4HLNdHL1mlLk3TDItmPWLJISvp46y6VnahEia+NO9cQtzL7dKSfjwxIVmig04ZpDRo6BvcfX4SV5vGSGgC97fyihrNprw6xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718224103; c=relaxed/simple;
	bh=iL0ngJ26d0NYBlzcwDZyeBai0jiGqxeVZdOC/EalrAs=;
	h=To:Subject:From:Message-Id:Date; b=TUVuqJeJlZeC/sYrPhNuH1Woa7/swR8SoEhAwIk+I5ssvKnC/sSNjy0OmMcsXJVPJLVVzdcyCSR4XUDSU+/TqRzt3zcFFF7nePkXb3LAZv6mcaNg1uIaPF5Zlr6m5HTn2mvzCay4sRS7+lOkrVDyPvtFz2xXiJUFpumNAQG00UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n64tIL8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n64tIL8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23C4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718224102;
	bh=iL0ngJ26d0NYBlzcwDZyeBai0jiGqxeVZdOC/EalrAs=;
	h=To:Subject:From:Date:From;
	b=n64tIL8MQmu+P+ecuUb7F8bhie4ZNe5s2dN5qI1XVfB+pRsxTi5ZD8O/kWU2lQ6i9
	 Q2QevgPp8DeonnlVT3QhAPe+ZoA+W9c16xWDBPwAs9orJOTYlY5729xjFJvlI936j2
	 wAPixDLqEVAskuggBg72skCQPTNyCO8RnykGP/JJg+B4djFYtClRpHYNhBbZKAB1fk
	 V4DifIlgQRv3J79K3UdWa7a948EpaPDs9jPqgegRsVJniNv+WLkdKnm2ALdnPMGdAC
	 SnetViR9P+z70+exSJOKyy8uXdlpyJ/oo0/70MZUhcOj1YJvZ9f8D//ODVE6Ei5L05
	 wGiE2FzMywrAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA82EC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822410282.29802.6390020497414033862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89787f8b8a80e5bb83b2a59fd7b334e41d563106b0c7f9d019f3859b32b3d8b7
Date: Wed, 12 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718224102
