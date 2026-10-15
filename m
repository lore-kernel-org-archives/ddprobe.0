Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FFD331EB9
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792034434; cv=none; b=FBilg+JIUDKn94VDbeBBFndsJ8a8knbh6IlwmolMYj3h6npgtUNw+u9fXgbTZypOlnLLlA3eMIQnN4CteXEqXWM+l8C+NNnrdC35nKDulI6D/u8ORn6NQGr53TBG/+L7YLGPH7Syz62lMt1xvt+CnsbhTBRKcLsfu98H4ssTGc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792034434; c=relaxed/simple;
	bh=rC4IAyPaALvphye0CbZvWMpAOK9gZS2FhqeqMCnHJ44=;
	h=To:Subject:From:Message-Id:Date; b=L4LFFkasbMoI4pkojZfLAAexyUB4BmHqAZRdhllHmRc1aXByD7iWTVdNeCCXzUucxugLcTlv5TUQwS8mOTUGOz9t1XYS0s+JS+W1+pmWqdho4V4UB8gjam/6069jaF+skgb/+FSL42ryFyhx7jtyuVc9rObDmZuAB4Opnr8M3V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYYw4XV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYYw4XV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F09C9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792034434;
	bh=rC4IAyPaALvphye0CbZvWMpAOK9gZS2FhqeqMCnHJ44=;
	h=To:Subject:From:Date:From;
	b=jYYw4XV4XyvSslVNZJ8hvxqJm9eciMmdmRd9XMUBW4vCG0V09FuGVfJdumXf6LoJc
	 4/qTwKpdAS7ZrzwKufnKwMBxwlcewe4Htz/hevbkbme5igQ2xRyIoPsQILgVWKRP0H
	 TsoA3UlWeJmLy+mz1bZWwwUJF1T1zRjwDr1wI0Iz09q+2e4DbI+gifTvJdNloZwqL+
	 EAz2Uni1hqJOMcl8t1UvhV4U0JYvN5uF2R1p01I4NsNoL9cs8OjXjuHOhgzpfqAMF0
	 l+L8Bp9aokn3d9O2QNH7pCkJ8Ju9J933FFQvqyofWuS1zCm/eheefr14H6MtLcHJhl
	 al2f/ykjKRuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BA9CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203443374.3922.10456625758676732589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3f5d726b2b5a9c248cf7f568765b185630b69d583d789af7ab1cf0262e9b23
Date: Thu, 15 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792034433
