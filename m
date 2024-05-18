Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8237434CDE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716051743; cv=none; b=Sir25YD2C6uQ3WLWUqJRU3p8Hp6k7vKKV0BE8MzZy31AcizN+JNYc3eStyl9D1xyIyUTY/q5UH6pqrFM7tMtOAKkNjmijxCAXxNNAjUhMLYm/OHHiqAT2zCDeKpznF4eQY74d6q9ymUzTqK8YCavo8LSBxquw/b88svjWaAYG8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716051743; c=relaxed/simple;
	bh=7df3cvq2QDLIz5DyD9Cf6KLYGfWk+4OkLus6T0Os280=;
	h=To:Subject:From:Message-Id:Date; b=FdEzYVDe0/bQvjRO5c0k28at4HGYBha0h6BzQVtO6jzYUzXSG67cftEQRuF7S2PI8TVm0WuX2XqgH+rzbL8RBpvxkuYuFDqrdDaMmJ+9k0oM2rnoIrbEyxNRoYvQGFoorljUzTpHUT/kpBRJ5YhgKrw55hi3NBAbFiTc6PM8Ap8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNaiOr+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNaiOr+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D9CDC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716051743;
	bh=7df3cvq2QDLIz5DyD9Cf6KLYGfWk+4OkLus6T0Os280=;
	h=To:Subject:From:Date:From;
	b=nNaiOr+Y3t57L0rsxUvzGTjNpccfW0V08GCIpl36s2uG40rpJJ1LDb0JDuS+uVjZH
	 5Lz3AyzNxM0OM8h3iU+nYhpV4rz/C1ECg3QAUsj1VBKquSTlHENFbP+MMIlYOR5eEE
	 Nqa+dqrrxwdLuQ1erYyqKdfkn6mAfWhMW14s3PTL0gaybDapUcDu/97t2WomZtOKwC
	 Z+VhhJOSJAKP3sui8IfPbu83Q1WMM5/xNua/tvnNcktwNPl1s8Q2L7095G2jnS1cW5
	 Hosf2I/W0A2zr/T6htN1DZNodA345xWXtdxq1JukCNfuDG+e62roOKR4IF0lcYpt2i
	 57przTVTiCd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1A4BC25B75
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605174283.6264.9938841194777743795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134dc28f7884ab132858292736a527953c547fe4adb4bbcb31d910eff9d7ae5f
Date: Sat, 18 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716051742
