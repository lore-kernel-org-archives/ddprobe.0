Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CBE272E42
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753255794; cv=none; b=pceEjS78RRfFyVSldGxAM8lKBBW1tbg3IRugSXHk7frHPwv4xs333t9vCAfyAzruqpEqzGPiw8M/BOFTXzjzkz+xXfcnapmRbNODAkZuDNK+OKkI30LMWZQjxVTpdwxVawC5d4NO+DP5TgXRp8RZ0xwSaNpNs7e9dMordwXol/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753255794; c=relaxed/simple;
	bh=aRNTqEc56w9vUk2sPST1LOGHGYPawlQklmj/bffeBu8=;
	h=To:Subject:From:Message-Id:Date; b=Qk850QgSyE2NroZCAVPvNqAwYjwa4uEi8bayueDgOl2LEyxnPZPwgb4ZJje9xcwZf0uCCDmC1Vgm6pVy4StCaXEuGbBu6GeS0zB8x6Bl5eYsC32Y9D0eRhrICjJMQkyKTx6VNtnN3b6fsQt9hnHvYnyT8fpDpafNhYlW7iomNfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLzXsyJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLzXsyJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E662C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753255793;
	bh=aRNTqEc56w9vUk2sPST1LOGHGYPawlQklmj/bffeBu8=;
	h=To:Subject:From:Date:From;
	b=pLzXsyJZQCIXrgEXvORtiAiYF54Gf+OrCX0tm4cSPYX0klL62boXAEume2mo7hTM2
	 Gtkyu06kr6PLJjpS9w95XrEwDrrVSa606KJg9tOzEhmtZ4lgBwqQHk2vPset+8h0BS
	 BSqxPFjZCMqGaTfMMFbdAIYHGPVep6qju2eGG1vWU8UEPIxzTJV57AkA5NHfs6AwAL
	 6AXB5o7BBuSR2nYyovIPPGLCNDvuL/L7tTfYLYjzwhlNOol8vfIQuyn3fbOdlGZ2zi
	 Zte42euWgYm7K79Gu9L4YhfK5535xXnT3IptUkUOEIH5CclLt1M66r4GMcX0LYdsSe
	 EJfviBH82a81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B8C83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325579357.7093.14244189606789451614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8c321313c21fc3db4cf409477bc3a9dd5387812ca67183c5964107538c26e3
Date: Wed, 23 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753255793
