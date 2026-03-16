Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1565527FB18
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773705294; cv=none; b=XMn9KikuN356OtJgxyaHQiWd3JziiUf8wxRfhQRYgDG2Pc/peQ9w5YeZsttvMQi0WWsORfT65Kq9KiSICXkr9nx2cUG9Jt9Y0EZb4Y7+BZjn7HIF/Ku98tp59pVLvlwI9PAfyOC0LuYnVCWcFJQh5IYzHJCWz+g2bmF6Zylv1M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773705294; c=relaxed/simple;
	bh=lJys8zH5peQsCUOCUCNO9SKgWpsOxoh5DkotdL44Qr0=;
	h=To:Subject:From:Message-Id:Date; b=k4CSmjLDuBxOCBGVFk6kpyCSVQwX8TixclpJiCmq/N4/FrBfYeKmeqgR26AOOEF8ZMpRkkDb4nlpBukWaX+RoGT20Qz/Zy5bFJbAOJvHgPhqz+ydCBWs6VX7LLlW3krEpKbPSFTx3elMaWZhWe48viz6T3r2EWxN2Am6WSpK7RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCO9l1ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCO9l1ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A68C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773705293;
	bh=lJys8zH5peQsCUOCUCNO9SKgWpsOxoh5DkotdL44Qr0=;
	h=To:Subject:From:Date:From;
	b=LCO9l1ah/tt4SuTQ90CCuLqDzRafHyb0bt6zL9fZDx8AfWQ99xcLczk8iIYTvpDlm
	 4VFJ+odaskjFR1mpe2SO3AEY0gK0Z61LEOaN36Bu191q5vPHCikfxBg9rG2B1J2iig
	 fhtFi8j/c57ZKQGke60k886hgKLjg59tYxNPBiTG87U39J61Tr/MopVdk+Yp+u6JB1
	 OYcl4vrlQ1LZhXbIkkWFwWw5YREVBxEXLVBdi4cBkQjg785Cg1Kn7vgoWq920GjWcw
	 2+yjZiiohvBzhT8dD7rpuBXvhF4GoT1g45LLOoNJecRr+0tn/+8qXB/MJBiADcpdqC
	 DWkEY9MACQSaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F666FB5E88
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370529357.29495.359498847894964623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ad6595311081717ceab64a9390dd04634f784c8bc0986293ee1d69b5f85341
Date: Mon, 16 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773705293
