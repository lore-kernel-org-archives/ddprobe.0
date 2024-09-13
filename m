Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1843B637
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726202754; cv=none; b=EFMLCj6wX7Rkn7qY3O17YyoNHvQhSM6AV4wBvJXp3331DiSryJ5l1vLsbMtPO5Ili7erTElS5VRA63Di1JcidCbO8Fq+Uj30URslLWazSlPn/QFRyBekxDmn/mokWuSNmjRZw5a8IcGgHlpvHSMDwjRNOJKME7i7tWg0IJoT/8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726202754; c=relaxed/simple;
	bh=ROzY2pb8jlW26mTM3ktJFMjfB/Ol9GmbpoZHnEsViss=;
	h=To:Subject:From:Message-Id:Date; b=jSW7YNhBycniYAjzknpfby2SNJhgwN8eLeFXlJGCjHwCsYM6eZC6709HscfVeZlsB0bhiUovI5KiSn1ciYrv8z/1rkAOB0g0xvX9akBIx5yQ8/9MAdwvIi9twdYhLpzF+Tkji3gl4tP+RDs6YHAbs4GbXGH/lHRFiktKTRPJMGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU6Zd6Ij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU6Zd6Ij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA5BC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726202753;
	bh=ROzY2pb8jlW26mTM3ktJFMjfB/Ol9GmbpoZHnEsViss=;
	h=To:Subject:From:Date:From;
	b=TU6Zd6IjuyI93X3yT4LGNtPOXa4JKITWKQi6tsUcSRD8ONazb5xo/2MoQMru8kfff
	 pstqzQ1HF3EwzuD+PCXIHabQVWouCYxMFrjjafbwV/h0FvuqmpcuxC8OG0PamyCUHk
	 1V3Lk5mYqRC+CAgST0DqFSlyuBxT7Do0PO8nDL/IuiA29K53uspCj+CB+j3MjM42U3
	 Q0ryEZt2qlWTttRD5XyW/TU546YhuYvXNWo5IRbTQhUGxd6cyMtpI3jGR2U6ksuj0S
	 2G/+2FP/u2pkKXJQnYoVhKm+rabykHsVJgq/GG616WoRq79Huwyp19FIUnPJ4EYptu
	 0x1fQYDd3ay/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F23EEEC0E
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172620275360.18471.13290171959046911658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465993aad24ff6a6af55e7e683a7b66e756ac369bb08b917ba10e0a3bc4bf2bd
Date: Fri, 13 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726202753
