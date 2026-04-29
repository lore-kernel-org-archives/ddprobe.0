Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A97277C9D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777494454; cv=none; b=PAo0lZ5ILdRqLCY2xCKQvyylkg2sXxmEEzlHvDjGWdifCNvSKpsDgqcQsEszRy0fmI45O+olO3Kqlct/g4HvvRGDmlnRPE/JNuNUhui1PRvpj+jbMDamYj3Nd3BlLZdYYbba5igXNmWLt9fhoVjP8m/abXOemIMLgLnkU2m1kKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777494454; c=relaxed/simple;
	bh=qOdFFzVALtZ8vVkdKbCYrU1gHmpxGtbFdhw/0ZZwrjs=;
	h=To:Subject:From:Message-Id:Date; b=LQDYFUo5YamzGOOoaCrk9WaaWV8McWHYrsw/xuPlQsm3btiH2f1LSU9mYG1T52PbHLtHKdeTHntUUenBDhna+C20Txh+MORb54C3PsyR4vpvplXJ03IFAWxjMMfhRt1f3vxmQDMD07Tw1Al5hPYRmj2c9ZLiOZQXnmIswackKE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuVFHh44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuVFHh44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A3DC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777494453;
	bh=qOdFFzVALtZ8vVkdKbCYrU1gHmpxGtbFdhw/0ZZwrjs=;
	h=To:Subject:From:Date:From;
	b=PuVFHh44DLmDkdyzL60mN/y6GJZfBUklyggzcxic89cfPi1uZnp1meaKuno5rKr+N
	 4S+u0wuVREh6KKrANTSB0xc0x/q+gvb6KpqgSIwIXwg+xRoP093gAqJqkHvEv9ejCz
	 9zxE/znu6N6QZ4ypXKDhDuHW7MqLhTrYSflBo2Uri/S9dVS1V2LHKG2Q8CpscEsM4C
	 rb5PtqUA/+rV97sWtVcvZrADxNgpUSj8BAOd6mOmfqn5hHcpfGkAH3bYbE3ai7CNeU
	 hALbi2U8Do6hXmPDtDobNZVTlELHbjNTtj2faNGTadLf/88J1n+XTYaSSu6y8zzQFL
	 i257+AQ0iQQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D4CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749445368.31897.12453301447744045479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13cdb3a05b40639f1b2c540497dd25a2d72b6acbaf195af36a851cd84185db0
Date: Wed, 29 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777494453
