Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2424826ED5C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767419034; cv=none; b=cHqDNO6ZbvhvDKmkQPjMcpavv1Wdup3SvahPaDGsRqGi6d8iXEnJOFa7kfACf19dOEy/x/QVxTShBvpe1+3ksHynb/r/eE7MyY51BBdHj1P3r5EEzX5CnvKRQ8gFEKhmSEZ9+0p3qLSCijoVNbdk945G71Z9czu8Gkv72YqouQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767419034; c=relaxed/simple;
	bh=aFffeiEb1nRCvZvbCyZTVz6F2kPi3pC5kN/TFvOFGbM=;
	h=To:Subject:From:Message-Id:Date; b=byESR9tFfviNFjItyvplpuBz5QDfAGZ6Yz6rhZM8mtIGED10zutCKrSz8tsQyASX3YZXAOj1ohDathxh5ySvTNLVwAyC1uOYgYQz1luEZR+zmnnoacSjj1igClwFeUdCaTtY5a4I3dPjeo2wv0j/D8vrOCQimDU0qOvfFgXgAj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTdh1Zpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTdh1Zpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E5FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767419033;
	bh=aFffeiEb1nRCvZvbCyZTVz6F2kPi3pC5kN/TFvOFGbM=;
	h=To:Subject:From:Date:From;
	b=rTdh1ZpjW9yDouaBQvNn9UkAbTVDpDM2XBl/KOvtvh5/7jRp/pbYYlX1gXJlSP8zA
	 7lgjHX7brWjF9GVrSglozj7o/R6cCI7fJgHWFL8PeNKe44uAC1y8HOQFmfkkvNpoNc
	 KqvLXM/TrVmC4CamrlBy4Cuh4MZIy7oMGr4QFByhdDYBII+mbky4efDflB68yNOecZ
	 sNjWrgoPg/WKRriNAXfuHf7IlTAlf11j0/8PFL8w0ot3lItzUEjmt8qG7W1/Bcbt+e
	 0A7kOEgfftJmnDIgUlERkuCKk+ZVQxV7+5jhhMx9xdXq2E34dLKtcF1jpFKoLc36Em
	 1cclFLn8z3nmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92862FC6174
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741903358.22312.5051869242008272356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987d6346ff31dcd9b7c4fe924a14799fdd89a5f298aee3d24700e1a4562ac7c1
Date: Sat, 03 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767419033
