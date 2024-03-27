Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDB612B6C
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711520296; cv=none; b=Pxt/FkgS/obwWIGsVZecgglhMSg6/iuAQE6Tn5bEl3N9AIy3LC4fcY5g025tb3XGkTxJDNUAkSF4o5d+4QvNNtRtyahB8xD8NrzC17wB1Pe+vcr+T5KBTXT4o0VBcAF7VTAr282QCKmvY7Wo2RtVvnmsY9dP1yMRPoFL8HJ6+dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711520296; c=relaxed/simple;
	bh=Ccj8HvfG/ztbBbC0CA9mpMnaNcYA+vDuXWYrmkQ2UGE=;
	h=To:Subject:From:Message-Id:Date; b=ckU7OHoX0+/5jdH7SkNyG2514MsbcqpGBYzSUmrchJtVHi5BImnZWYDTJ00W5I7H2vPm6y+OqW86FgixAv2kGb7RoqA4NanS0aULIerTwOqXahMtMU/IBwm1Fm9eGe5hH1wZ5poddL/pLbGAXlHj2RH1/iDiRT53c8H440k23fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/YnJZfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/YnJZfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DE8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711520296;
	bh=Ccj8HvfG/ztbBbC0CA9mpMnaNcYA+vDuXWYrmkQ2UGE=;
	h=To:Subject:From:Date:From;
	b=P/YnJZfjqHPjwuWaL/WUdCqzf97cCfkOrJGr0HwJKB7C6goDY6bqFEjirH7tcbKyJ
	 4dwN5WPErZUpvbAzw8q7rz92R0VIw08V/6fYQBM1tO8oHVBNbpw08TnOzY0ux9Z9eN
	 Yqq4LSHM88UYwpqT2TDCGAhZCMY1mIyfNOeHahfpwAf7USbbbCkwBstY1ZOronoUAL
	 ak/hUXZXBr35nEAd/5xCN/rPdrJH6Drbb8jFHt0iI9EBKfIsBij2NGupNo1qksLigy
	 wphaY8Eq0mZU8zbMmNajBIvOnvgh9G86zG1LLDajyU5dw3C5KEbNjivb9CEB35lphR
	 4mnx5hzo3n9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645CDC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171152029637.23723.9908512616199243295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1590609f805298193f5276dfff4b334dd8ff7c414297579d62ec318f8e71cd99
Date: Wed, 27 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711520296
