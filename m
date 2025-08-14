Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C5418B12
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755151195; cv=none; b=lncyzt0astO8L49B8JFSRbIh2Q2+SZrCuQmYTPHG8/caA9yetp5Jhja5zCSOc7JoGxL4dkNtTAY5Y6ARezDxJPryftkiVyJu7uonpjcP6jLNzPyYpXEmMVMIXIubHqYF2gmwJnBJesRPe+bMExv4bZcwpMRYpM+MvRqwn3cTZTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755151195; c=relaxed/simple;
	bh=AWeu99kyRotptCBw9JWd2RwaVuRKKti+8YummCaM988=;
	h=To:Subject:From:Message-Id:Date; b=nZ9K/OJuR8dDFIcQ7FGvPtApCVhZpt/1d/CA7S1H6P2Ic5s2259tPS1P3bM5zMftvDKpFXJER0uvrlSngrk9kprBUB0PqbDaZ+Zt9Jq6fsMyelxWsl+EfB+QyQzgCG7CBxbW+SDGnIYnToaDEHw7WEdUoqwjGZlXguyu+ifJRqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP/gg/9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP/gg/9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FDCC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755151193;
	bh=AWeu99kyRotptCBw9JWd2RwaVuRKKti+8YummCaM988=;
	h=To:Subject:From:Date:From;
	b=JP/gg/9eeUnJZ2L5K0uA+O2MeSxj7zzpWC8wt/qaTl8B57s5KY70RvNH5PicWXbgW
	 Rzj0/Lwnf9KdJufDhwTHuVK+zKLgyrL4WMne+Ymf6q3HyKQlr6VKm4KSAFKYHzSK7A
	 PusifCY+6UWqBpfEn6juF5ehxgviZnikGjK+KUsvGDWDjzIK8116R+uR2aA++96Oj2
	 lTyCLMJukOn2Urr3Pyc145HAdgmGoTEI5taQCsVS/V1IScwRutwZUEV65l0qVcljHR
	 4vAcmXJU5fnEeWTp3Xz7k4PJfglM7+BOjJ608MH1zMaXg3WwwFlg8f2cOs2rqiyhe3
	 OI/nsj3uqJxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB1CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515119358.25634.9280157651587900548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf44117daf1b754e4ef967473bc536439c6a54c95aed858b055e102fb70f935
Date: Thu, 14 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755151193
