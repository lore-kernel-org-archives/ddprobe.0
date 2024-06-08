Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F64B6AB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717812443; cv=none; b=s+CirBNMcwjvCNJAwOfspUXDJqnzZfbwOs2hbSGo4PiNgqg9T+OPimyTVF2yDX7O5917vLUdkzigcNX/4i50snS5BzhUqkIsFZtlKRjNEOCoEIBv8bcBAadDq3IWUvhlBb8/20VpuHMawW7dLszgCfB4sBIfL6eV3dlPjEiaAaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717812443; c=relaxed/simple;
	bh=70fnEKV/IFdujp9i9g8sfRE0jsRqxm0t1ESajKtifX0=;
	h=To:Subject:From:Message-Id:Date; b=I2obXtEBGrvpdkkXzu62Dg22ATGH4tDf2vX0/g/dBBQXjGTwCz/HoP1FmTDDMxvP6ZfkZQOm22tBKiX8YNAhdZzSbEzILc4OP1MU/8z5xQuB3Dj0D3Ipk5uy9xsk7M7a8iUJK9J+mHeY+onG28q5f7OGHf7cT19U81p9IdrNZcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huYXAm16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huYXAm16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F94C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717812442;
	bh=70fnEKV/IFdujp9i9g8sfRE0jsRqxm0t1ESajKtifX0=;
	h=To:Subject:From:Date:From;
	b=huYXAm160R+F3TFuCBxmEK8wNukThxgvlRiidgI40SqVd3QWytOF1+gwoe1OC1FV5
	 283+2DfTtZkW7Q5cz3C4rperJZUa39WYoQ5gx00CqrJQK6MI1UEaMYzpblVULjXXD/
	 eN7NDbBa7oxxuMoPK/VrxsvE/R5apFZ+ZwtMojWKkqbXz3qjt1CT5EErNrpl4j5hst
	 rwlRZ4Gya/T0J0n02muUCxbneFPaBF64QH9UobSBSg59xFbyW0WGW0sksOYK5Su16C
	 s9dseFWJRRDPDhH4IPKj/f/ZIaVr75ikTMf68AwUPOvM6zm39HCrGEZo3gq/+0erSB
	 VhCGaCHtvyVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03D8C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781244276.17658.11356395581142571060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049dc7f95871ddc755762e073452940de558e91b40d6dcbe51c505379ad0ba9b
Date: Sat, 08 Jun 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717812442
