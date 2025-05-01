Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ED426C3B5
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746087594; cv=none; b=KQKrHxTbQJf3SOoERg/l1raxdT2Kb43bnwyRrJTY7WVhSYsJe6etwTZbf60Yf9s5G2k4PIVorrW1AESqHXuu7RcyWiQO6ooEnzyEJ/qCC5ncS4Bp+jmwrwFUVQSlGhQ9IxyBw9V2OmLuqnfniWN5+/X4CjCpH0mtu8FVu1ByN+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746087594; c=relaxed/simple;
	bh=G77+Ba3+XcOwRigAorxOktGYmbFXvRRRfXVJ+OUXUCM=;
	h=To:Subject:From:Message-Id:Date; b=Ax04OrW4vmI4YuZGl5accX8mP5k6Xa1QdqYZYUgfZR2hZQSsH6LF5OUfA4mJTGTfTTdVF+j+HUSJ/4AC+u1q/Xfmw0paWA6yke6zdt/lCS6mJPGF0sgrEtXSnW3o+00vX59doodg2hNhuDyMO7Pdl8lBPj7rl65h42FtYIsPGEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmMxt+Ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmMxt+Ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CF3C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746087593;
	bh=G77+Ba3+XcOwRigAorxOktGYmbFXvRRRfXVJ+OUXUCM=;
	h=To:Subject:From:Date:From;
	b=gmMxt+CaXk5i0N1Rh8HwEgMtduUHhzMYEypSWp0wF0PATpicbALVmp1Kg3xjAoY9t
	 g7jwF+Ch0wldCW21pniiFQ7lhwY1o3Hir4sL2ds0k4trWcz2AnLPP0UjjdmvxHtip2
	 iRYzC7bCVLXyJVaS5epuNxQiWJf9zqH46gCvOUdvBBhMAcPfUXtj4tvRrxKVaeODnI
	 bt6mbGNt2I0PugwVoqORQB/KpI0fNB4UQUipeGnIbyjPGnrWcu6iUVH609gCpuipO2
	 GXB69vQDi+EY4Y719N8TCdt+hyxsN9M8zdZrIo/clLA21BRRZ8nY4d5c/dB9UfVhuL
	 SB89yZJ4oVXVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF5C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608759357.2189.15181678310725686903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb14f4cdb076db65cbda43d3ce7cd409c763f3f403dc748c42b9a6d45517ec55
Date: Thu, 01 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746087593
