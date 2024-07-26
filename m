Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30081225D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721978154; cv=none; b=qV7cSSfW0ocqAphRCnHAlIXRwn5y7gIVTLD3RkEinZ3sJD4YSmuZRrZNng57JIXS900yvBSFTnvXLSVZxAT0/c+j15L3Tz47AFGsuo/6UaeDsA/rG6cQMrD8EsygjT47IT760PFVmCckTvkZfUfmpjX9RtLNBvw89KE15nfjCJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721978154; c=relaxed/simple;
	bh=yhrYGc4XiFf8vqt5YhR0h7w+JOOzVHt+L7296J77M3g=;
	h=To:Subject:From:Message-Id:Date; b=m6xt9R0CX7CkHKJZGTuoWPkZPzJgqyExPyFYnrWPxxJxqPxYn+9YjKjAw2ayfIU2pB8P3ejrp071u/ZG0/TAvQ2aLBCoGF0n3g5IopWmIpqGgdptgP5QvdKI4/my5t8naJlcm6u3CVRpbMDsct55ylWTiRZuPqs8vWOgTUPsPR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRDOK8+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRDOK8+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5667C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721978153;
	bh=yhrYGc4XiFf8vqt5YhR0h7w+JOOzVHt+L7296J77M3g=;
	h=To:Subject:From:Date:From;
	b=DRDOK8+TYnmPlGwo5fnHzsuV88GnO0xWTtEiiTOVSvSqIRXeYTZrNF9lQ3+y86MkX
	 lAwNFB2nqOro1+cV38cxsLyvZfHdL5qU0L7WugS1/INctbs/Jnt/HpgqjsjumZwPub
	 PcfJdLR4O7zFYltVWAA9bbAeNiIDCeFMm9zLSbEHuvrHL16pKK1P5aRLvra90Ycg9C
	 kQL29yNJFiqREURc6TlQRh1nZCJERH6Y1ztanWN1J7K/mf3uW3PBORlQJ0shQOX+xy
	 8b34xe0qgeV7xuSb1hP4XZv4FOFSB7n0HnL2UdgxKsWYkdVYVAxrb78geKicTfTMUw
	 QgdYieVe6XyqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEAC3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197815360.1405.6212840693055407698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b62c7787fd7ab7f31ed53d59382ee719168bb5b2cc213ec50cca51b63b9a896
Date: Fri, 26 Jul 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721978153
