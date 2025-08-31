Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF2D1553A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756616995; cv=none; b=D+5cGMlysUoC7plJQXrpRDbkiKyNMhZu/OwYt8i9MB5eVdVxagUS8Acl9elzWqXkueIfV12e5kZRoKbnnQLrSB+84qFqqd15NmxR/3HgbV0M38MkwJsg6nnzk42GY64ThzGi3lba5SPkPKkVo+32/xTWqr5oCcnrjwvHTOZz/pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756616995; c=relaxed/simple;
	bh=ovOrV0py43f2oGVF2nAhh1/fC8aekFHxwrKQi7CTVnI=;
	h=To:Subject:From:Message-Id:Date; b=DvaCJKYBG7Is0pmJ3RRCsd5N0z5NtYEYZy8PaQgCjgV5d8hGieghOYHV8iuDwInTEgWycupeghmaCiAbvZCfR7ex+jRQ+Bv7mSYFGDCNJ77KzVgON8JPVYDEyY3oeUp/r94C92Dvj2Vdkq6Yp5l+3nJFL46UZif9+H88NF4+QIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5s8/rGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5s8/rGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0986C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756616993;
	bh=ovOrV0py43f2oGVF2nAhh1/fC8aekFHxwrKQi7CTVnI=;
	h=To:Subject:From:Date:From;
	b=F5s8/rGj5wN/cOgSjYfxf+D49VSxrNSwnzjQ/asTJZDNx8P+knGpQIaBC1xKe+eZY
	 Rgio3lw1HRgpENUxuYdVvF0Ml4dQQqE/80EvUxgU1TOPN6+eO4d0R/Sk6Cmazr6mA2
	 GXFG7VIklAAepTa680FhIPs4tjAB6Zzm6VJ7oAfzhLclAPmHfuMgQhq7pvTNcaVper
	 4W+qs2vSzjg/S/pXTV+oFb8wOGTzBgmMO3RE1D8culm/8Cd0BulVwRvdNJaipMXhzJ
	 wACv4+U+Cr+af04QVy+UwISYjI/Vfltk1oDT3Wq/tL3Rd0D3xq9b6Gl16bEBFDaGvG
	 9eFcIno/ajvGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA0CA0FFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661699357.8960.10902495638973591394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5f11a8b6a05aec65f7bb2c056a68c6e2af02306b494f2274fcc30315d6d239
Date: Sun, 31 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756616993
