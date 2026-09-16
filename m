Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4364B4EA397
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789561834; cv=none; b=koauDdQaHWZkWwAyUANgKxD5xmmNzMGn+PcnvkAtC5pNDS0eAze/9zYduXk3O7aO9M23CDgST97Q5T+SyGcet9quld7yM1/ORDZCyt8LQ8Mr4tE9FSwbKL/XPNlVZCIall+lqfVWbSY2zV+T+i3bccs37LevrSbESIyHSctBOGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789561834; c=relaxed/simple;
	bh=jQ2vIQ/IwM2AMF2DIdUn+7WJ6iS6Ucu/7TJYY6/c4Ho=;
	h=To:Subject:From:Message-Id:Date; b=GLxcfDjeET2fgTOpBQ5VTLkIa8kDg+nVABAOoyOIReILGPNbox+1Le1UgIZRef+R+jHH0zbTNHYdYWk/OOCz0WOG+kdTtnaPXyFWph1MSf/mVuuBZfuTZIs720eHC9QeBIpZdV5iS6KiKCjMdNYxYUHxSNy2702k14gxgc7E+qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5znHnbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5znHnbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6AEC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789561833;
	bh=jQ2vIQ/IwM2AMF2DIdUn+7WJ6iS6Ucu/7TJYY6/c4Ho=;
	h=To:Subject:From:Date:From;
	b=R5znHnbr0bR/TeInZZV3abZkKT2Hz37LvSVUbPGudvP0bCgp75wVxMUDotmzOFQJ0
	 zfUlWNflVLGFl31t7QY2ByxKWo8ZYBRyumrvBrDIKamccDG7Z1MOsecaPNCtsRA7vb
	 yLH2xqXNRgCrfQB/UR3YFrlqD2OZj1foFDhcQ7mhjqL8m1yaE0agKWMEpVGa3NOH4t
	 cKw5oGOEJmO1TEhFfydbL+3TN89ZPjcBpAPEmHVT6RmXi7/mPqbE/5+qZQy9oeGaav
	 /E54DBq9PxJ7w+7kiuRTfaNCI/PrXoQ+SS4KcPNRBBmlD+gYCNT/wRjdnt/XZq7sjU
	 sVwRzD/q9kv4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB198C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956183369.9258.12007618498577222003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6618abf7e044f66df1b3b2d0544d4ab4727d8f6eaccf77624cda2b16f4c924c
Date: Wed, 16 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789561833
