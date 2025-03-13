Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F223250EC
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741838334; cv=none; b=G8nPjRvu/+MGSHzR16T3usz1v2E77aGCVKIEnw4A/h+hlqiSUG/1sbN+zI/5iFE7c5CKzGawy2sO7+XuJPSxOBF/ps5q/M2Z0PFVyWCOrIZxc0Dg2dVoe+dX/vfSmOIXHI+3lTXrgSjMb10ahesE0tFFwnrIMXvXDg/M3sVUbDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741838334; c=relaxed/simple;
	bh=hL+EQeQBSISHK3Sx2gDrhBJb1SqDVx1oqrI9/GCSRts=;
	h=To:Subject:From:Message-Id:Date; b=kXVRNhfddKBauLi5CleChJAa7QAOUdX77zs0uPQYHse1MAq42yegjBzfAKjoq+/4h/Zmaa+MdCRcOc0+dIXTcuNcYLZf86YNcTsbx5q6p+k5uxrHUz8w0eWy8oWU3WwNgFu3p+KyoHaOZNxzbtWGIu7aM5KoWBRhD2qYRG6w1uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnatu0RE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnatu0RE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0796C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741838333;
	bh=hL+EQeQBSISHK3Sx2gDrhBJb1SqDVx1oqrI9/GCSRts=;
	h=To:Subject:From:Date:From;
	b=gnatu0REXMpHQRiYZ1qUnDI1VIDATjy557OKBc/H5Nc7ZsVilnWXJYJFeGPqNePyt
	 ZGX2JKp+ft5qPb67nPMfVR5iso+DoDoHSV3ybi8WI+bxtXsGpqZcHg9KYmYiMlIodL
	 9u8NeMujzge0+7nMu6aBDnBd5eLyMx1cPTKXrx+2U1ha2GUMcsTpa1avbpZUZvhHPx
	 VaiFyEwa0lxtgXzqpwGoUHiLn9zg3FiGrEr4g2iuNUnJOc8jTCq8w3KCI6Jy4YPSCg
	 AguFAAyaMOmzBaXXJBr3d0NBaXUyJ7Vs7P3eNniltfZxZVUlPBU427VSXsJEC/D5U3
	 3iLfjzcNh9mLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2B8C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183833357.28774.14064781367450479818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52516c870750b2838de9c31ca0c8c9713387f766e86fc8ee3424552554c5d88c
Date: Thu, 13 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741838333
