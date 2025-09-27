Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6814B953
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758977994; cv=none; b=BFnfuWBlCNn8t6/8qVINx40V7SME7AUCVXSOIkzBLmnKj/3aO+pwRDFulQtS7HewVTydaIMngs+/sp45MSHLpl4oqS/apDD7LFCB1CT62RPEAp8qf49mbkwiQ/ITG4yTNQk8GWWCWagGD5LLCNZFqlPC6hT5foIn39f8yfQBYkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758977994; c=relaxed/simple;
	bh=s3eJFgUiGD1SUpsO4WaP2Kp/dAdIjYdgS9zyWghLJf8=;
	h=To:Subject:From:Message-Id:Date; b=DSzctOekDHq9rnMaJQ84EYtGDdtPuhQVqKmIZyxxBRgQOw9GDgszlo5J0azK4MiPsTZvSRq6j5FJo/4II+LWR67Y43emU6XPzhCzbp1b/cRcZSY+vaQqHSIw4dLQ+l2/1NOC6uKnqGi9kkQ3Lfi3cEW8kwoVEA56iyLxLZg6U2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DESdvGth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DESdvGth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758977993;
	bh=s3eJFgUiGD1SUpsO4WaP2Kp/dAdIjYdgS9zyWghLJf8=;
	h=To:Subject:From:Date:From;
	b=DESdvGth/RvpaZGxPdnXY39DcqeP7IHLFCGoWiirHcCQs5GpaXFfPy5AVKDNX3LJs
	 ZvkTrrCcnBS1qVVmOud33CCCniT1cxhIBVGhqAHelfsJODdLYlvDrhNqxIaLlVtQh7
	 3aflFjjpmcHpOzu30se29DSPtCRwNgHFHRxR3x5DBc5uLtEgxUJaBRk39KEYiYJHYw
	 m0w5zZBqQ2yRmfqKNIiC5eRM/vrhIN6lhz0Slh1OWRgSLLm5ibATvCnHuqKFV3jPuR
	 mAEke/7iWBOmYEeg0KgM7/Ej6lHDjzUjBrpR3sbs9B3HoAJqvwiBlK45SQL1UT9iwH
	 A7bWXADp3lCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CAACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897799359.18418.5301866966677119189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7a1ebc1050c60da511d692a37ed6f8de09cdd78a7566018c354988511deb5c
Date: Sat, 27 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758977993
