Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266611DE8BE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765480974; cv=none; b=MorH1+4XOcKtksBPx51eylhgCVGKdVqpLFUWiQPSkdwA34YLQSkgdPo0PQ3X8d/3cU6DlMphkVZgvVyV/jCIZYMzv9rpMqmI6mFPFIaL9LnLmWoUMdIIv1TIMS/eywrw4V3SuiYaPE2gfxShHiuruuk+ZmlRjcNnCYK0jxRHlws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765480974; c=relaxed/simple;
	bh=9QJ51T/Yeoca3v5niZRFox3ZdNwHyuVbBLUGYNDo3Qk=;
	h=To:Subject:From:Message-Id:Date; b=ApfN/ncRnjNpmW2KYfkZ6rbeQDwrXAiug7ftbs334SuRVXGyEynK31iXAxgl2Q/43bS5OGvrGED7qnKMjceuGH3IZP9ztkMW4pV08olbVbebC/2PPshP2+KXX68mz1IE0XIdXkSD38o4EikwvyVj3huCEacwttBYGVRUCGX6T4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCo30H0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCo30H0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9354C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765480973;
	bh=9QJ51T/Yeoca3v5niZRFox3ZdNwHyuVbBLUGYNDo3Qk=;
	h=To:Subject:From:Date:From;
	b=pCo30H0V/ocfgQ8jnZ21VWH/g4fMmlSTJZmFxd+ZwKsykgh/J2Glarn9veEj4jOeZ
	 GLQJlcYVpBWi1avt+N7CwUDA4YyXSKCAzriM+6CCZyNTxJG4TWTH/cfI7rZQGJX+qM
	 LpA881KTe+OCxZB/4xHyI01uu6gHRzuBe9PSfmwtjmTyaReIeZj/yRRrd/9LLFmUeT
	 7D4b/L+oPW+uyLo3XUGzQCPmIg8wnXkH+LdqmB5OoN+rvSzStJWQnZ4yiQivcR42m6
	 xbtlyyGDkqTKZ8JcyHXnetZs+wz0iNJsZzPM2afjAWtewV+rIN33CLeR4BdAZ2rskg
	 QSdmnlSDEtETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9485CD43342
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548097359.790.13384771154810074308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f307782eae529c4cd0964eb812ac69bad6c143e3f27a5f4adb518dac050d127d
Date: Thu, 11 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765480973
