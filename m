Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C06F7081C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751833194; cv=none; b=cP7SyjHN1x30dK5LpiR5tWZQDSEuRamrjT14N/uc27UT/Tb7aEI5FEy7TUy3wYguvqwPqX9LiMXhdZmd9CmQplk9QtfneQV+/ShyZPlzyC4YMu0js3CiAiD28CL4trP/dBX56+mDgIltInfu1VNaO85jSu9rBkXArBvj8pt8cA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751833194; c=relaxed/simple;
	bh=rDfMiHBE1BUfPjhhwoGUfDcc1YlFmWkT0vBaix5YUx0=;
	h=To:Subject:From:Message-Id:Date; b=GPsZxdHUoZXpvQi9NOd18Sm1vw23iXrOExAAtRk9nclO6AwiwRVgp6/4qitFX4FgErik28qxS6GK36VCWB5krUm/eC7Pp1/SdWKFKc1T+IfrVrHA7jp+hfG4ylqKJvSjA1I6uUln0Xuejt+kStvo0F9NmoQ9SV/e+m3vtN2pbgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPCR1FA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPCR1FA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A47C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751833193;
	bh=rDfMiHBE1BUfPjhhwoGUfDcc1YlFmWkT0vBaix5YUx0=;
	h=To:Subject:From:Date:From;
	b=FPCR1FA2bO46d5NPaxPhdlIOFvVhLjglSbZHYXAduD735RD9RWF+iJ17DbOvgzj8T
	 IIjCgimfqesK1IaIn/Dei3S+n6Q7z98xAyFnslw6/FNRDyoNnV/vbfsi2z/riQZr8Q
	 DE8jaCFpGV2ukCZTp6dz8t6FoQo05z1ee8SuXuJSnbehJlKIjs7A/RLpttEkyPdtYa
	 gXmziEbGRdjzUSm7t34gUj151AL0Afk3vPgViW4LKKLnBNisRO4UTklfa4eJ2CvMQU
	 1C3l+UQEdigesaLZ5uPBey17B6G0r/gs1x3ENLhYJke11suEGzi9FdMUiHncfWzx/8
	 aTC4xOmh6G/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F157C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183319357.18123.15578891796056854748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dc210c21d4e5579ce95e70c82241bcd3a7aab1541cfce94ace937e049f413c
Date: Sun, 06 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751833193
