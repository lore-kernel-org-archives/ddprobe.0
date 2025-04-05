Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDCA1C27
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743843594; cv=none; b=rUdSTfxYLfiDj3XQV06VxYFN1HX2Rew+P2V1R36xo9yC2GGTzFq9FT/p1GbFAwfClwdklQkkse7RuEG8OtsaAqa5zfRtBMbtvy69ew/vcfFwDvZTkQSudpILsYXfAujYoH61x+EsW2ouz9PQB7NXzDotbXY7t9NtMeo2lqMj8xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743843594; c=relaxed/simple;
	bh=bfoHkvHMVQf6E6E3x+VXKVkLFbMrKP4iPz+Ox+kRtGI=;
	h=To:Subject:From:Message-Id:Date; b=DHiNOgTtptJaspXYM47SZKlotgmRNS7dJF+5lzb5QaxxraqodCoG6kalMP7TUqskLVT5HyoIe4fswcSh1QqSmdODQ8ie2vpeLmLI9RtwGOCslOus3Ia+CQXXcv0brVjRPnh4OXVvsgNSMoBlVGVoXkZHIfSoOtScyTiynVcTH4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKUWxprd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKUWxprd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6940C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743843593;
	bh=bfoHkvHMVQf6E6E3x+VXKVkLFbMrKP4iPz+Ox+kRtGI=;
	h=To:Subject:From:Date:From;
	b=aKUWxprd/SaFssaLG7xxvXDp/+GzEraiDuq72nMFaM7fFzVtzpgB3fIDMrkoNIx8g
	 d0zNsCuEMnab5wd2T3OHIZpVCMUfvj4tOcgDWOat8RrZD0vTnMfGRitmIOXmLOMenC
	 W7Gz0n/waXCZ9vFPRlcbCVzySWpps4jMxYEb91+TeWpHKkMYV/kCpqzyhBj4cCuaYh
	 1pOQHihX9yyjSgWcDyFzZYgpuXEYt9Wq1437hbWy+agDbvdyVsmB3QeQt9rAAf4DRY
	 DaAJZKcb7nZnXVJI3BMPebuojQRAMGyv+M7N2urg7YdD90jYY8ies7tyy+OTpFkvk9
	 1czznzgLPCdxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ECC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384359358.15671.5416261038861528588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504ec118044852e8853c3c1992e079e3f1fdcb1affdfce5bf8fb583df4924cde
Date: Sat, 05 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743843593
