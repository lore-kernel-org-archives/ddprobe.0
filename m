Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AF132D0FC
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774706094; cv=none; b=r7KQiB3Jmf/r3guykozi2DFAUhpG+omUHfhA73tBZE5w1Nzx0Cez11I+knuLOfqvs4ojde5u2Yl4XPzOHJ/qkgf2Kta8p7qJid/EKkYcGvDWthvdIThFjpkn9M2KYVPkdL94UA9SymT9a6DWrpRe7q3+DicL5vjhHHKHBTqtSRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774706094; c=relaxed/simple;
	bh=QjQHN5EwjBbzq7s3cjlBWm0s/I6bDqUDLzECwdhhfxU=;
	h=To:Subject:From:Message-Id:Date; b=BAtlu33YDeA1QI+nBH4amqmXTjRwdqkouVMrBxve6EoAWHG4+g7AkpCBknJLt4TlJeor7arErhkAYT2GdGEfzOAObNn+Q/J5IxXh9l45+AmwMG5L/MvGtMCwW+Aae3dQQomEwz+tKYllVNzY262FPjoSNi1Pjz4FJ5hBtvf23AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ+y6McD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ+y6McD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774706093;
	bh=QjQHN5EwjBbzq7s3cjlBWm0s/I6bDqUDLzECwdhhfxU=;
	h=To:Subject:From:Date:From;
	b=EQ+y6McDlbLHL7Ul9xqZpbIUUTt4Q60Ux0Y4oU9CW6gv3CG9xuDb9DwMVuCdSEfYu
	 LW6wUFisp8rrCEFa+I8uTETUp8GSAwH9jtJFuabNmKYGiMdNwsIZ2oSQfxEY4LIZoI
	 dqL3OKSDUNzYO7dbsG4rkNGfNoJmqcEVXBXrJ660VPhokV9X/aCkbNlUjtdKPX7VeC
	 2vZWLD7ZXNdHmH8uwELSOoXPFi8e90q6kdiqaODdy7YlGGcstd/hA3SvUqe7yFmrDi
	 hlKK+wkQd3nMhZhEcyPfXrWUeB+o7J2d72jKKSNMecOHwu5DRNWTrcJQoE1rcpXgvp
	 znRp6bjqiGwlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9287D10F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470609358.11775.4202211055882654957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16df398999cbddc9c99a050e8cc8b3a522a06b393b441daf184968b1e896a78
Date: Sat, 28 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774706093
