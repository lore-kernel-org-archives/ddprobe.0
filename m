Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E17299931
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766933034; cv=none; b=E77y4+Q5ObUDOHHfJr4X9dBDLtnDpgxM9lpZelw2VnrYh4GNxt5DnUaS8gkLH5DH/XPy3UC37pgJQJJsfqBtT3vM/Rgh+gycQvX405qc/b3VFdOVZmMKaZ7+eBC3qs8/sG6NB2G7642LJyeBlPoHX1in+iTTtIDARuLCn1/dFFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766933034; c=relaxed/simple;
	bh=rt+et0S1+hoe+rRIjPddAyJF5dXDbrE3dsTdwx5zMAY=;
	h=To:Subject:From:Message-Id:Date; b=KocMIUBETSjLroqxfIMlgNTD717WWuxXw+sLKvwPNPAs6YbdOujc+kfUBRx5n3n67DrjJkDYEy95FER/6yDIsJ1OZhj5XY5+gjcZ6je/STEmvpb4XOss4ADVaaZPQAg/clowA/OHyV6quEHMsoy3eZaO0Js7S6DdWx8MaSPGm6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMNHTzFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMNHTzFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF33CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766933033;
	bh=rt+et0S1+hoe+rRIjPddAyJF5dXDbrE3dsTdwx5zMAY=;
	h=To:Subject:From:Date:From;
	b=YMNHTzFhJutoYrWJYDunKB8IJTFr3BZC2+TWxl17Z4gE9MGAcmJLsyzhQlBhfmeSz
	 zzlNKBjrgImsxRXhmtCMjD0PhNQvF4TZkaqJ5xpgr1GpHb+3Sj7VHek0SY7O8ybeDf
	 ehWtAYY3a73n0OUaqhTS/QFOwtkvC5uUlSQavmazBkGlplF2lzk0HDymxW4XXd4dgr
	 gbBowJC+npQsqueG55BNoJAD9RHEGhd/jrqqJKE0VL7UEJxIC4vKMRZpBusAbVnoAF
	 MZDhTMPRXjvpdtShyRlqsPIPH1twJTuDkMvvH3Ci+p1ZStZJOlRDQ8Lx+ZMx8GtYxt
	 FBs1N48GJ/w1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4AFD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693303358.5486.6005216161548246768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3a575571a62691fae509f2d39c911adac662323e7a57682afdc5a1271aea1b
Date: Sun, 28 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766933033
