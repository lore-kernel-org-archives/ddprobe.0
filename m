Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1568372622
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754542194; cv=none; b=PoAR/0UuGDg5ktzVO1SBYadIUZ4ucl+MZsPJ17Wni3kqZfJSMfdrPew0Q44+4qDXOwyaYxiFk8/ZIU9N4pg6PJiqiUXr0dLLinmZJIiyLgM797LZIeJuykJk9ccOFC93UbrW1iZCJR92YQHli5PTe6F3jIFYJx2scCar5tfhAEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754542194; c=relaxed/simple;
	bh=BnlvZlysqsmJPa9ryDQEaeOUHx6ynRPZ8NxHiOqaGvE=;
	h=To:Subject:From:Message-Id:Date; b=Xgyg13Jc7zJD6f9o0jBm/33r8i7YXvo977tWX0El8M4n/khHi4gYDiuCHrXzwy+tyyiKdW7IPV/SyLFGX9vSgsJIZOzuqEhfO5WHqBZ5w5oH8tgb6sCcIVuST64lGmOGUz9lKsxmnRYp7iO8GkAfPIhcI4IpOXHa/lkQT+hO8Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i92ooF1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i92ooF1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E797C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754542193;
	bh=BnlvZlysqsmJPa9ryDQEaeOUHx6ynRPZ8NxHiOqaGvE=;
	h=To:Subject:From:Date:From;
	b=i92ooF1YXDV0stK1BCIbKyrOHpopPFJS4sg/v+qRa4sqfekN/JWgONFtqrOvxSYWG
	 vQmAT+4WYeuxd5k7SRbHrP1MrtI+0IUbCQilMpf+xISD3qYvXHV3I3ECBfNITaVDsn
	 FxsJlOgFprEV9f251mZcxejVzmv+uTEKISTCUc79WyF3Wmw7qEuyu/nqnSiJAn6MG5
	 GvSULqkXxpO2azgFldrCxO2NmKOoXbbSDRHyra4cZBX0FUpcXLm3hb5EjRZjTvougV
	 BQyq3bOlE1aMZ2uDqq9NRo7hVqpi2PrYXmICLwFgTjdqEG+XYXkg/UF7gT1S6nV5kh
	 xyv+pDjQw1dkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF89C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454219357.8087.18209233917191000281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f220fbf417287cc1a06c9ef11d13c83cefd9e356b265ee958d786cecea46a0e4
Date: Thu, 07 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754542193
