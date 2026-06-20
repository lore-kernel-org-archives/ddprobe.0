Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450B2134CF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781925994; cv=none; b=bQUjXeCZ/LzPTA2juSplgKmq0Fh0UonfUUsfB5qAvLntrF3x/TemMB8HgbPU1RjHDbzHzGdj3BlCWBkeZbSK7NsDkk7Y17HXQ4YOchhXnYAHKR7IsPtOAe4YrJKqfA/9nJmU4SCw+1UWN40DBXSe3a3PP/h66cTv0D9xn/LmyQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781925994; c=relaxed/simple;
	bh=Pcpl86VquF47/giVrf9fvZbeSVHFflP+tKbxuLPK3PA=;
	h=To:Subject:From:Message-Id:Date; b=OR51adR/K9RfGpCr7alpdoP1lIQZwxai9bs31Ou+Kv/obO7MRC2qU4X6IJLFxDAjmi2jIn+bfTK/rPx4Y8Jm35+AfSPg8XqszdwYbkpskT98f9JkdOnn3raE6RfoLcCHc5OvOW2fGQ7RR+CQZP51LbcbvOHGTiD9wE4W7rSTPR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak1SPCzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak1SPCzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB49C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781925993;
	bh=Pcpl86VquF47/giVrf9fvZbeSVHFflP+tKbxuLPK3PA=;
	h=To:Subject:From:Date:From;
	b=Ak1SPCzAp/gsQY06L+5Px3RTteRjJ+oMoW/9sgD8sUYDMzl4RPGymf4dKeY2JC5m7
	 nJiLkTwP7FdWczKGsnV3IduPE1ZnMPuaISkym0CLFyx16vUBlR1LwwLvK7KLUuFu96
	 gOBsnFpqxePyA/zSWqz/icDMxOWOUu9nju5UhWd2sQjFzgcDMskvc5u0peMzPAVIBw
	 UTWkCsflS+j7Vg/JbZi7MmjInEFflDCMvAWkWLSD5XnnjCo1ZMfXIy1WJNvJEenXek
	 EAF9E+G1fKR9suZHRgNXWAi2jofAtq/4BrYBhSLoA6G91zkGniKqJ1UEU10r/H3Yk5
	 15qX1r4/ZJf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6958CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192599372.2224.6737255463039786573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03f3ef9678a862658cb9a1ae12d449cadb5a26941ed5f5a60ef83e968a3b05c
Date: Sat, 20 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781925993
