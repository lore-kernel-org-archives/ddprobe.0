Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9BA218AAF
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763874714; cv=none; b=lnDexA+oluIAYMd6PWIWry9FQyb7WrGjsssNhsrbIC4TGPsD1idg/q3b5fsujJQZuh2aMoNBhM5Pmo0DwxzaLvQEX1q4Es2ifNaD8TKbeTV4fgH8HrcsGqgG1qWmgdkoEte4FeEoxgaVQJZhiK8ueLbBy3j7I6mku4A6ZgWPaAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763874714; c=relaxed/simple;
	bh=mYXpqHoquwX6m3A4c3CramVSGJ631cyF3thhfuMAIlo=;
	h=To:Subject:From:Message-Id:Date; b=uGxNGwnTVJeuiYtJ+Sb+CtQ6AaBmPJI4D/uKnOrwFiZSbEumWZFziD/cg3PXfNZykUTMnpQ755pyv9q3AYnoxn1ZJMIOv4tYcObObtLmtGb3+CF1xOgcjRPa6QbcuvEx8n9aNxeROqKAb0Zx55GUm2nAdhXHJEERe2OO2pZSZdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKW5kqgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKW5kqgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8832C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763874713;
	bh=mYXpqHoquwX6m3A4c3CramVSGJ631cyF3thhfuMAIlo=;
	h=To:Subject:From:Date:From;
	b=BKW5kqgX4f42Kxnrst20nRmOT9t2EFKQ0vpTIBMg/JplkIYIBGiQNCOPBUzNjjYQO
	 32n49wjf1i/t/njKRkLr7lkM8B3mSFlpgISMXrVXzLuDfEWNKnA16Eon1TPWIPWWP3
	 6IKbTXW9T8ej7Rymv9x945fT7Dn9ri4JTxj7gRVjY7XcYN9AC+8e/fXgfeFV63tBXC
	 xztddGDuB4lvU+kQLLGFGZViFLwRKCRG8XKO4wbQsBCG9Yc7tENJuhsZaSvmnslCXg
	 5y/nzdXzP8cteMqf/UdbXlZrski871RqnM11GzQUyBtDYjkkKTCl8zBsepg4NwdMXM
	 +P3mtCQ61PFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DE8CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387471358.31434.154516052197282879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d294a86d1527a44375f8653e654012af3cbe5c6c44dd56c034df4dcc23672858
Date: Sun, 23 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763874713
