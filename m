Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601E22040B5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738713354; cv=none; b=s9rGh8b556/slHKbj6kwDoB4fXaRc43e45PYIb5qqHctvGDPgCEruVx34aWkB4qz0JIwJFtWn346Nkv7PZTQCEK9Ja6BQPvFBZykCQnbCStxkT0y13bLG1n7sM8p64ltdceKmZrEEE9JAJnF+kb8nntubKpT7exHSIVtJ2oTeWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738713354; c=relaxed/simple;
	bh=GjDDD3xg7KJSHYFRLO9hqu6mndnMGJfRdjyFhFMh5t4=;
	h=To:Subject:From:Message-Id:Date; b=O5KeeCUvoQ6ws0G1eg78DZjU5/KwUZ5knVwYk1xrz48Erk2tKcCacCkWbRQO3MnjoGzjG1QT0tEQZmXEjabnTH7HYSgx4BraZhjydeEysdv6/6CqXV5XriJfNxbNToee5FyT1+PtB3qKcdczaaoNJXfubi6MwU5vY0l81uk3ZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3uibFRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3uibFRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C7C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738713353;
	bh=GjDDD3xg7KJSHYFRLO9hqu6mndnMGJfRdjyFhFMh5t4=;
	h=To:Subject:From:Date:From;
	b=g3uibFRXQ6XzvVY/nPFL2Vf28xI/8s3dTfM8fyecxyK2DgcuZj1xg/7fmNnGsPCRV
	 sirIipMpKv4MEa7x2ySVcTMBy8V0duCT2qLVmcJX2uJL9h8fW1ldwCIqpQUFnBSvkc
	 mFowYFBqQPzyrmNHwYM8WmD1j1k/h9DZA4Wjdso1DmeAXOaKXQA8tN1pqaEe72+mXX
	 mi1uw4osIpxTvBDoGgZzDsjXF/NOQYbzFkQio0/uhVs1Y79ymHQ2iHycg6dWAR6Wqi
	 F1ib3sdxFqR6Pap3mxbUCf9zEC0TXFESH/NvDmkZMKH/RjzDcZENiVMrCNPOXUsDot
	 Qg+1ZazVL3PsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6DBC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871335359.12989.9742196751833404394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e326a2092cfaa9866e4321e65ec06454c0f87bb39c9bdf1c3088b03cc07b688
Date: Tue, 04 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738713353
