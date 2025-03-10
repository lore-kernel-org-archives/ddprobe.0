Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434751D7999
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741591734; cv=none; b=G0i/OktFEou1OVfEJGNxBGsCiKOaw9ivELOnrTlAYxcxPs0FkNXiC83IzKHzH7IWvPQFChqe2jwYEK8PZcI4YbEGzDsTjorU5hueuaU93JVvKm8KYr0angfkY8h1o0hN2yOrM9vTpTGK+Ve36RHZ2jgWGAXoJTOX1/Q3fmvOSMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741591734; c=relaxed/simple;
	bh=p9yKjlUT0NxG2X77crXITFgO9yk7RggC6TCswk1Sh+c=;
	h=To:Subject:From:Message-Id:Date; b=Kwkcu/r4kaywkAdkGLCWxwvYSX8wYzCT1zyAUyKycYepwrcUzYm6KhhPvNshwUiCdJVe7PuZWYh0JcuXi90h670lFbE7W+CWc1Jgc0wsuXhpIksv/vp6RHepeGYQcgWNwGtK77qhDKoXfRWZUQP1EIOwIL8aKSGob9I//HMtkd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAbdi9Qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAbdi9Qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51BBC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741591733;
	bh=p9yKjlUT0NxG2X77crXITFgO9yk7RggC6TCswk1Sh+c=;
	h=To:Subject:From:Date:From;
	b=cAbdi9Qb7pcv2yERKelqDEPnwR/G52uMN/1NyFtQefYCraTvl3pPAtDJxep29NqH4
	 f36mSfbNswt2fb+ULQ+MHyqNp/LIWCnNwnRZnxCXPEKWEPMH+dnbei5gJtb8+cvyYp
	 R2KYPpskhQD/V9xlsSD+bgFoFLeBkVmjQqQCmMSAfRG6/W1Qwnn5ZBVrhN6e475S0F
	 7vySs/AWHLF+aS3mXUZ+gQ3vR4d4GD2vbKwTGYutVy+//CXVjRqIdlgwifNSN0wsuh
	 t9fP45cnDuZhzmoxLX9vg4zFXgD6G9fNMabBx54Vxyx+DkYmQjR6p9k7TdfvyjTFB3
	 Rb2wAgJEcSMZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFDC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174159173357.21545.8739521871262170081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15096ffbbbd0380445479cbe821febf5e0391e7d5e7b4fd331a741be1963c37
Date: Mon, 10 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741591733
