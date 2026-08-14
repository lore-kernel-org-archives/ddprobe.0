Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724AC3E314A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786750834; cv=none; b=fuDXSXnCtOCRuHqA9uCejO/ImjJ/WKdJMxas/HhoP2jPbqztgrr8V7Aq31It1+Bli3Zunn6VIumXGQ79X5gx8aIZUTTpukg0Un+v3xw5YsHkByoP6w5MGdqCFMnsUTODbAJKmCggDeE9zDCBvuR/Fra2qn3f5bU8iLbMxS9ug8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786750834; c=relaxed/simple;
	bh=2/xFALMzfK5ze+yA+cvhFgLiitKvjYoc9RAlY5XGO0s=;
	h=To:Subject:From:Message-Id:Date; b=PuX3AkiOKNMKXUapJ4w15W9pBDoA527nbZ3lOB1ojPdrdkjGL4ckIvG+hmQiyFPenCq9/VwiZ/8KL2AFfehcBLKkbsyb7Fpko6k4MTvFIuj/JQso5iGubk78gzFJiJqD+Y4Nlyo/RvFav+3T7LYRiiCfKzTbJy7gBJioGvASyQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy5mdVj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy5mdVj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91AFC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786750833;
	bh=2/xFALMzfK5ze+yA+cvhFgLiitKvjYoc9RAlY5XGO0s=;
	h=To:Subject:From:Date:From;
	b=Yy5mdVj9mS/ZukChiggNuWhrGaPD7aCFcFoXiMIsvWF/0vh4priXNP+gqUZe+NcyV
	 Hwy+rY4i0OXsH9k7tRZIvwgChSN232MEKAmkMTzy+5p2tFrz3I00rgjGfFUh50D/hU
	 K/J0SdSOMlwjtbfYN/IjpoLRqSlOKWa6ombuYeoXop86wWFd+SmJrnr0qMXgD8EZ1u
	 nzcRjK3qWvHVveT9gHDJlMaWqruKtft6W18RazSl2+gNipiyhloyq7Zfl6/hEeUIO6
	 UXKcAM9YZSQdYJ4vfenCQA/5WE+jWl5cMXlOOJ41+3dFWuI/LTIVsvrFFO/RMe9bm8
	 Km/pI9Ps6p5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B072BC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675083369.10889.8134689352569441309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65db18ccd50a55543994f984aee97e45e6519f2cbbf48685fb06564e9d8b3d0
Date: Fri, 14 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786750833
