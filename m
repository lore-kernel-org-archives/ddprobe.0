Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149202566F7
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756589994; cv=none; b=KCxPIGCRQzbnv2OW39IpCkCA2+wdjHIYySVT9hhE7aY1Rd8UqpgNywe37Rw+TIUhGiWjV+ZK8/Z4xY+4WdLeIe7PtRxql2hT8wvNcNmVXqvohEFmcgL5mpCrZQOXymAiJGIlQqKBWPs1UCVHniqnLlyXQCy8gmDVpkzb8BECt7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756589994; c=relaxed/simple;
	bh=BadOPPnfFAye9dWyRPooXTmJDMGZXAKDCNGYlgMrQUk=;
	h=To:Subject:From:Message-Id:Date; b=uJShtwVSbEZQ6qSvifdchuqNyvsRB1s/lDI9xo9sYPPppMvnFSUtC+9keC2X1M/AV1YXARZUUds+fEnoz7W/0P21y/fQfC4r3xHqixRTiV/W/tQ0+fjLykzxWZD5ZFSlLh9jlaaJ1xjGeUjoJI85KVD8YyNlcz/NIWm/rNok1no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRZqCC0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRZqCC0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3587C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756589993;
	bh=BadOPPnfFAye9dWyRPooXTmJDMGZXAKDCNGYlgMrQUk=;
	h=To:Subject:From:Date:From;
	b=TRZqCC0TE8cJ2dA72CljM3H5BpqTSjqm6sqjYWFlS1/q1ypzzBmUBSSwpM3MJTEkW
	 VYRLaMi4V7zoMLAhsLC/3lJYxLxkyrMACwhIZ/hbfaZ/T4qH6Bqlutp38LnCXfgzIo
	 Mfexsfy8i6PpBw8evddrqR5QIJtr8lP9q4peagj/kDKA2XzomjSJLeuwtTyaXmEU/Q
	 tAq1nF8L8zEnRM0eej3UfQac6ub9rov9aimlH98xExTCXNAieBiQSQSaxkA2SI1msu
	 sAJMlHP9KFWFaj6NWvWIT0JTsc+72TxYfm0jDYvFhQ2nzh9bn0zLMt9TBREVnoUmID
	 tdZmAW1o2pIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91351CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658999357.11983.4715842531633345901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896449cd02f38dd1ba055542ebc162b0fa42156205c6e8528289735351c2f0fc
Date: Sat, 30 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756589993
