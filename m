Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49988449985
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783806514; cv=none; b=ELHLdF95tF3WOeibsnYPd8YUqCy0TU7X91F7grtQCbJ1PBL1uEaCCEtaZ0DHKVaihrEFPy5zBGTthAWWOOcEl9sSp3sf9CSKC28d8IjcjUE/pAK/iJUBeHOdAmk95hPJQQGuhV2/mYbPti9rzl0zVkJvZYp2DaS1DDpMVhkleVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783806514; c=relaxed/simple;
	bh=XSTVpMJ5kQQufvyBo/CUSAwm8uAq3QAfe0ZNLFAxjZc=;
	h=To:Subject:From:Message-Id:Date; b=rDjakcWQiKqLm1fu9/QRNw+y6nCp18oZ5O3evjEbbxSTcBx5UgWk2GTa7opAaqdAGuumfvcqMGScYcTzcilFY5tHk09HgyV2TFkIZuEBk5khwcsO1H3OeExrX1eepG0zKl6vv9L8i6R4pQPa93bpQfQ3nKbJoNTOufLvxfXS2OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zve3+zhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zve3+zhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5068C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783806513;
	bh=XSTVpMJ5kQQufvyBo/CUSAwm8uAq3QAfe0ZNLFAxjZc=;
	h=To:Subject:From:Date:From;
	b=Zve3+zhiLM9CQO/ln4GYak6Gbm5wEO64A3eKJo2FCyqjQnm6/jUUesl8v8ji8Pyjo
	 yvXZieAr8VBNReBYZooq26jc8N2DjtAY4cSqZcrLvOiYXqPSYXGEz7u+EUjOgz7lhr
	 YTFNscwDBJZMCeZQouVdG9QX7TS4KsRwfX0t5s/QFt5h6vKc3E85uhIDNXBZpyjYUP
	 WH1fgMH3NX24UsqYRiypIonj4fDQWzz8/DbAi69Ki9aOrKtXqbdTH2XQGvzFMRyjmx
	 9kSKlJuQgpKkR6O2PIaHqBwJAwKu2Te4cMDcCmGkT0UDur8vZiVdElPGA5swzprV7J
	 k407TDHiX6k0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3EEC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380651368.10015.9599282201237270090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a3ebe9040c24cd61adcbfdc107e4f229208e97996275fcdab645f6a4a7b9b9
Date: Sat, 11 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783806513
