Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA811CB8
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714539743; cv=none; b=CXQeZjfjbRStbDTUlgyRJtQbN3+EbINeZkunnNzx0FQ89bJBJZ/UReWDJW1VZR8jDCoS7N2Wzw8GTll5w66Zyy7qa/SQei/yNgY56W7MmPVsP+ohB4iOnDyXEGGhMtx2t+vEj4bM3MrvwbaNgGYQv3uwBHxpwQpNLBsNlN464D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714539743; c=relaxed/simple;
	bh=vf38iDC1d+4olHhul9PrFiYYTpeF0y8y4G1dgiRbhA0=;
	h=To:Subject:From:Message-Id:Date; b=HqRk1uYTQO30xWeA022N6dwgshaQijhFwrqosQClpCKS9uMfYO0IRZS1bu8lNv9uk/hiZUu9GXqr8/+Y21D1yVt7UEB23GmE8LjjMkcp7kjgI1+L7Rv5XTWg/GBcJE+sfh9XE6h5rYPSYSRd6LxXEcMlzRIJgMbxm72Z3BWIQog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SD1mc1e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD1mc1e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE86C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714539742;
	bh=vf38iDC1d+4olHhul9PrFiYYTpeF0y8y4G1dgiRbhA0=;
	h=To:Subject:From:Date:From;
	b=SD1mc1e2RaWUIxFjXmH19CDzPzZZMLB+6tai+3ueO1qg/GlWZXTDEF2TAaXijqh65
	 dNctwdYlfGPwBjLkTCvb/S8LYTVs1+bP97V3aUb2dFxrTOBRbi+hHm8yDjnRITLt/q
	 2nSZQNPjVzyCx+AiWDJaKM9GuSmTjx8Uwe9A+AW8YkgE1ZiYW8N0YstxiVLLkLj2l6
	 INw7KieE6bsACPOjD6pyFA34+nKi7aofYgrohviL8AKgcLQnuKcKDH/j/XrOUHmIja
	 PzcC8JtT+lzHpdodMCXxitGjYCrJ+as0I6RRhl0cjIohSaF2kzwWqv7GXrnmsswc6q
	 eICmJUQ2i7aaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2A2C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453974278.23010.1780627934978155382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51357140985793467142143be5aa0f469643881a6a7d8495f016c5ee11062677
Date: Wed, 01 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714539742
