Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BCD502A9
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714576943; cv=none; b=bBzvOQWXmfWl5Abzz3/xxdv7Xi2Vl719+085Im6tl9UHGTl/WQckv2I+EB8f77OkWMYHkyDdkIHc7cv1aO2AdDRmIwIuu7ZCqWVrs1XO0n+v0BhQKFUYd7+aujuDLz23mfhLNNBepmKsdchh6iKH1KhdO2p5vAe8C7RY8gxZPgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714576943; c=relaxed/simple;
	bh=7jaRtM/Anau2dSuE3mG21osY/uVzdkOzkvZsQYoSgM8=;
	h=To:Subject:From:Message-Id:Date; b=lyYSoR5+pIdT+0RFKv7RK5h/DbRrMghYMOD4s4fzWiHopvktbTjWIUyavKXrLxLXMtRV54ot4VoBmJDFlWc9TLJ+750CNuIa3FbgoZmKntmbEUFE+CHhrNRkO0ZRd6dqkL7esH89hEuufE8+9BEpS1RGn+kj+S/tbsqBcI2lKck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfjPjacX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfjPjacX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC245C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714576942;
	bh=7jaRtM/Anau2dSuE3mG21osY/uVzdkOzkvZsQYoSgM8=;
	h=To:Subject:From:Date:From;
	b=CfjPjacX32DZgvVZfIaM1WNgj3Su6R6K3cctc3cypZORUoPp2XGnKPtqTxqvAAgYV
	 0rp5PaEgDI8OOZKnw4/WjpZcGEItOngJaAmk7q52tRZp159+u4o+pBUu+4NAq7jVNM
	 8n1NTiuDQXsE7n8IhX1WwmTRnveqcH8HCptagFLtG7rxgMvmh3ztryProhP+8Oxtwl
	 wDR3mwfQH4nDpu4IGtTpPptylwBK0h/gf31nJEk4HHF9fp4L2buf01xZE8fi3wv3v9
	 RtpfKol4S2EdkyY2jnXE6N1TOBNAYztcYn2gyirzF1QjF/7jw2pJX3Iova8DjmaqFd
	 1bAKpm6zFa8IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9DEC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457694275.4140.3078647308841527338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8578031f3bfa62b0a1070ac7f1f1244b390ff279147e4e66417d0c52effbd340
Date: Wed, 01 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714576942
