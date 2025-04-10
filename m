Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B1B26ACB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744248594; cv=none; b=UNWosWgeBxzfYkdhB43sm8iBRLpY4Th8lcsu94DRepHv9i8kBwaJUiGILMnRjKLA72zZ+UYaGPawqvK/LzaVFmGwOwqySOLSJaMaZi5AyVHGMjWbovN+aTyt/mKydqaS8GcMpblE4dwnnPV9MMvVvkTv6VaxoSK+9pqGKG9yXzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744248594; c=relaxed/simple;
	bh=2xkbLoJel9rWBPvEtoJfa3JtgkaD9Ed4Lh0/+wVKzRc=;
	h=To:Subject:From:Message-Id:Date; b=V6/ivb2D1nXF47xxKUhbhcZzBJ44OXcv5OXGnb5NawyaNRyRQIKOKiUcbIEdBwz2ifPRIRONREuZUYiMZkSMuI8PxZ6n2jbMEc0HBRBXw69qLW23IKayLPHhMWXwMkxdTosfx2zG+c22L7MMCrA6Yxkc3tYlAFk6sWHh8d994Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVg9mz7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVg9mz7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42DEC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744248593;
	bh=2xkbLoJel9rWBPvEtoJfa3JtgkaD9Ed4Lh0/+wVKzRc=;
	h=To:Subject:From:Date:From;
	b=oVg9mz7gnPUm+rif+97TJL/WBBciN3LrUV9eBQUIZudfOcyLGE6YBC4m2RMJyvy4O
	 fWbsRHt95tiLDa7rpqVCY0wwLEQ/2k2HwbVhVk07am7/FX4ZlOi/Q5HFsZN5yU0XGz
	 14WCVYnn/QRDoxfWKqukYsAA75M1uNd0AlS6NCgd/RCNqPOWPtSG4KcPTltl4pXPia
	 gmwPLyIc3RkULfhQnewtwRKctWfxFBud3aud7cZ5yD/msDV/1ubMWyVu9fEsZXCl3m
	 ujqaYIx2D2JJyi/Gn/oEKiZXNNhtcQpSxPIcbfsca203hAJP46V4tAuldcUZ+9jXNk
	 qZnbzOYhT7ffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5C4C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424859363.10720.11070512805769085377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb4d8a9585068b53d358a6be7ae0b476cc6dc077c3aed18a8267aff2edb16d1
Date: Thu, 10 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744248593
