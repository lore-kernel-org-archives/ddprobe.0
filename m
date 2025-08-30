Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0372617A300
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756567195; cv=none; b=ndEJjEXn1YR/8ztvS0CYEim0c3HH5Ri5I54hVpz9wnEiuSJ1pOywBubc4Ss95aPaoZGF8Ww8/YrcIKFq3AXBfx07OQUcp70EvltSnfKSXt3Tz5/D950C+nIfucHo1zCKbNY61C/onbb9vmDcJonGiwOCFkq+26Y5SVILcS7Oono=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756567195; c=relaxed/simple;
	bh=r3hSgM5UTkdDuJAfsNVp82B6srtDJO2S+zFePFPaFE8=;
	h=To:Subject:From:Message-Id:Date; b=bpJO8OuuoRAc+JzIMW+tBtmTkpsSkTAIjCw5yBcdtAVJyoMX97dNIF8jO2hOrJq09Osv+NcmToi7kFKqfQk7UQ5pAM7obyy9A1faTOUmiu9Auwl/w0Dzgf/hSMO7/L9r5h15nu75HGCQhVd3/gybNKE3ALgmTnIm7OHj0osUMiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWy4PiGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWy4PiGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47EDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756567193;
	bh=r3hSgM5UTkdDuJAfsNVp82B6srtDJO2S+zFePFPaFE8=;
	h=To:Subject:From:Date:From;
	b=UWy4PiGnm4qCHD3vD0p04xbH1h4psqyIsreqBUH357kQ4nBYk1DiNCvhDSF1+/KHr
	 VOcOb6fTRdOWwVF0Et4g5Q8lkbzKWnB6aSFdwOjRu/YoNA213/+fgKfqhvCZST0bMx
	 qqoto94S4yc5IORn73kMBbGzntOFv0/sDLHGAcQgiMRVQ2k4Hh/4ukecjSlc4dgolU
	 qZ2C1pllHf4NFk5pqYptGXIV+qF8eIwVf7mmU26Iw9XhOC3sUueAHEZ/A1bMirVHq7
	 EXP0xBtLnYgKNMioUElI2rpJLaeQXgwMkxp3L3EvA6C3cxFXkWVAE52nWQO7NR2z17
	 BSJ5pr/RqYNSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92150CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656719358.7498.10635459007684447438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67863bb792c5f6766398faea66da9dc0ff67718630ae730558b0d05a866ca63
Date: Sat, 30 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756567193
