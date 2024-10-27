Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546C1370
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729990554; cv=none; b=kecTaOwgCLLepMjhdHnwxMJz2sHjB8b0stC/QV3nuZVYR++nYd1SLECz6LesWPFMtsDFQKmTDxksybNtGL7c9qBkLc7cBynMY9MB8uS0CC4qXeCb9PrjTX3e6S4oZourTPA8dJfYtRYratTC67cfaNXGXHZ9rmVg8vMB6cIAu+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729990554; c=relaxed/simple;
	bh=pGll/2YNgVQXjarNF0u+dIcPf7GtHyoZtpnaOxlS8Vk=;
	h=To:Subject:From:Message-Id:Date; b=AWX8B8o9ndmmc2qgSLYScy4DBd1qqHOwa0XYTNPOVX36XwmL+DqmVIQFN9FD5U6Gq7alEUvjaf5SAj0noKD8F6d7zpbW0BJsk6T+LVJFTVGr4HJnZlr8jDnfWboHLyYgJWH7pjKMR2Bv1TIWDXB9yWfoawZDnMHZGnv3BFfPJDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfkZDtDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfkZDtDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB78CC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729990553;
	bh=pGll/2YNgVQXjarNF0u+dIcPf7GtHyoZtpnaOxlS8Vk=;
	h=To:Subject:From:Date:From;
	b=hfkZDtDO0zwX/+WJs+Ol7wU7Zzow72X+1OWJoTfUDO8nm6KJVFA7SMWfQBa7Q9B0B
	 FqHsX5lV12tcTO7lQLm8+WbKuVVV1f1R9Mdh5SpTrE78fI1W7OTVOC4MdBQpqnu7M2
	 VzxNb275BfgSpUb429fRoqepTwIeb5TuLTLgd8koZ6K/GrqiQKnBXqrK92vFXnC8dP
	 3nuLXNK8hnVsbP3BX0KdIX8nxT4Fn0UwbWcruGBU/uOXgx4yK3Toi2S1xYMkUKaYgD
	 4K1vfU6HP66CPJf6Yp+mdlnGNKeFYhgr46j8z7rpodr4KdPfMHvjCLlK1LdXxpTn9y
	 WMP2Q1cpvXvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5776D0C604
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999055364.2838.8703899293748780639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d3afd3fc59d234689b3c97ab32712fe5c7a606b6f79ce0c8d33f767b434ae0
Date: Sun, 27 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729990553
