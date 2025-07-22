Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D122EF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753157994; cv=none; b=iWcIvQDIAr7tG2nBHwzxokjnUUHbOQAnvqsufCBmM5JhRfHlGVJZXfp+6v6NfrZG3zdWuBuvH9UkLVsgDBpG0Zv0nW0AfAcnGPswVOAPjf3MvBfSv6kl+M2n32AKrv/IxmM9Q1oxTlkTnJsWALHFzikVAY6MMFt689JYR6MXzhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753157994; c=relaxed/simple;
	bh=oUkgKFsNBd/Uq8HUaAJDQBwrIaMoIeNUZNdPz4gAGHg=;
	h=To:Subject:From:Message-Id:Date; b=XFKA9CcVqdbDvnQdjv2Q/dN9k2j0DxfBvDI4Qen7nTEX8QyVGwz4FRDy2X3EwdJa0BgY7qKFL0tNgabe4JnMrrX9fSdA/dubiV96Os/ZqO/QM1fjIBlvTRwkoaWmDUKrbtj/gOahBqbmOYFeeS6bTJXv53nBcuoDhKiy/FUe0w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOc/aTBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOc/aTBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC629C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753157993;
	bh=oUkgKFsNBd/Uq8HUaAJDQBwrIaMoIeNUZNdPz4gAGHg=;
	h=To:Subject:From:Date:From;
	b=cOc/aTBII+yIzaYukwv6zl9RavgaQnyzGtacizhYifpjB8e3ls33iMdLw/fG/KodW
	 fIOldShJTygHirdsKnRBnt0oQd5qXMcVTwVjbdfJmRVXDZaKZU/3psC5aISFaU2J++
	 u0waRsDJM4QacErvnVErpau0VHO9KFMOYW0dSBT3gcK03m7EOPaU4YyWH0ssFTBkvj
	 fa7D0BUH6jj5q9hEMDUvItYcFdUSvQLqTvprsQa0jJQDNi9QtX+TgAgvDiXXHfXZ9G
	 KR1Om/fsSY2UWUJ7DS8OZ+Ha9eIc5fr0tu2udGvon5B8uW8fHp7VWwzOw2H+E62XVO
	 LS877IUMgbtvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AD7C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315799359.29423.10330891472327391496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a7e3e4ab19400a99fb0882ca5ee1b3b46c89381c055c60d48b1a7e4d1e1876
Date: Tue, 22 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753157993
