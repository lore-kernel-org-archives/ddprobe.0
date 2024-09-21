Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE3C257B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726956954; cv=none; b=kKjNKWpau4CRGoVMnpawZJSywSFm8/EjYYZZan0aVCcThaOBV+Wz/ulU3dSyPIEVpVTrMuEsvdRQNU99blao5mVfwNRb//TxmfyMA/RTrfA4Io6vCRatF6fliKmFUAgTYbkpMqzLrGtZvmChHCn3G4MbKsl/ldRx5zg0pt6cG8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726956954; c=relaxed/simple;
	bh=kdAMZ8tkPKTfQLAsYmxAeiCL28rQ3AhoWD0XGSQT4m4=;
	h=To:Subject:From:Message-Id:Date; b=NaDRJpe7FmpjfQgd7lF9dEqf8y6vk7NJHrjwGgEiQv7Wd5s92AfZGSJvx3y8T8uByaMpBrhSqZVQVFYGKjSc5rtkICQdPDt5U7jS+IU2TH7samb47igQA6UYXybsNbgRGNTXEp3WZPlHQji6eI2T68V09Uy2WHmE9XTKWI2r+nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW9QHWyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW9QHWyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8351C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726956953;
	bh=kdAMZ8tkPKTfQLAsYmxAeiCL28rQ3AhoWD0XGSQT4m4=;
	h=To:Subject:From:Date:From;
	b=DW9QHWyNEGSkvJr5ZtDWRTxpuiNR1UvayCnwluf2/3jnxDvbY+ejVac573T4YUg45
	 +aytQuJ40gPQpk5eV0yCqEGRlX8gpUsjZ7Tg+unzRDG7HfdU2QiHF9xggbrTG/45jb
	 6cGEga/Hk1KoTCGXDrkEFK93sQ3n5aOsWaMI6nvpQouEjGOr3eSeHbYxpjUrC4Bd43
	 NPHm/Gc1k7enIX8AuP3/n1XQLHX2X4eYSpniXhKZIwwA3MnpkqxGPP+zM+mzckcJtr
	 hxy0QMcXVD+Fl7v+3pdNtjDjDw9oP2+tqRhl7MWIajk1NjwB+A7pXx5WR8GpXP1tTh
	 AF40A8xtxd9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F49CF9C6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695695360.27464.9244667399222149602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b117b37947ceacafa9cb0d181fc4fd48f635c1c8b8c90060a599b31ed86a3893
Date: Sat, 21 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726956953
