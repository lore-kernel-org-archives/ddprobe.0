Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202F18634F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759615195; cv=none; b=X8SCn506a5nw48rvneGryDDKoxgZAOIsjTtLHH0/SptB1zN5mSNCkdOBuB8uW0qTcDBMxc4mfWoypYTzZMsXBs7wwPbzeGkLzK0mDjXIElGi8qDNc564GV4Lm6T4Ny5S6nBJSTVQR8MN03raI2PfKMVUWK+mJWEhAtOtMnYmTG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759615195; c=relaxed/simple;
	bh=gm7COlVzPS327xObtnocUgggjAZnhxTK5LVApqivfh4=;
	h=To:Subject:From:Message-Id:Date; b=Gf8LAdNrDuE6B23z6EPuv1vSb61dkB2EaoTnHFoffwjJiiieqrehaJrll2jih+Xv1CsunLiYRtc20ztsCSaVMibPJQYRimdxP5G219EWddjv123R5j0ozXn4Z3eN92dkjijRPizLCRnCfOErt/AsdNudqwKwwnBloCqgnk6Q058=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7iQ/yw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7iQ/yw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759615193;
	bh=gm7COlVzPS327xObtnocUgggjAZnhxTK5LVApqivfh4=;
	h=To:Subject:From:Date:From;
	b=t7iQ/yw4LqMg1S2nctzRtT2U1AFj56zOLXcy0YXFpLVcRFfBEqPUXtJ6Fp+Iky7UJ
	 OxIJf8d+M/x4x7KBdKBWKsUhiLrLXNjIXlgvpxN7tq60/plHgEKLt1/O5lQXp1R+Mr
	 q9veWJw/RZGYRCxvfPcIN2kd7X771XICvqs73fwswZG4gsZi+/QBXil5Bvyua6pQWb
	 aE8IwMlZdknS/Nkm7m371IJz2SUC1vp7fAw1Jay8+TYD+x5G6D30Fekc1Nv0jZN0oi
	 2tP4PDxYqlKlEnaiVOBu8SLu1zfQ79ioOR4efH2zoGUqnTsUP3PHASv4df6iogiEGw
	 KOZUe4JzSoPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6ACAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961519358.14816.3910912173084490740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714a6421a2ebd1c744febc781f3cd7b004aa9ae0421698465e4428810b39a996
Date: Sat, 04 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759615193
