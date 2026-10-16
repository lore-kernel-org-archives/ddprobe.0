Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F05B349CDD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792155634; cv=none; b=r1+2kVw9oJIBxiDcLmlXb7CzodH2Z7jVU1ExM96NWtC6+D/8DQgPNHnDbyMast22oSxTlCcX4Sgf8Q2j0u7zLGhKEVijUIDC22AGm9m/3xtGqPA63NigkCW6nWA12U2yzaclT9XwDZAokp+883bvYDW2VqPPHyI2bgf/WtHZDoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792155634; c=relaxed/simple;
	bh=XceMSFuoFncV8orgqnWeNtk/Im/IcEB1iwJaIcuPA2Y=;
	h=To:Subject:From:Message-Id:Date; b=H9mO5Zokz1n+9UcmG2tAdLmKfGdS+sIt9ssg2PaMy60zKGkc/ECHRBxa6ZKtbjWu/5p2xCCyUuptegEmDE3VXUpmJM//zeTnweOVeeka4vN2t594Ez3CjBFHSgZ5ityYyWaK7LmpbP5IkZIj6mrc6ohMRWR050apNu8DXkb36UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSh+mF3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSh+mF3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA138C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792155633;
	bh=XceMSFuoFncV8orgqnWeNtk/Im/IcEB1iwJaIcuPA2Y=;
	h=To:Subject:From:Date:From;
	b=uSh+mF3KaJPnBQRVEynlnzkfAPnvS/3Ub/sJfnc6W+K4Diy3/0VeEGzNAV4M2DkOr
	 GU1ztiU4TiPthfl0ecP4LXyrDPFY4zFinX8dr6dtSph5D+x1oQ2JgdfwNrnzg6dGRI
	 iqrE7HvevqaX16fAUX68flCY1uuqMjXVmvGdLsdpGP3M8qIcWMOX7hpeE++gN8zerS
	 u2Q9FinTejVk18FmIvPawzFUtOb3mGj7AfByuWZ8FX5znGyhGdErDzTvGWxRLb1ucX
	 UXNp0ynkfwE/KjKjO5YWMJ2WYHSNDeE3LuX5JRQIZ05wcVpW9jxrTNP6WNfzt4eIKA
	 FZExR/iUPefvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19AECCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215563369.12452.7889450632872093055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87b900f253ae9cd928b685051b96242b1e983cdd642b310799f7256f5cf2713
Date: Fri, 16 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792155633
