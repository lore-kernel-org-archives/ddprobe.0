Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626A915B0EB
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716961463; cv=none; b=HofAXD6jYvKqQYwyYkkHCkXhOpnHRPJvm2PgS3TVRK6Rp5eUcfznMABmA6CWEw/FkFLTL0QBb88WpHoPjJdScar4kVOT1r27sKvGnynI9bKcIvHUnt7CkwFujhrvU0Fc1xXU0YBpFgkPRvmhzR4wKhnYZdR7+9wSIByw/OZj51s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716961463; c=relaxed/simple;
	bh=z21QGSJyjMXRRwUVcBZ3bq9sNR0gAcJKdmaf4xZ2cqc=;
	h=To:Subject:From:Message-Id:Date; b=m/YXsx7AlMwZP28BTIrPgu1h7B+s2o00batseLU12xdUI0YH51rfYffdMUmOcm1vSH23O+kOLUPZkbpwofjglANZdIwar4hPFj4zIQFSIr++Ka3U8hW3Sp+6J/eRhBQXtMAXmA0OtEhXzl2Hu5Yh6ibgNTdvwVcNOA3H/1smNL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1SlcW5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1SlcW5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99ABC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716961462;
	bh=z21QGSJyjMXRRwUVcBZ3bq9sNR0gAcJKdmaf4xZ2cqc=;
	h=To:Subject:From:Date:From;
	b=k1SlcW5IJ3QYg00Bi26UL7Jqh6UmUSR3abtnn/ftyy4V8w4FhU96adB9ILsh99wKA
	 uyAqav3HzmaOmqyQqBz5MwLS/zHrtHxo3SoVjtEvYt/T71GWq0vTwgPUQ7TYfXGbRR
	 8ulDvQWbOnCCpkFrPE6GRL2+VQWM0N4mLAj+yx3EdDrudQUwsqvZfsv7kDNQLXETp8
	 r/IEa+evPW5gDJsKRCr7hZGbU4PlLG8U2C/eJT37rI4bakVWX/UZdsEWCGTlN0SZaR
	 +DYUHU7IUYTahjATFFQGiZbdtPaYVPY9e86IXNHAu1KQgLvJVLz5ZR3gBxYQFzaFK6
	 d1uv7aztxJOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE362C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696146277.26983.1246891978732361852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317530b42ed5419075ee1d13a4907eda5fedfd31d990f5a38c8c632975d47f5f
Date: Wed, 29 May 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716961462
