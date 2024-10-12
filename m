Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6C114D29A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728727554; cv=none; b=RXxTX270ExTgNwJJGZBmhdLSYz51qgQo/3iMdy99nCkrJA33bVdvNi3ndAI+tyhMfuieCdgBbbaf3Y5Q5GL3+jE0Nx3Cf0RHpzX0+aU3dQygZWtz7MiI+Hy0+ymaNXyq7CjqpGy2D0Com+4aKC708ChGVUCL+7OIgKKlBqQ7Jb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728727554; c=relaxed/simple;
	bh=dSCqECFiDGWVoxFN6b+KxRM1zErEnvMo+CVvZ4LAzDc=;
	h=To:Subject:From:Message-Id:Date; b=fedVvnJr3rUpsI1/KRzi3gkO90lTSQ30L5zeu4gWGcgaRNC98ufmqlqGmmxNVz7pGoY2EQO0nNJzxuooTllUWW/5M9kRHjQ44gGDxXB4hXgms9furrQ6UdGrNjK/8jjyMMx1aoRDi8V0OXQRBYwB72J0eYK5KY8VDUsyr/8Z6ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GI5dL5Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GI5dL5Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA669C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728727553;
	bh=dSCqECFiDGWVoxFN6b+KxRM1zErEnvMo+CVvZ4LAzDc=;
	h=To:Subject:From:Date:From;
	b=GI5dL5HwdtOrz97psTqEuss4eM8ZybZlbJfiswl09uRGO8rJd3QOzxfTAk3tIZ6Kc
	 45cWP3Iy3Cn/cZhGMHsylQhjKKxgnHQAlTwHSE4PCaT3wfyPo+jdo4hD7GrkVTNXrw
	 5DDb6ph9OQJiOIP4+nmUGBnX+GoTADbszae8XlgBDS1NlYsFqprRRg4I+u3Cj12frG
	 y8Zl8OQJMiOh3PdxH+e5A0OIatgA5z/2TnPMF9pHexNqMMn4BAI0Kv9PqV1yx8RNUC
	 QoOu7TBumhx69aLS9tqVJqnRC9182aNEJjsCy/LOhsDMLnporLvYi/WYRLCkkLB3jh
	 I+obU2gEUmhSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E3CF2564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872755360.32031.2994555762132732346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609f007a08e85809c0a51928526d4aa27a1fd760f32485d88d0ef514da2bbc6e
Date: Sat, 12 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728727553
