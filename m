Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3148438FA1
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726596354; cv=none; b=X7r3kgY1taWA7F0pVVieKCt4fYEG6BLItFIaTC5CtEEjqmlTxRztod3SHCasP5Hi2zEWttmR71zUGPTJrpiQEtlBRw5sUGO5w2nFsA43juQBw397n6cQmnPCN70qENBh/8XYMZVIh3coJy8vXQj3vw3bH40tNKPHsz1KQk1lLIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726596354; c=relaxed/simple;
	bh=O+Cy5fR8gyiMUV4jMwri+ybWgE1hjT9YcbDTY+Xf72E=;
	h=To:Subject:From:Message-Id:Date; b=AoByxN8ihw/9cmRu+CXNwOuGITnx4kjK5E6yig0mtfA+Y5DrppSCYlICZydnF508W4niROagDOfSBRtw4VPeoR66TrOPLJ2h9pkIaAcT+uZTy9KgUtZfGM8o+ykK6D/Glp41edz3f1+ATw17Q7G+n674qWS2Mq29Ozw9FnsvLYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZb5j9n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZb5j9n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EDDC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726596353;
	bh=O+Cy5fR8gyiMUV4jMwri+ybWgE1hjT9YcbDTY+Xf72E=;
	h=To:Subject:From:Date:From;
	b=SZb5j9n+lWmUY95O948VlOscpnknGVSiY9z3116mAfjtOz74VDuGMG2aHjj4Bqwyo
	 XitC97M/HCM2t3Xbuf+5/IhDuzo+yodID2gbDoJIDOanf3hFfBxLB1WfmV2C2/lVG0
	 6iI7lcEZCpQyHjaHa+TZpj3PLOZGylpuJ8BM6e+Id7PM9LSY4SDJtNVzXqcgktOWPb
	 Zeo3J5J3lYp8PynVKwNrUhJ1X1WThDs8QRcySxAeMtv4EhhT3T90plcMAVeDiFkdNQ
	 i0yIgHl8GJb/22zs72O7KF1VemWKPZTXqpXDIX5lKdPL+J3dhZxDl8uGxEpBXnjM4T
	 JPxT26DVfBFyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBA7CAC593
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659635363.2474.9201160763473920505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83b6ce15baf7cc8b143e5f951534013ec8ecc291a79f17dc4082233b0abd362
Date: Tue, 17 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726596353
