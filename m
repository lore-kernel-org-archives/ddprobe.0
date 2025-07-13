Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF1F2581
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752422394; cv=none; b=XF68z3UmHGsYUD+gd7gkHUxaikc3KZbxws6OCjfSelVeqluQXaBxjxw3nLpu5SOqXgTMeFykpzSFcyp2uCMLdnSTGGQw373JvffSyTB//hpbiE7eaVKp/Tmyv9UhA1dnXFiFDmkWaDOaqrb6RpzR3UMAoOvMyJPha0yxLeJ5MY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752422394; c=relaxed/simple;
	bh=8FVOhg8nXgSxaZCMmBVk51tcJsdICV+E6c33ZupOlpA=;
	h=To:Subject:From:Message-Id:Date; b=VoG52uxRTMDvjUXR9+zZbnXcU2vzmkKDTXOUQl0Mq7aSKNCRr503B7BL4s9k5LXH8Fev3nNFO4i8RkWhv5Loq90ZXmC7iJ9IJT541IWEQSPJbjmxCppbxsN/Ab3DdKXV5yVkoNNy7Dfz5vOmmnnr06E1xmszja+rcs5nRrdDvQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoX66GMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoX66GMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752422393;
	bh=8FVOhg8nXgSxaZCMmBVk51tcJsdICV+E6c33ZupOlpA=;
	h=To:Subject:From:Date:From;
	b=LoX66GMSK0u7gJZ8VCWL6SEJMBimz8SuzGiUJUzq5YkbXXeDdf2xlBLhPsbWqER3N
	 BsdZKETGH3pIdowu50eqyVLUB5IDDXFL2zKtHACCDXpfskl2EjGH12INEUaJMyD5Tm
	 LG6zHO5kIWwMJ0XzHK+oaf5L2VJZ3ts9SWPx+etn8dA/uGFvJSmY3mthOc8eYWfYvF
	 spcW4+L8hkpXe86/sl/zqAk7n84IlSW58Wz+0UTisOZp2dEi8aiItYXtHWMou1X6jf
	 E9Lg533FFy8FfsswZFKtZhvuCgybJMnPsRrnjB1/Yy6IClVSRU035jatjQdguZMoiy
	 NQOkDGRDG1J/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0BC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242239357.5336.17854107064407700360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c157778f56138e2f7d194e9b873b66865a168fbcae80bce03ca26e5aa8cf45f
Date: Sun, 13 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752422393
