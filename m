Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D913C683
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716885263; cv=none; b=Hs5mS07oAeQCR/gyXc1ZlI4xDeKjm41jnfrGbBza2ywq3ZOSVNGPzDEdSHGxQlxakjL3ICCoBriU+9R2ZpQhf27Em9B0isMeMWup3nXKfpipfp0Vjyjttat218kY5cCR9EXXQRHjPe8bgp5wWUQ9IxKKGdhI+0U51iBzMqr7rwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716885263; c=relaxed/simple;
	bh=5XThQ9zeE4xU0ARZNpGDNTuVOIIFuHP1WaEA4zgRbTw=;
	h=To:Subject:From:Message-Id:Date; b=fpNiagGMKu+69/cgGnIX250jWTZmSEMiyDodbylK2Az63oe8d+JAX+F4SoAJAHtgEmYp5g4wG40VYQp3aaFt2tfUMyMmH6aR2GezyklSJQH2SZmvWFO/xCPqVGwi6xmWwpBO9CKIo2ayiCNmoVmmKvpdZ6dtfcyjBZdyro42ur8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRL39+1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRL39+1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E9BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716885262;
	bh=5XThQ9zeE4xU0ARZNpGDNTuVOIIFuHP1WaEA4zgRbTw=;
	h=To:Subject:From:Date:From;
	b=BRL39+1XEtqw91QrrvD9GHeXU8fuKtLKYUPQwv9n99LiMSW6iLB1Qdy0FoV5yqn5T
	 Oh1cwgH8+0rci4TVrlH8DLuoC/TxVY8yGlEZmtb+3qqjM7HlAxXW3OyuHk1zeSXSH4
	 DURBW7/Z7bbFFeI9QjR3dYihOBB42W3NDixg1GAMbsyYCILq7HI1usdUyVHLZsVZM3
	 EqByjIETj2q+BHLqDiRqf+XP3DQA6d+zqmLSNyCOMJRMWslfurTG282q2W3sj2XAq8
	 dw5nrG1TuR5xtziqiKCD8jGu1I8qAWhXRXXI/cXT3fM9FRDWmYxAdL5FClWYgLFsZ+
	 SYJfgZU0dWSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1B4C25B79
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688526281.29258.10388497865051528839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a41052bc678e5218f89a023017e1bbfdba4514a13774bdcb6e9bea555508ac0
Date: Tue, 28 May 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716885262
