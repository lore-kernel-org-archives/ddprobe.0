Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A73E37A83F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786506634; cv=none; b=d8csR/HXkPsPfItORVqsPQ7TRcwVOjy0fEoiJShEK86b5dCgI0rx4ScLMN1SgDB21Q56BHkOFBvsSm1ZGZmWFxbfGwxYRrydLfVi4LtIXu+bUVZ3PloAjvIbA76HxhEYW1hLxgnb+ang/J1YsgaVXs+cElCrAskbQwIH5fTm/oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786506634; c=relaxed/simple;
	bh=8Q0V3W7QcftUyvM4zW72xIJp83k95v0jfG2b8QtEZrk=;
	h=To:Subject:From:Message-Id:Date; b=GeXvf0lAqvt1Yvh2sI4lb10PJdLHxtxw1s7q8z8i9d1LMIw2VlGsiqHr9B5KhOSMh5MJF5Og1sop4hdoVxNcXE+ah5JoK6myOEAztjha1IIRaij4OMBEkkrYMf1e+B2wHRb6cj2C/By+xZtBNJZMwX4rYJvu7n4a8v44rJBdPRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOgd+yQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOgd+yQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB03CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786506633;
	bh=8Q0V3W7QcftUyvM4zW72xIJp83k95v0jfG2b8QtEZrk=;
	h=To:Subject:From:Date:From;
	b=FOgd+yQZflsTbE4XGsPYCrM/GMMqJLmpSSLdSceyEfS7mBAHqBNoV0aVI6zusp3nA
	 C3AVLZ1hyXbnV5lXgG2UL6Azj9Zdl7jD1yk87HHbEdKODPLgLInKBk4cHOvCLBM6eb
	 KYAPbjnYS/BSLd5IvOHqfzkIK0809Gnm9YSl4cPe0vCj7JzBbaN0/WhRbGwHMbkRBu
	 TifXxE4fglSFYriCwVnpCYX8ogPGBzmg7Ii3TEl8fz2wNCYLktM3DruSDyNHk8Yy2d
	 iqZZcWmhD/V8yHsKGFSqwkN/CsUPoIrMTnf2xm36Lm+JNszSwm0xCeWGXh7oppWut3
	 Q6lR4BJhCdbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E57C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650663367.21675.17561459407408968141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e71da479d5531c800a626d2e256e7485d08c478bc937c753a74a676078698d
Date: Wed, 12 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786506633
