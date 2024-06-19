Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584772139D1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718830763; cv=none; b=WzYwLpAWuJOT2ALVG8gp6YGOPnoJRyKfk66IYjqJvE8Llpiw271v13LhtzMSYCbGFclWjnQN7qBv2W9DmGsFEjpaGZJrhXM2h/tQ286Q6SN2KvvcjgUpCa9G7b+ucYUA9rsrStx6Pcsb/VXzNZ0mjOV9qm7AlKc96Us/EUwCvNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718830763; c=relaxed/simple;
	bh=RXYJoif587KPKlf8jTMe0sYub4j5n+zWYRIB33KVjuM=;
	h=To:Subject:From:Message-Id:Date; b=EFjVgGMXsnzt54CjDwky7TDMmZFatMvABbjQ2/Mpua/xyKot2g5NJ3b9epiApW6uPIGKuQ+l30FBxBbDjrqprugQ7OWxsMaYDKxAwNv7Shv9SwEQTpmQDWZ/Plgu8Xvqzqi7FTPqhs8YApYK//cumD7unNzxpxWb4xGvnM3NpVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/dV24mJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/dV24mJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB709C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718830763;
	bh=RXYJoif587KPKlf8jTMe0sYub4j5n+zWYRIB33KVjuM=;
	h=To:Subject:From:Date:From;
	b=r/dV24mJ/RgpeMxYtLmUPA1cGVQAanudGLt+1lGR3Rx5WeLq5KrBOu1Jj41KF0uMq
	 8Bh7jJu0GpP8VZGDcsoagZcL8hKZvpUb8mnF+eyDpYuAC9lEdrG7sUHKzEeHTV3DxJ
	 1O8cNqQoRM3oN746OVVuKLUnqfp4GemorHtmnVPydz7TxAmHOTR+iOGYgYOg6GQ6Bp
	 qcAmK/D4GZTW86jAaZCZPckIfXoTpTjBzbUzcrxWAMjfNuXz+BgFicHQyUJ0B4PYpd
	 Q0l0OK0UoEMURlUwCVjxk+iahLrILhnuMPuK/INKuEVJr2uxw+q40CudZGq9fzAcY9
	 e/xcUPZV2aiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4AC3C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883076281.3297.3966267646915247982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76b06922f786f62c18cb4140d147906d5b53107623bb328498f05f14fddba07
Date: Wed, 19 Jun 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718830762
