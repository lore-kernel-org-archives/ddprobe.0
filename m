Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175BC2E6108
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749651594; cv=none; b=ripqlr7ZabxLB0Ey358hC3AnZsD6WJ5hOOdYFVIpGSyMnz7NiYXxSI8KQ6WOuEyAbxbYLffgNWIKmg8gSMkOwndeT4mA2eSpj9EF2fNo0Pnw8J6NTv+QhbDr9MopGCydL5OsOUA5M336BC3D/4hmxSSQsaRm+Wg1XnPNKo6OKDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749651594; c=relaxed/simple;
	bh=sGvW1m32JUltNFjXkBOApCzkT6JWbEIZOqUs9u5G3ZQ=;
	h=To:Subject:From:Message-Id:Date; b=ihAgICCRuzNDDrmnVbnwkikJS0o3hyEcVys7o5zUH7ZMeShM/dhrXCncOFHKj5sdJ8Pl3JZ2ezMhXX2iE8BKobPoVW6O0jh4071L36iaSj6nVDHYIshCFxVozgopwp74xeWM6jwJUZf20HfKXKuaYeYdovUkL/uTZunDIFxTvtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2FNdiRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2FNdiRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749651593;
	bh=sGvW1m32JUltNFjXkBOApCzkT6JWbEIZOqUs9u5G3ZQ=;
	h=To:Subject:From:Date:From;
	b=s2FNdiRtSk2HM26QjKP9lfjJLDHmb8V/CJrhzdHiqIspVMCjW87U/VFVgucmk25dr
	 //5JWxAsjpCCE9IelZr1/uIurzfufZE6FxSTrCzFDWOnCtP5RGyfCtUCgbalbNldNO
	 XnHM8wdrjd7UAbRvwIyOmOU1pkSQ0pWD8gyRdjI6fYVm062Cxd22BUm8Vhl/CveARl
	 DPvYvM+5T26KEyV3USdrx3jMqWJxp60DqPXLLX3wtwFg+Zzs83kaBaqUnYvesFosm1
	 nPOlb0ToHESDdh1cHMHE7Qxw+ZMnxJZ3SGLZYllJzFI2IW6oblRaEm1HLFrKOIyNap
	 uri2WI/BGaTWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93432C678DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965159359.7110.992519710217694041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07de9ed882cf80fb38e7582152b9f7da0ce5f848a347bcf71f7b376029dc5d2f
Date: Wed, 11 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749651593
