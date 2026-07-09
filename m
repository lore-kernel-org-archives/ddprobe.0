Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89908280CD2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624714; cv=none; b=GwPzU3iXGwKH6aMLFWu1BdrDBhOq4lOONSR+uS5X6o7ZKFPIuDsz16/oJNRHFAieT9DxPKoPSu6B5J3FBb9GwR2pUsT/tqeZw2xkCKBlWcOuykgrzZs7NbQmRLrmTAnWr0k042L1nHtxrRc3b5xVZXNmtM+CIEfORr6SdhCNDQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624714; c=relaxed/simple;
	bh=bRI5As5dO7PI38FfdAibhF8WR6MfZ0anyBZ9w8YLHUM=;
	h=To:Subject:From:Message-Id:Date; b=gzXIQfvm/6HVlXST58PvtB7ObPODU6tbS1WcB/pxGzw+MumETh7uhACD01sSNGDlWu3Pb7jg6+mrL1YGNPxUzrOill++HKdkb+1i/YiSGVc1buPU5HQSK2HknaUYXiyN76y7FoFzeI7Fwt4m0JDtjCemuWmWwzRQoLoKlY7/G4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGjoxQfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGjoxQfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB225C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783624713;
	bh=bRI5As5dO7PI38FfdAibhF8WR6MfZ0anyBZ9w8YLHUM=;
	h=To:Subject:From:Date:From;
	b=fGjoxQfNjVSKgwfx/aQXmGABKa2iy6Y40p1S4boBnp0nMIgLicJLJ9sdeWStoy9Of
	 Ek290APu3Fc5wYijjVSZHlB8kVINhyLyQnNDcC5DF+TRmtepzKud79yDXcSLGqF9lE
	 D8a4PIc28oVmcEjLngsdO4dDnMPvDFIgHiaenfL3otAgfd85f2Y5rgtGtQtFtOn/Es
	 MS+Mspx85FV3ZuEe0kIH1s1i6D5/JM2D7D8hoqRd+3QksolhTLX5yRY0vasyQMBKeJ
	 jalK9G0pOQqkWLOvSb4TPdzrgyxY41pYSswic1qZ7WlWGcclw/ewHrqh3+OZwNYhPd
	 MfwKsytpNi/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D8C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362471368.5006.673526891568053499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625f9a4f26699fb2832e35480fb3ed193547ee1aa96d0dc3335ee51ec0c17a56
Date: Thu, 09 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783624713
