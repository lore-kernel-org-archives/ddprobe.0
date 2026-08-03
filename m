Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF26427FAE
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785778834; cv=none; b=oRkNgkFf7yOmcTCU2sp3mmu6PPcAujndvF3zHc6+WP8ULAplvKZFZwFhX2Kv2t33q0a02RX6UrfBeu0k9uaeeV2SQYSfv6Q5pXCAZaXQFLciAWgvhv7FRZ4Ag8hu4kybik3zdrj/fGY6EQJ+u18PGpaLF1/WCOOSJyv8qYFMVo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785778834; c=relaxed/simple;
	bh=ijTT56W4gIYO+I3qcbgclQBgHGGciiVCBBFCKEDmw0g=;
	h=To:Subject:From:Message-Id:Date; b=bldtrhkj7Own8hVOSJgVKhRDIsvRBwJ9B5uXyhKaMoVtGnYlfiVhQ5+8sO5lHeoF/EFHlqpDq9tJWvPQbw+JeMQ1kIJJxjuH1k+SUQXEIGfIYuGhEybyO829lqG15tPTII4XdIYx0a+3JH1KUdbb7A5ea4y5FUlKsbhge8lPdhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhvI2AWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhvI2AWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6B2C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785778833;
	bh=ijTT56W4gIYO+I3qcbgclQBgHGGciiVCBBFCKEDmw0g=;
	h=To:Subject:From:Date:From;
	b=PhvI2AWo7KDLbTkmFcIPrSqx/Q45gxEYGoF+mBCfzPvHANxQMyaxaEK+PS+s3Hyh2
	 6U1sexr4P4kYl1KOPIoCOuTKDnoEZVnwUzQd6v13y3mmkzA9PEt7cCdCZO3WGbN1rA
	 wnly+tay3AaHC8asvgn6m1CbwRcFuVU3SIGc8AQ1z3tinVDzeC5SZgOO6M73LdtGEc
	 DePgdFR6BbmS+Y9NNHT6DnMSpyJdWTAGIU2ZAvy6e4sHHML6SES95WzzmFgWMNi/Bp
	 3UN1SP6VDz6BPJVFoXRPq+mi1RYQ5Lw3RetxUZ4e4nYhDlu2siITNh9cyYd96CREAF
	 RF9GDTanADOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97AC55822
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577883369.21993.12335029549441400278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c7c3a953bce599eab4307bf6c3b14fe605603b21b2b576d7acb4d6a792615c
Date: Mon, 03 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785778833
