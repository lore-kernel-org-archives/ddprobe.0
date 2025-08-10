Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147C81F37C5
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754814594; cv=none; b=KlZ6HAS6tJ03QfM8naVM4j0zqQeULpveGZmiuyHZX8oFzh7VmOqlVsvS58qjlDkKuj9xoWzuJD3ud93bTlz33cjP/nAkb6aNsVy4RP+qt/jVTjL7vLATXjWrDeD8GWtgLNMSdRKfv3Kdug35zPsRv1L+8C9JzniVZ5mTTpKA/HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754814594; c=relaxed/simple;
	bh=h8Mxo7AjV4dxC69rs2B5MCj//XC02o0xHxm5xPv3+sE=;
	h=To:Subject:From:Message-Id:Date; b=BG13jRY6axor/uLjqL97eees7UN8I4qKG1SAyj1QnRGz9M++e6EEtFuqTEbHP/iWaTyoQv7XttB2jFxbLPNyQOZcf54wsoEjB39hKfSVRFRZmWg0TSPSaPh5JmR93nb+doAruKa+ruH8fgSzz4xWlQoLOugcnrHqvnZk6D72HpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TknerodM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TknerodM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A164CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754814593;
	bh=h8Mxo7AjV4dxC69rs2B5MCj//XC02o0xHxm5xPv3+sE=;
	h=To:Subject:From:Date:From;
	b=TknerodMggIciLmjCF5IjomiieoxHWdIq+drWkZMFe/huPN0RhTynqWzRdiP6YT6B
	 tkqf6s1c36LZl2QBTSTb0PyprEoqL2UNd+LQOlOq030LOZVCrVRyU4u317BXYWZqW8
	 XiX3fUiaXyhibjHzeX7ZJEsnPyfztfTv82ysClI1CmDrdm4D1o3ad3vuq/gA/Gz/xb
	 ghHPVwHLmPKFo9qe+QgJu1TDshG3ctjv6GTYn0bhXXhncSNJud0qXULnxwu7oaROiB
	 FCb3GmgvcUzDkyK+nJwZiCxzXm5oik3HQzIkQE/JIa260S/DwApfc4yaRa6LKknKDr
	 9b1fKO02s6hrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93673C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481459358.32438.12134955425568216411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cff87e35f7a777045ccb168937975f7e4474eb26f62165d5b28bbff586073d
Date: Sun, 10 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754814593
