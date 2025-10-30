Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087C527702E
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761860994; cv=none; b=KKLMH/ARlsD0FRDAiyH6XDt73Eu3VQknTeKmS4b6dZjxBzHnkWZuxEjvVBhn33U3jml0ER/FikxXx4J/shj9nk9vXLtxpol1gf0bMcpsu7bZWGY/zcvc8d4VrxEeAuMr2jixLT1UvN8dbkS6OBck3PdOXIqykz4GourDAr7Bexw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761860994; c=relaxed/simple;
	bh=EIUmqrnFKv0Ic3R/Rej6IbfxMutdZ9waJUeY7fzyfDI=;
	h=To:Subject:From:Message-Id:Date; b=O/84hBKo2TiAJuaCU9vOEZnDK7eg/2VNe/Bv+3P9Tx1BvnzbsYPAwOhaHWM/kO/NVOHy4YormOYU61In1KoqSOD8EPhSfXR6TFi+ggpS39PXsr8rgEoBUM/NdND3BoiklL30Bw9PuJnkn9mZCn/Yhd7LjkrP2bDBMU3NKNzfOSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lm0hSIce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm0hSIce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8F3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761860993;
	bh=EIUmqrnFKv0Ic3R/Rej6IbfxMutdZ9waJUeY7fzyfDI=;
	h=To:Subject:From:Date:From;
	b=lm0hSIceB1qBNOzlBlD+Ycc9VxcAHyXI/WjUvGSCrfkIPyx+hVQwH4d9VV0Uw0lpA
	 psyj2FN/9a/tHS+7m1REhr7Gsj+xEKyWUc55MoO+76Qde/b4IVo8yxbeXjObINJwM2
	 pFghj1Br90HLUbpwVjgSFZ0Y0W81GsZYrlCTcQCs6Bis56+PUiBPsQ1sn4/YysKGaL
	 zT0GtNDtp6H96HVcyMnPddnNY+zCoC+M+FvVXPZ6694cPs1Vys871rZJ5eIQG6G8H6
	 V2oCYDLob73rRGPUVjO3knRBg/K8VF3zUV3oxt7sCx607KvKypVaglIoEPpGsWColw
	 xGGtkWRR8RN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F227CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186099357.11517.11112792768824865103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827a8b3f5ce4ce6b90755bd2ca76b50dd19bcee7b1cb22d179a377e82da4f6b7
Date: Thu, 30 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761860993
