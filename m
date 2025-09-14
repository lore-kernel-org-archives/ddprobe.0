Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E69125A9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757834394; cv=none; b=ChTg8hqyNJc9eFSNZS6YqkhzVhu70k7cIiTl3kihzU/wWg8Mc06n7imoB9HKKxlx3U35+TQUu2gndKkIMuRq8Ka1tj+bXgW8WkIi1VrGShsWT0G/+mi/9tBKrYgwawfDJ89DJVZuNJtZkYpZplmkvqdGwyOgw5z2GYfhSRDikOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757834394; c=relaxed/simple;
	bh=FuCAe44W7W1giungRJBIpQkZdHYMK8JsOBN19GgrpP0=;
	h=To:Subject:From:Message-Id:Date; b=s+OzRtsUf4lADgKhsF9iwn7mWoqsT2QG2PCW3sOOuf8j1552CuoAY8Cbye5y6vLIUTh2rVOq6TA0V1zA19XLtMrQVfOlGut2/DaAQDhQnMI041/uDeH/dYzuPSDWLRjLsysfDB9VU0w8ejNQfYLdfzrP+0GuF+zqVD4DhHG44+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFDiJdAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFDiJdAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA436C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757834393;
	bh=FuCAe44W7W1giungRJBIpQkZdHYMK8JsOBN19GgrpP0=;
	h=To:Subject:From:Date:From;
	b=dFDiJdABv2BLH6ukqdNc5x30FgheWosXgYt5e3LW35E7z9Vv9qBfBj2TVIDJGv5Ib
	 J8Rm1qUtVtWHb8uYJeEnxOFsHV+z/3YGQFGbDuFvYYOvLbKklPKtb+Ia8WgLCfr8VC
	 lkF63EleUBSYm+ZiZ1PGEzFx1s1K30JttYtFt1zdLufS/gf9rcATDTIOkLuKKLjsv3
	 3TPh3ZpUW5Spx2PHpHM71YYw41txLGYRRr52kgmJguP2YwPzV6Z5DMU1Uk8ZPO1flv
	 GyTMVBrV1BrLyg+k9sBstMwVYM7nFHBBTzmJSELuOB9/15BTj7vBzNGX1/u6VqxcyS
	 2S92XtDXFsoyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA3CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783439358.11433.12156520299962617005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880f5642e0988000d8d9758f3053941e56bde6ade40784aafe3ea8651534d29a
Date: Sun, 14 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757834393
