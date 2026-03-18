Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C233D9DD3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773842694; cv=none; b=PAIduFZjsjlZ1BN0Ough37bLHo9o9AZ0N8qYlitCDGYSk6WQEtbbAfn4hS0oJL4wempd8yxsm0GDePc2MzpOfdpphTGgkkO3+6UC4K1YzjHywkxC/QmaakVMv4NBpwMH5t32dnTyf6tLLBX3/M++e73hi5569jaWHu2RdsFUMtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773842694; c=relaxed/simple;
	bh=TlCrsu6ergX4nnwGE1z+OEnlXrqPfXbUE7uLgM5Hcq0=;
	h=To:Subject:From:Message-Id:Date; b=JDGa23jx2qnVJXXh12KFfC+7jP43Jjkuqlnr246EDND9+FZUSi23PfhutNjdyl8axSw0SwkkG8w+lK6GZMA9XvH0+ooV97SO1+J8MJcrPzgvwzStei/yHE7oW2y6Rbh95FILcgik8aPPH4vMxvMnUMJEx01sRFv8upKY+ul9uVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtZrwT9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtZrwT9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1F4C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773842693;
	bh=TlCrsu6ergX4nnwGE1z+OEnlXrqPfXbUE7uLgM5Hcq0=;
	h=To:Subject:From:Date:From;
	b=DtZrwT9L3pg3PKjpdWxFDkn+gLIzO+Ge0Yk3BYp8QVNDZbLRKVDAUPkyyAbEjt7eC
	 VuyFIcYVE0e8gl0WR8MQocTGpBORCwOKC5U9vIaSwLawwWCSZHWu1T5e0innq6Oo+e
	 vgXISbDeHSmSWNs4mCK8N4idT+I3/nEIvFjtIGzhdv/Iwx3GLUg4aepdkPIpfK74W4
	 6JcvrRLhYiniIhAk5WZZNKeeurHIBdpPbbJiRTv72O6aSf6jyQbT06tiSKuaxZCY2m
	 00tB9H93vpFausSESsgNNofemOcefn6l5QuydKQMBgvWkFqJO0pcB3cjvfTIQJfD+w
	 JErEpvm7y2W2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D5103E189
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384269357.3024.16827309121533320008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22033f33a61f6ee51ea5f00cd5e22280ae0bab8fd97bde31b4e964f1b9305c2
Date: Wed, 18 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773842693
