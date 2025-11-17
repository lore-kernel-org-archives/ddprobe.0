Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378C374BE1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763341914; cv=none; b=uVetM7sux/CPaeoXqooq3nOF8BW4AZEJw/2+dxunniuAR1TFDieDfh3BERBlgT4o/NCuLFoiYRfHz0fsQRdWWfpAFXRs0hQRahOt1f58yI2PFbjmknEoYnTxz9uhmWyZl876puHvtalS15qM2yUSYdMakZLaFDJaB/dpqYn6oqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763341914; c=relaxed/simple;
	bh=Ois1u0j2BD54EQMyKAkhncnbyCT1E02zVM/zyfguY8A=;
	h=To:Subject:From:Message-Id:Date; b=u0b23GIMkTzufMZMSiZI585SV8L8/wU1tfkDNga/lzjIvfps/93VF3ybOrXw/NtQsqpxSB5N7FgSkkcqzxK5h1/zGDa7lrrgBUyvpUrw7VHPT9Fka7HJ48s0L/lxfQIelsTgy9e7QU6gRyv2HBhEgwdA4JzGFtzuEso+qsHCl08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhRW7Yrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhRW7Yrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05E4C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763341913;
	bh=Ois1u0j2BD54EQMyKAkhncnbyCT1E02zVM/zyfguY8A=;
	h=To:Subject:From:Date:From;
	b=IhRW7YrqnfjtQ8EfIKSiFt+JHwEUDI+aA2NDhI1JXp9267H+wv8Ndn+JHjGIB4oxH
	 qDhVOz/bGPMi8uZT2gv7E6KqkeC0jQEL5ndzhrU87/kJ3ARcyEkJovdieDGvZkc9t0
	 lxDnhAKWV1eTXLam5mickK+ab2vGXXPLpsx/ucIKVq38ks5cAsImQXzkaQpi0ODbwA
	 mJLo0aLUB3p/WLWGeU99oulMIWWZorFcWhvVNUzWxrsJAmneZ5xkR6SJCpeTbnyswt
	 x3T7yAG1WX9lQP/Q646I8MfZ4WmKOQnST7bVLX6cEJWLinHbR1LOJMFzluALWO86Mw
	 my+Y+eEX3efjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7C8CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334191361.22465.17469360615319010825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68575ccaa76882fa88c6da6c5abc0beee5119b92908ef6a6d800aa6880ce21c
Date: Mon, 17 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763341913
