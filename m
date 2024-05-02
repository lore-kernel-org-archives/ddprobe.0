Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721F81CA81
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714621943; cv=none; b=mTlILdREFRxQjbITo8FBBjn04ZXnfubnnjMfgPnqneUdt7eIbCkCR6/3uAfE8E6UR5orRpfbttYsHkLdv/6ogA+3DfyRvHPQ5MXX/hu05zh9SUCD3irJNDOSeFvzQszeUGrYEHAhxyCFyhDAbUlnjJ9p+8+36o+ucY88LcNX33A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714621943; c=relaxed/simple;
	bh=9IjAqu1v/qlH7n1gJANXSKqCFh6hmgS7T+2XOPnUYGA=;
	h=To:Subject:From:Message-Id:Date; b=YFX3UiVA0aM/5Qivx5dBYX+vpSueW3Pt4tW5OF85JR0d8dLQqmWu1yfUrcFvMDm04v4wneZskayLY8YZJ1bynPHmNgkN+cklMiT07Zn8uRpo/+p8HgNSaSxiOwhk370/DSx/6Cw2QiS2fvA9owuMvRcpfQhMJuuRPzb7eetlvvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2hj2Fju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2hj2Fju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA380C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714621942;
	bh=9IjAqu1v/qlH7n1gJANXSKqCFh6hmgS7T+2XOPnUYGA=;
	h=To:Subject:From:Date:From;
	b=Y2hj2FjuFlf6UiqagYIqzbvWSW8xmfefl8Eaq6GKOJteHZKBX8S4uqP0HBXBBxvnT
	 MENhoctXD6ghA19QOa2L4OQmv8ydpEQAVBCczSHO39UbZqEfQ1u493F3AheM7aWvGe
	 Bco/H2HZI3nJ1BJXtzNWYQRwGgmYrY1CqtBq0BMdyfEYhsaKLfsaA+l2o4mpAPzYji
	 5BhYWg/4ALv+kfFen86oc53O9VYyOd8GFlbO/TCBeACcJMiXvPGM3lRx4PwE4YIkdI
	 68jpjo2buDYh73+h26N7w5rbJcCmW71d0LpVbUrwLD+pDz30s3TI1x/jBVgk8/5xi0
	 pvF/wlKjxvc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9816C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462194281.28499.7171800818972241043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7620bfb1e6de78294803998d2414600c20acd32d653c56ccba144590b4368d43
Date: Thu, 02 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714621942
