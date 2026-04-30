Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080A33FE65F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777538854; cv=none; b=lLCbnfetDPmWmGYBfcbFzwzgrBa0RFs3LnysQ9rPfnDlow2VbXSLZMXNgGsbrZXi2iBM+sZBLHiAYWjzpKb3WXymz8rca20QKKp0tlPJTsrmdOUthWk+HN4flDokd34kaxjJLa+iGopAMZxxTiAMyKwW0cdm7SNVpJaHlTPIsN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777538854; c=relaxed/simple;
	bh=XcLyBiTiSbsleqBmO6rjRmzAWodxAwN7FR+Eo5GeHdE=;
	h=To:Subject:From:Message-Id:Date; b=WPHRMdTH7N8J6aLOo/IQ++nFDtAl8oNFTtrsgfkZ94WIMpcOJlq10dcnQtsuI7hUhPplhYNCKV+6PtkcAWFuXxm/YPe52ta5blKcSxXgzZak7qYbCItgI1ROrH86DXMuXMmVvPzzzxKwlo8kTym0PoW9zfGDAKVPRYiTF4Kx1jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnEOFZqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnEOFZqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A01C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777538853;
	bh=XcLyBiTiSbsleqBmO6rjRmzAWodxAwN7FR+Eo5GeHdE=;
	h=To:Subject:From:Date:From;
	b=WnEOFZqmrDrr8xwNG5ajf/Kui5V2Gx4WEZEROSnFWnEET18TLE52QizcbFMa4YsDF
	 SpkcN08Jezf+dPuYWNGZrYWYhY9hZ6iIF2I22LXBnahAVoObT/OEqd9bpxoG5VCgua
	 w08HoAjuq8yBJF0NoPhVg/DNKzaVDlDfQ7wJDStIeE9EUzy3LqlzPnD5H/rCOxkIML
	 fnjGXqjd/H8pKnDUBnT2L4MrANxxnigf6NceZEJMN7yVvB/DfY+KlDZcLVgVY6yg/2
	 /n0bh2c5JtwwUNi9MfqeK88pRhcDMY0sQYihadyQ6yzvr7lNWRl8yvDos7Z0Q1erPz
	 NaznBgT2OB4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC8CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753885368.18234.8523118549667030454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0cbe7ebf01bbb9bf491e32322911e5e794d0d6ae25d9e097b62ee458129393
Date: Thu, 30 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777538853
