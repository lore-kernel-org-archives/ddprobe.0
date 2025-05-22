Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20AF22D788
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747949393; cv=none; b=E9zHswRi4VndQRbba3Lrxg7D6IDx3euhFM+mExU4SIqzd55UBCB7wDC64I8fS4peLVUHFHYKQUJt282gcUfo2EKXFAWnjpsa/Ay14M3eCdTBRiMQWA48NCLooVCRS7fHAFeu1VBR1Bq0FwAyUncygKFGXasveiMbTql9Vn7juhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747949393; c=relaxed/simple;
	bh=Yhlqwi1cnikiyqxlfLjLu+rey33AKxNhA0q0x6JPRJQ=;
	h=To:Subject:From:Message-Id:Date; b=DCwz7zXK/tn9JcTt0cwoSOo+0jiikThG5GU4LNaVlQvsQeYAurt1ir2w9Vx6Nj086K54xThGvt+ov+f+70mW7wG33lRyV2Q4JFYYcYzE5Ykf7qVoVaF8l8O+BMpUELnpd4AgztdmGLAI3OGQNlaCRuSeh+/LyYNckGUTOtdRCF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZdTbyh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZdTbyh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A244CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747949393;
	bh=Yhlqwi1cnikiyqxlfLjLu+rey33AKxNhA0q0x6JPRJQ=;
	h=To:Subject:From:Date:From;
	b=DZdTbyh7cCrC24ulnoXwKZURpWMqkwYpTHnxDnZPNTZyUJQcNnmQedaxrB10DQInu
	 mLAgJOnGxo+uKJFTHgb14C8io2kGD/LlAdEUwpoV3nGdakbfpj2GcbOo8cvqDLTsBf
	 Ulr+aXucDH7L8TVWvh624A66zZriEFE38AY4n1/zmS3eQ+r7kSY1s02z4wx8SkoRV5
	 aQHUsdkL0rgx75h+IdpaSDB/1uonifP+FstekrNtqSlI9orVqWgbqNOeNYIDgD3I6S
	 BfBDzsfM1VOR56J/UkDTYxEd0I6dXg4r24qN9vMvJi+iw7flNxPvzS38ozVqwhojOQ
	 2OZJcbXiMoojQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C9C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794939357.8033.1439554226360153498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43515a8d5ba992ce5de1f28d565aa7952fafc26761c5d4b2d66228ac53f99934
Date: Thu, 22 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747949393
