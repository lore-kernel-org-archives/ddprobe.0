Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070B741C314
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782826114; cv=none; b=qrJnHvpKn9kTMTEQC4OUTZCv7U9x5YAclUiY/huP66s1PKpdi9ZUB+1hZJdpJTybFfB8/zW2kTFbqQBb56p3KqCVQZ0CD+5Ost3wq98oAun17p3W7EsjMvvcxg9MWlO39iD18pgiUtV0U/tQNUm2xDKgrWNQSeZ7VHFZNm++8K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782826114; c=relaxed/simple;
	bh=zZyvNbhpzjUM8IrDDpLK84/RzxSrQ7oycb9PvhgvN5s=;
	h=To:Subject:From:Message-Id:Date; b=BEFQDEUN1XSrjUyIBGNqGZpGhvzbrhK5+FtYKvGBd4qi9MEyLoL6/2YOkkEfXt8QZ1LOrjDVxwZpcuTatGJ3bDZeBFXm2X8uSriCHNvI1lxjMXmqzzRInJ96gaQGDdAIWIv8tewtPHJG947VgqxPicV/70oFkQRyPhJ6sEbwpR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecdWntbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecdWntbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C427DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782826113;
	bh=zZyvNbhpzjUM8IrDDpLK84/RzxSrQ7oycb9PvhgvN5s=;
	h=To:Subject:From:Date:From;
	b=ecdWntbj95vmuseLSHt0r+xtg6unR7IUU74ceKLcVMZ+C6fkZkdwHzo57p3o5VSoH
	 ezmRESOc3D70fYWsJ9uHP19B5lN9pdhFG1L452utBAOL7vtSL70Ht75BUjrk9NXvT0
	 UsP5SBiEHH13shO1bVi8zEc1SnzzYyTW/df30xCw8cVj0nOeAdBECSTdmwYFABuBvj
	 Ud3hiwrH9gsbocwWwyb3RAwnRyJG6dWMdZtNGzpK2SWEW8p67zbxTDSNHTAvS/VmJX
	 RpeKuP12szovCNDPiSQWqKmJbRRjDCBO9E6iHlVBXCW3I8TsZRMMEFtwVE8EqS9k0D
	 Vz9LeyGHmMpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB58AC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282611369.426.13226921948079512097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6184edcaa9332876e0bf7e5a1a100b7cc898d20327fdb8ef57e08b53f2025e2
Date: Tue, 30 Jun 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782826113
