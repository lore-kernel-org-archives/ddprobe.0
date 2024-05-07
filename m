Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6092019E
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715041343; cv=none; b=eVYZ5xuKmqg0fv+JJ+7mKgLpLo1L6bveg0wGvZLsccW0mNDEXO97xxt2SrMmLGXeK6xGllJhFWtAkSXeSyrV14k7ohZ+M7dI9Jr7j1V60LvO0MFd9xEMitqRc1b4LsxH5AHAWyDe5IA7E8Bx7qXmTP9ZQCq59dYnR9v3/4ytOJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715041343; c=relaxed/simple;
	bh=DoBmAyg8cuylLP+pEjBh4zZDhLZHT7UfkZjH5fzTH+Y=;
	h=To:Subject:From:Message-Id:Date; b=on45/XNUsYwQAWKqvauL5d4DI9uFkf38CC09/CHwDvdRSzBWOK1qjESHRHtfxml7ZFVXFeuK8XepBLo02peVn4Gv/FzRWXtNeICMyjgm7Yo9MhJDr5dR74k6ZfmOqafZVbRkMGZFofW8yjJrHOHOnQyYxVWHoixoXSvYEBjZ95Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Br0Q2iMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Br0Q2iMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAD2C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715041342;
	bh=DoBmAyg8cuylLP+pEjBh4zZDhLZHT7UfkZjH5fzTH+Y=;
	h=To:Subject:From:Date:From;
	b=Br0Q2iMUX9ClykB6mm7Jsinp09/qbfPzKQIngSoSbZkMVYjVv38tK0oE4oZRmS1d3
	 J/EzA7CX0MUbTmIlkETudd0VYpouHvHZioqCb9va2gpDGr0Dg4BXNL5YjitAwi6422
	 0A3ZvzQfOW1XZ0xhp5vUX2acs+UyvxLyqKrhM3OeCFph+b82SyT5Q4Qa8GG/aReRsC
	 lsR8q+slqfQ6Dn3QLm264LSDG3nZZVPHBueUi3ot9CVcCezlLET+B8h4Wl2I2Lz0vP
	 D+dPX5peG8ue5HA29iuamyUaKsa/cyo2CbTm5ddQmeFbbOdYFklJ1TGoq5fgiEZkMC
	 eHk3aKMPp1agA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D6DC25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504134278.13874.14262653827238217998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526e876241bda79e4a15c417b5ac102e15016a432422ff525da015ddfbcc2b17
Date: Tue, 07 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715041342
