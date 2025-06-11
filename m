Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B83625BF12
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749641395; cv=none; b=nRHMnetu3iRhlKyJ7Vz4uHKoUSanSy5igXsbg61eAIbaBPBuHqzwUsyEj+Mhyml8g/GIk0dsdHFeOg9apdC5VltaTtcaTfUiejIX9OvRvBZ1I9PQpxT9N+FQQ6ZYigwgNzCuFh6DwnzydAFlLfD3HhgaZOXaUC/ytdOUtZqZSA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749641395; c=relaxed/simple;
	bh=rcNSxXzv9J/D2KBnp4RxLR2Ws4o9o9tK/zrtNlbt3ws=;
	h=To:Subject:From:Message-Id:Date; b=QkJjiqtGVwI5C4or67s9mL1MyMRGvIK3SVw2is6dCA/wANDCfF2p9YakfT512sbMl7J2mihrqdLBz1/XAIRsfwAOAj06HFGxmFObw+M+VlHUKTlKy49j8Z+Nux8Q3YRv5Z+mmgPicrRR2vtXi6XVWHKic9MwiC/OczJKaOTXNZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlZTsyYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlZTsyYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D5AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749641393;
	bh=rcNSxXzv9J/D2KBnp4RxLR2Ws4o9o9tK/zrtNlbt3ws=;
	h=To:Subject:From:Date:From;
	b=SlZTsyYdkTDmnwZzFYpxW6FY/J2vlytKHe6sAqsV5wN81UrHksATZiZ4krgPxCtLs
	 cZ/effDWPbqcqZjQxXdQhiuj0XBSiBNmsUNi2wKX2gDGmbWGqG5s2mly6AMpiSeOyz
	 G4/ZkS/o4CFrBHJiEfn7CcHCgaaNs3V5vtkL0hytSS8RbW6iPGAgjzYcIJDAQ5v1Rc
	 F3S/J9XTK+sZ0f1XOojIsxZBvNwrixGihaGs0bLEKWxWZGfGqNPc6PWjeRg9E+NGkk
	 Ej8PXQtsx80hZE/fGoNG+LiHAB6ifuTnYejbkBswTjnNMgTUquOD0NX+kbDdWCrk63
	 c83c6yOBnWuGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97873C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964139358.17639.5440165927792888454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a2e43f95e0970bc8d4713dcaf6a8e826b4ff2ddb970e12fc76588ad050568e
Date: Wed, 11 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749641393
