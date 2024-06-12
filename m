Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A9BA93B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718233703; cv=none; b=m1h3kBomZ5NHflPR05JxSlff9/Yqp1VuHSCrjcnjUNM4Ddb3IFopgswDAun2a9MtYnH/hWTO3P4h+cCc8ia7YYQauQ9KcmkfPZk69cjwROgkc2dNI+HdAY4pRaSHQasBDTkgbPOj1JHtc55EUt9dZFvJ03H/0SoWW3Ppz3+n6og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718233703; c=relaxed/simple;
	bh=E5R7CxXTQ1rkbDU48UE6mxv4CXqisuKnK6/c8wJRXtI=;
	h=To:Subject:From:Message-Id:Date; b=eWo1EeBvJzqItERJvGZzO4whYY+8JCc07xcnaLZVFMoMmRzkcaeb7Kb+AMqPcfR/RKYoxX1GXSQ+bHiPnJi/nPDZ2naUH3qgj54rwVZslbuKD38Xg5gmc+iMoHzqoSgcl76SnyGF7IzXN56b8gq/eOt18Qb+vM5gnmxK8nSGJbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPjyfcVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPjyfcVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2E5DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718233703;
	bh=E5R7CxXTQ1rkbDU48UE6mxv4CXqisuKnK6/c8wJRXtI=;
	h=To:Subject:From:Date:From;
	b=JPjyfcVdYtDPBKV8QAIZ7sdQAVfcy2sqcykV6xKsLskO6+XFW5Xej34tD4YX5kzpr
	 aoAsal4cVHFQJ7SmIZL3tnrdWX4an83ubKjF2oj752pHexyNua0x/AmuKCfT7Figlx
	 DxbAKHH31xe9mKwxmjr0bT+2iGHjfyivvjJD0jaeU3fwQNHaqtHA9y0qz1QqKnjCLs
	 ALnnDSGq927QcqZqhHIIuGOQ0Fek2Rl4kz+XyuU1r5cqnJ8z3FPRw1JeAu7TvwInLI
	 WEgeuKoVWK50G1mRCpQNCisXnKLQUro6I3ILkmCyE3hr/HwZP0d1NEu7C2/wto+WJY
	 CfUhDRWLRq0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D46C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823370282.11462.728372190736487644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdc911b7a8619c4da90644f59e58bfed8a89a3414f19230d8a4b0793674cecd
Date: Wed, 12 Jun 2024 23:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718233702
