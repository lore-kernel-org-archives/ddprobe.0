Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F38079D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750828794; cv=none; b=KL2mivnDsJt63dLBjcJ6aFSJl34dOH13hxirCPfqe5Tq5p5Y09t8Jm7PVs1DyCze3wlCA7lQ93rqA7MCmhlWV4nMgLnySNgzpr4JElV6RcqIhOZzCdmSR5z0E6iwMVmZE8zYdv0zIpv/DuspEJn/nN9QPvNnkc4D9ME7zg42S5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750828794; c=relaxed/simple;
	bh=1Oo51zoDjwVLNpjlJFH8zYIbCR9SeO9uho/zzfyRocM=;
	h=To:Subject:From:Message-Id:Date; b=FSeSz9Piaq1Rj39kteO5fofTqD/JJ1v9OlZ3Rx6/OOsQ5JNEu7WwfwMkNDe/IbJPbui3W0fehduIinsxySa6y14zrnePI08fq6QyTlKv0wRGXDPw/oR3ZWjrZ6dSweJGqmHj7M63DxcLM9xMuRxdLnwdPPVBToO3z0ZehcRN2OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5RITlph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5RITlph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA55AC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750828793;
	bh=1Oo51zoDjwVLNpjlJFH8zYIbCR9SeO9uho/zzfyRocM=;
	h=To:Subject:From:Date:From;
	b=T5RITlphSHB2JOtlMw6ruqSMNxROMOCsiDI41dL27W43XttspKYh9zUXnX2hWaGm+
	 qEmpLLBk6g/gDClzdArankydu9/rDYaqYSCDjTfYWI+yJdC2YhCyKNMa68o+m6WRlj
	 gSfZc/VzbLnevAynEtXcvmA6rjh5hjeSst+qTixve/r305pSJ39MOuUG4KewbhgZy7
	 cRpnOSQF0ZRZ5tN0cCc/tApPNZPzdNG/SbqHq9Wz9jqXf2zHxWPfhrfsuM7tHN2jmQ
	 HE4kBrMMGnQGAeGstkZ2DOuy4tP1CMXF2iBUG8t3az9rpT2O7nOpzc4G0TnkMsZJuX
	 x71iei8rP7pVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979EBC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082879359.3346.16107913286327066501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc08823f1f94d874e335c4cb2d8abbdf7628fd07e5f1f3595a78bb7c26a25e7
Date: Wed, 25 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750828793
