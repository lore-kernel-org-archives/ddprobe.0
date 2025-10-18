Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7D267B92
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760784594; cv=none; b=S4zXot17Dsx1AdnTyEYtLaSVjdsA4iuDLt+JWgTyB9odBQvBJIlvT0//9VmgekH4140CFZ3wpuNuc+bv1S8pNBu9olHqY+aWmxQ3erbddJU9mPmhOErv3lg/AxyYYnlg2lk9Q9aECGLHcrM6VoCaBBXQ7fOJQQxD47ymD/aPnrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760784594; c=relaxed/simple;
	bh=aNp2OJzTIjuhW1DQFIphkMSfY9rUscz/Ke4jl5Zg82I=;
	h=To:Subject:From:Message-Id:Date; b=LjXiBptw4PKxPoNpPxG8v3IBVHiWxcSMUyr8YzQ7oydd0TGu7xbgZFh4uIp0nA0ugWIfNtKEzMNwkQxdZBMGe/yDpfMt+zcZdXhfNU2uMP9ZAt1OgVbLVb6is0D3UooWK+r8U8ZbSWe+SNS5HSpvGg1PGtj6zK8CRcwzO0eo1Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdMym45x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdMym45x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C6C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760784593;
	bh=aNp2OJzTIjuhW1DQFIphkMSfY9rUscz/Ke4jl5Zg82I=;
	h=To:Subject:From:Date:From;
	b=hdMym45xW0kIXgZ7EOOT7cmrsvIcCT19IQLsjVS7o3VjrpIuvonCvhDROtDPJiuBF
	 1Kn6j8mGu/WADSf3k5DEJKRaNe7E6Mxwxskq7myhlvzd/ccd4RyT9q2hPgQFvM0ooH
	 3YhDxXAKRCBW+dlUHdIF4HjzissEsS0kV45gFryF6ZmcJDxOYJp/e6+ZicJTjKjKBh
	 S/8JrtCbweSQ2zoaREX+tWJs+1exC6wFKQwJQLxz4UMOeAH1X4WN05IArImcH7bhVV
	 8YsjHU0mxJe9wMy5eY7u7q7U9jFlPnIptfVZwZwUmAvRZePgUCE8AhbOQsdCrhe0cc
	 4O6RoAs5BpO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E4FCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078459357.12320.13514476173627143488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59baa8000c5120c988ac08d9161c2025c182ff027e7ab8322abba8a38f1257c0
Date: Sat, 18 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760784593
