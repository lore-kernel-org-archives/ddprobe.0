Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F0A472534
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784818834; cv=none; b=ZrUmB7oj1yjhukK6MtrnEoXs7d9E1KKq2cAZ4VZVfbAzxnbkxAH+LzsxKZqZcezSQR/X0vcRsXKYGOWFhp9IGsDGdFUbn52/WTHVB9scpWvkX0LA5a+oZL5hEdaZ+2PxejNHEi8Az6c7mkjLYjGGgsU5s2EJSqYhZr12tqibpPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784818834; c=relaxed/simple;
	bh=A8W3C/ZWl8sVlVhx3zN+3Mgm9MjY/h6I1RSNQB8HqSw=;
	h=To:Subject:From:Message-Id:Date; b=kpRvh80yTz7+VpMkH4VwHjaEaifNURzM8iRWprBc2xWLdolLcoUgiNcSPVapdCIJo5g7m+TAd71NTM4uVu4Kx62cAb5c6fQMlf13NKSiugSTXXaFZRuI/1GglItXb6cN4BSP0OYACEgRY1Crh8foVDH90U3dhbEEZAq0ni03TqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb++qpiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb++qpiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF684C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784818833;
	bh=A8W3C/ZWl8sVlVhx3zN+3Mgm9MjY/h6I1RSNQB8HqSw=;
	h=To:Subject:From:Date:From;
	b=Lb++qpiGKCYsU2w2XDrn9UH/lETod5sWGbojL+MxPyGWqm0FdemkVRgScHZjDYON/
	 HX7eJiM04iyU7/LqmP/cAL1o8GdSGE/rbfApx1HSzaO9AKMTGJmlkqrg0GU627cr+C
	 Fl1UNrKuM2EM5EuDbbh8ipXkKCND4YgR7LfyLhOl8vKs6tCSAS5zn2hSLP0p++CEez
	 dwmPCea9GrnTcHoBhXV1GagWMpxV/LbNBnvhtr4bXcTBJxLPtNFAUQMXb5jskBywdE
	 fJuOB5C0/FvnCD8qx9qhsZafMJtuXH0MJP6Bxw1Zc5cBHmZ6Ef/4OzOHV0gmgAd5bU
	 T10NjJEVWtSNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE839C531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481883368.13455.13544027688881566696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d72458808193dee16b905a410bbdf7cf74fda78e982fdf6ec6c495f7e51b8fe
Date: Thu, 23 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784818833
