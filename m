Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3628ECE3
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649796; cv=none; b=KjieUzw8qdqIYyJtVoBbWBegoHKX/8viRUIZAWgVqSJVXhaljq5JiTiuet58Qw6yDay5yRLRXZCnoIKhUNV9I05V2E9bqoJQeMhaLPGO4zoflVdiMYQ7BT7udJ3Qt/FDQmNQqb6tYrGHmJfDqNpyvJ9xLdV6BMqleI5kDkR2PKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649796; c=relaxed/simple;
	bh=fpJhcWOz+aShfFN5c67evK7VsyM25f5buCghtpx9y0w=;
	h=To:Subject:From:Message-Id:Date; b=aVpxT3Jc+n3pRudVvP7hC48pj6w7k+4CdfiwZOkrkaLCnr4ExRHCO2l8DeEPzmF0aaYaPumuEr1lYtm2ZEvR1PYvlRbux73q107HuxAcslsgq9CG8BZYCQIpV9lNIVXs7qsl0MZrjEy5JofZHj1e0gPgh6aimZ42vct2JdW3QFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGKKYWrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGKKYWrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E834C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746649793;
	bh=fpJhcWOz+aShfFN5c67evK7VsyM25f5buCghtpx9y0w=;
	h=To:Subject:From:Date:From;
	b=nGKKYWrAQnOtWj4d7o51ihPabHDEJAHQigd/QFR0Uu/hsTp9pPZpH1K+XjNCoRQqO
	 TF05QJEHSdO9TFQXz/XhsqwRmnnpzV4P+KbAAtbNnFj/MzcW6CbIbwJCWEX3B0dhab
	 d1CdXwhoUV1siHwOrCrKoKIJ40y3TrERVe62niz0Kl5RBGW2yyf2v4WO62ytbFN309
	 WCzbVUOzDXctGNBjojJM1YIHmzn9mpILcSqExFmAtlFLmOf+s9vztgazoqyPHmgaTV
	 hWi4Te9hyZx3k0lbh9vf6PzsalvHehsrHvdc6mcjpmk0vCW1uDg29mVz5ydgjVhb3B
	 CEDtavA49VXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E883C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664979357.9178.14413945816423009401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767d5e2441d7c444cd055b57919475a8e2376ee3e5d022a2172c507151cb9013
Date: Wed, 07 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746649793
