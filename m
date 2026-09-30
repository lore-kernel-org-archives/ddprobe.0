Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEB23B14A8
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790762434; cv=none; b=PJEAsfJraGR87XMcJFRirXYNIboVycn0j7JjoCewvBonH9zVPByI3TB4QlL7Ox6e06c5IGwVvDl4UqB4pl6c5nV15MtRI5cHa4QsZjRWyyrz64Z/Yg2vGVK/YKrjsBZqPUlNBUcNVJtI6GcrElscy/yhZ2PrMz/v58Q77ElYf04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790762434; c=relaxed/simple;
	bh=gPybk44t0E+U+q0+4bsp3XRAnJqYcDyPC2UiHw5H5zA=;
	h=To:Subject:From:Message-Id:Date; b=TopwQQUNR+7bNhxtzOsiyPE5tlisGjoeeyxTONJk5p3cO/yO1gz54CbkcIYoHZOvjOo56UD0xuV00/4/xqvRx7z3FXIEBZrM4VukzJ4vXo1Bl7uA5co1DkJ0oAjwzQfaVlBCfA3g2CvwCw+ucpU6N87bg7HtwFvkOIc4K+05zNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0577bh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0577bh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B98C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790762433;
	bh=gPybk44t0E+U+q0+4bsp3XRAnJqYcDyPC2UiHw5H5zA=;
	h=To:Subject:From:Date:From;
	b=i0577bh5U3zYdRDzXtXk05a6xK72QaRjULA/R0GujqXPdSaM68gUfSkn8pOdyHVhU
	 WBet6Qyzxzip9VG9lI71tWrjYbqtdeNItmDs2AnIRwsc5vJGPU9+LyE4y38oBb6EDK
	 SezQUej2qYH15MY27+8eZeqjIH4/jSoVqdTiL7ER9Q7mtviuKzXf/N0j5s7VedmBj9
	 kSbuAeYVXEInnKmPfJZq0BWuxAYMiwIJaMs4uxXqYjuXLqNwz+mNqCeyn1/Z3PZuhR
	 ityS/Uf5WQ0lEc6GJdeDgIDcangWntQrBMPR7R8hFAuhtmh6WXOYhq582YPKbMurSA
	 VFolfOyCTgRZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEACFCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076243370.18745.3993279159454406635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecbe7d81334566c1f318814ca4f5eb978855be1cae94d489cdec53526241aa0
Date: Wed, 30 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790762433
