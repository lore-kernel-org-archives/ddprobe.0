Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6242172626
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746890394; cv=none; b=ABz4nlzZXLwPb5BahCXhRx3ZZlT55/EpoPTobRiTZJHfXqnSnDZhDQGkdT0hqf2BIeemOl+qMLXz9hwvTiccAHhAF80Y26zJpg7jBO2uzpL6bzJhHlLSGnUqgzdJvVS2eMwg4ACcUoAPj97NurR4GRHKWwdQjQeYExrmOUQNSNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746890394; c=relaxed/simple;
	bh=IxRRvEnze4e1QpK3WTFZw28b4ii5Mf+HGAV26PJyVN8=;
	h=To:Subject:From:Message-Id:Date; b=X8tzWafxNl5//TrFB6tyVu8fCZNeavEzT0qajo0HAQZB3BZH3+R4BfOoSK2ST2IAApu4o2mMJtlCmSftcLP6fwO9BMP3PKMSzVLE5IKXOehkZ8qZryyTwkcgk+kmnOjH2gidKJKle0tOcaULxAZ0YULMvK0HEFNqnI42W3PgUCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jh6ABCjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jh6ABCjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA74C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746890393;
	bh=IxRRvEnze4e1QpK3WTFZw28b4ii5Mf+HGAV26PJyVN8=;
	h=To:Subject:From:Date:From;
	b=Jh6ABCjZLU8+Om4yeVJBsFUu8DTYspF6tuzQB4MgnS84r00HN/akEzCu02Wk4F6Zi
	 ftKe3GULPTSNjjmYLFg3ZwFAtKBMqS1ivXKltR3QciRJo2D45IZclRJRgsfNZIWZzd
	 P/DpZ4mnAacKJQ6ALCAqjA+kigjW6XSLQ9Lx8i8Lnb1bzTJMgMGKbYsCnkc6ng2ncI
	 oEfT3BaAg8Ap5V+I8ecKJiRPoagmiItA2SSdepEpk+tuHsAi5/6PD0Fn+69wG66eVj
	 ks5Upqh1bluPlm+IFlCfMP2fKse+UIxutrO++dpP2zifwiLVxj6+FNLnpO4ewSO8y/
	 taRKxVj12ocBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98568C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689039359.1328.13997594724389313001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420cb4dce5fd984e73c0616c22d1390bdd97823b91caf4bf3dcdf14a01813b9b
Date: Sat, 10 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746890393
