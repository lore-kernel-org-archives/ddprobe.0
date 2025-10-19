Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2947F1E50E
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760904594; cv=none; b=KHRZqLcT9MaN+V2xWixPGZ3Hu0EJevYORH69trCTbHhHTyWfAoWH1z8X+QPyEJZkF9tpdI+9qH7BBp5ZX6Q+PFTeKStMC14dw/NEd8jQBY5DXqJ4sXRFSV1r4XWtMSG/s3KE/i6YwGDuZHbCwkH0rnQW5kdJlpkzAXOuR+C0ln4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760904594; c=relaxed/simple;
	bh=2f4NGJTRyg3TepBVf1vHo8dDx75MH6tyfpDxyqtlAZQ=;
	h=To:Subject:From:Message-Id:Date; b=AmNFqHN1TL+5JEZVa17AJHqFW/cw3hu3neakdE3C9wy6Sp+NTaYOvu94yjwNlygmizsRxIooBz0m6c/NxQXsHGVkglnD43jdnQekZC+JhWTKs0QxSBYWXm0UZh9PCgzRADD98IYT/BfTphNR6q5VChzWhp1JgEx70FN+QPyZrLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0qaNJ3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0qaNJ3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F56C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760904593;
	bh=2f4NGJTRyg3TepBVf1vHo8dDx75MH6tyfpDxyqtlAZQ=;
	h=To:Subject:From:Date:From;
	b=t0qaNJ3oTlavSptTF6GGQlmCtJ0/Mdd1U7K8129j1e9to+5hioOqlnHpsQSDuAmYG
	 CcZrZVSMt6Z+9rPeDdC8q4rgWRfb4+U+56lelsGxbj65S63WI7Z4OWJIqZMrbz7Oo9
	 KkN2PrIvEdPwi/GSMPR+RV7uT7mWf5nlcLBMmcxr3I/tHtTNhgLcRpu1czmmQ4aXXm
	 GcnEpVMJmzRT2TTleF+0pKL6bk5s8Fxt/TILIzIPeHVRq7V0tv2+jmbL/LBCNCU7Cg
	 DCRxGtfHnqTiXpsNzFO3PQQeU1nUCi0f4cpsexjitbLST5vN021w4OzGo18LtbguKa
	 KpEgdkGQY5+pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090459357.11302.17309968535997549882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb8f5df86efa24f0a1fc617136c433e8d25229c0015d1e17420b42630bb9c1c
Date: Sun, 19 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760904593
