Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3228B1B423D
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743774594; cv=none; b=UVBql1MUfaz88VW44FsWogSC2QUqKpxgWwEoxDtoiGNJv37qP2BTdeGOStH6pPs/pKql1lO9W3X9yot5kQfJlt9QUJlXwJlfklWPwSMnzMOROufLcqnckHiKKFrEfh16q5h1hAsg2nLgjxoxz7BRvRFI6HJ0u5qhUY7OQ8djETQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743774594; c=relaxed/simple;
	bh=Jb8wxf1hJDMJbYVzvF82XjfjPfww/CuP9wxf1C8WW5A=;
	h=To:Subject:From:Message-Id:Date; b=LCKA0cNlxb0D5lZYsOqRgMtVsFNLYcus6JzIinhBjpVPGX+S1+/+sqDS0pblK+kLnA6Tpe8aj1WCALgfMO+tMPP/GajrADzXEHDyrtwIDiuXoPFpTOOfE7V32dSXKD/sklIA1Y5F9sIe8cr1wscLjni3aA/JgBE4pnsQf0vK72I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYv3fR5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYv3fR5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743774593;
	bh=Jb8wxf1hJDMJbYVzvF82XjfjPfww/CuP9wxf1C8WW5A=;
	h=To:Subject:From:Date:From;
	b=mYv3fR5d2JrXxsSt5XvbDnMoPTBIQl3Z91fgWXb5Xx1NGix7xOdtJMLUS7EHZSsXv
	 oQnJmDBsSvuiqJy4wpe7EQTHqJtpSIcV2AEsW9QQfpGxRPJ4XOTRQQE69mVs0TJ1ij
	 LVlAbANstqbKtd90gZ7W+d7xjsmqLArPGkbWLnmdA2UGo+C/mbd9Ch3gKEtW7bVAfw
	 Pq5BDOmygefh0CIkBHU2QBF/T/RHiVFh7HvLHK2yVy7yDcUoVopVbCCsci+g4aVHqq
	 9DjV1hxGNIlCjO23/GT5eZGpnKWGLF+jcSAfzaLb82eo8gnbztJzUO5ROxqUbjdIfS
	 jd5JqUdrxMbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F4DC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377459360.30352.14029861622098408850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbea4eb6770e8c7eb50c1e478f904d0065cc5d6c83439e195d2bef8055dda007
Date: Fri, 04 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743774593
