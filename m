Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789F92EC0A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775745454; cv=none; b=om07Y8wRNWc3zGWl0iJArxSK6p0hjED0tfomtA2ahFAvyxYp3EuJJQurfnoE7KnGgI1H8YwTyOANicP4tgLFEB4/mmTwC+skIMMdD5k21pMmuoYrr1u7pOQj/QOb16j1uLpxsD8Z55bNM0p+/mSNsgTwIzzA1gL3Qr2+H7LrIuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775745454; c=relaxed/simple;
	bh=GLTNMOe9fII8ZX68U5tUEILE0vMiEzoneCl5rQ8qbqA=;
	h=To:Subject:From:Message-Id:Date; b=frRTuujjjOavZTBqinjUAkozEsiZbrHLeT47DYKYkmpnl731AWQ7tEDDbHsFEt3/sz/vbUrYnwpT9TDOsyjBSil1LWsEZIMQvuizGmPlDArIbZE2ZXNcepOdlHV6rQYvIm+i4ni0w+csCOIOYal9UoHgeZUDfmWjwWvFp9QvCbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1SvEI3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1SvEI3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29C94C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775745454;
	bh=GLTNMOe9fII8ZX68U5tUEILE0vMiEzoneCl5rQ8qbqA=;
	h=To:Subject:From:Date:From;
	b=E1SvEI3wTXvul/0YIkIA7kPkTQWc4q3BQdzfTK3+Rvf0Pa4KWIqrWc+sICghKIXtS
	 3RU8CcR6i3vD5oTNk1p1hWCmEA8/uuLJB6wqWUL9AzrooF1c1G47QxDjhPA7pLSGze
	 zFIT8psXjNwRpY22hxb0LkhEF9LIE4NkNd9SGATCUfsBfhg5Y0js8YhZc9q3iLP1Nt
	 CcZXha4Xzsjdobhffcb/Yt74C5+Mwy+U4B0cwXGMcvAOn51e+9F0m+1Ekv9LmFKno8
	 17NZ6p7kK6KFUrDXXp0D08d1OsOPqUS+jT6JBmgNHUjGXM9iWA8DqdNdOU9qb51tuP
	 Y2Np5UloXBR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8F22F31E24
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574545387.20711.16452835957093256721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0e4bb331b052bc95deb20029adbcb7ead0d63db2c78144bb53d179b386d78e
Date: Thu, 09 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775745453
