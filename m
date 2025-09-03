Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5C47080D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756924194; cv=none; b=qZsVhiM1tfv0jLFrtvECY9OWbO1jWAbJ+azfDQ03ZXA2NfsSN3Y5BPxuUCt1eKFZnvvdAXfWnD+g/dhWc4HSN1Z/PCpH074ucWJafFE9yygDrhaFL6MqnROCXWZAr3iFyZ2ZDN4De7Eq06xbWP5l6JXmjpo81pb39wAkzqIp/uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756924194; c=relaxed/simple;
	bh=Izc7t+D4UtqJqiGC7vqCsgr0vc+UMlwOR83hv4QDsGE=;
	h=To:Subject:From:Message-Id:Date; b=B3GGY10+QJa7AJV2yIkNpuPrF/5Y57nHUN+Imm8aFm0JK0WNRarCxNa/VHxEuFT9CaYgOxT4jUc2M5DoO4oZCxo0k3KT0GndnSW2w+tLqqwULLwuUtEEqoO8l/ItDT4lOTWbVJOhCwlkiEtXItCn6EelWOlOelH54y9zVHHOpmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbCW9ByM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbCW9ByM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A95C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756924193;
	bh=Izc7t+D4UtqJqiGC7vqCsgr0vc+UMlwOR83hv4QDsGE=;
	h=To:Subject:From:Date:From;
	b=JbCW9ByM1cCKAtnRn7ubvIwrOxCDEv/nYcsfO6MRSEGxID6XnRo0KA7glmYqmIyRr
	 zdjvTrJQgwrNbFDQfN4W2JXIVshcNF7fu7nzFU/JCmL1kxmOC5YGO+8Szrj3+U0n4T
	 yRnx8ov9+lvQcJcmsMCTUzG+kTKn95sWFZLZTn12cy2pMK3AJa/9DPCqJ5X2HbjbB0
	 5S4TcCk8X3dNluHirKNG49MTqBQm5MUKkTCu7dzQoRUZ6+8z9q5urASjcMlYht59Kx
	 42XRq3Pth6cRYvuKXN9+FJ+kWArXRfaUaAXaFDiGCq3cmCmVD/ahHUtKir2w2rrKtc
	 uY4S5ViumFBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F873CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692419357.3655.3715321310161600711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849033738434df9819488a53d29e67f562be2c4060cb83c0028d4d8a04ac3e6f
Date: Wed, 03 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756924193
