Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BAB10F1
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735613754; cv=none; b=iqdwhDpHSWroz49F3RIjgTd4NjZbcYOU5Z3jCSknsDXanvKUOjKRCuFgca/APNHDRXhYpZ9mExTkoQeyvbNz7pwZW5Y1qYvUsvRrwsDOymAMTJg2zrW4puuN/C72/Yr9HYkfrCWBkC+xkN3/1Z+Wvb+QYta3TM3gfzDV3pOjjdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735613754; c=relaxed/simple;
	bh=lD/Y7eKVQXXNQbVbUz/X/Q1K4PtQ2U/VU5Jz6zWzld4=;
	h=To:Subject:From:Message-Id:Date; b=DOxDc+q9C1ZVjYBhzw4tDMCunDwkyWaTtUbmPAGLw4rCM++yUrH7HaXYFL5ocl+Hq9BYG5tocTcjng24EtkvhWZteDPI/XlXSA7hQNy2lYMdnkGuJlLA/ZpKJTMGQgaUZJXl+vCgVAUYY5DMg/QG8fY7SnP4S0TICHGWgXbllu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4kwFLeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4kwFLeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F3C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735613753;
	bh=lD/Y7eKVQXXNQbVbUz/X/Q1K4PtQ2U/VU5Jz6zWzld4=;
	h=To:Subject:From:Date:From;
	b=S4kwFLeTvyEVK/x1SRQACy1GBoH1Nuaef7fugdKq/NCCFzyIMAX5RQD6a9UA1LShj
	 P39kt1BzsEqeeb00TEampgQyrcjtIcMZjC1/zwG/sULKf6v77gv32nrNI1edd1RFEE
	 Bw6xYCvO07QSJH3gHrWW5vfBPrtObdzI3TxpWrphBzJ51udVtewYAKr2fX+/9V+HzF
	 MPC+oCjpzYkjR4caAA/C5u2dkjihQW66I8bO4iAy+HZdlDStSwZmOMMJiMcrqcCszR
	 l+Gzv0eocNQypFkHxl9GgEtVcEq+RdAQDrJ3Y8ZPf5dyTEguheiejd1pyadHWFhCWH
	 Uk+Rz7upEunOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95694E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173561375358.24180.14609862662610698410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069cdd2c46ce08f6ce7eb959d4f675c7a651cce6d0a1e08d6eccf6b08cea5fec
Date: Tue, 31 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735613753
