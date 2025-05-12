Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B2C29712B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747078794; cv=none; b=Dih1qS3HBGMU54H6YXvcOftEVChzvKjFGgf6Hp4lxit+4rLz+XcDC6756R9gzhs+zWhtTKM2nzOp7VeAVA338vIt1Moy5jJwrsOwdILjm+9s0oIz/2TbWcfopXpyEvP8V4ChlebUo7saGmpKy2wXY5gBWZeOGNVrK6FaxiAKYeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747078794; c=relaxed/simple;
	bh=sGtzQP0l2MToRuHjNtRKj/XLisPc3n4GXWkCAeROi5Q=;
	h=To:Subject:From:Message-Id:Date; b=l7RLZAbVWw5QzwJbSwFU2SxhfUSMjlU+XUV+tmnWIs+xfVZn8Ix5vK/AFXVUKPGsF/W/k5k+/tQDpvH9qmfxMvU8UM7xjrvqoWkOa7tW0xfDue4qb6ppErtQg34L86ll1f45/OyfWrFmRekZcIrhAe/6M2TdNedi2hfvNMVlYr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4do8w78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4do8w78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B35C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747078793;
	bh=sGtzQP0l2MToRuHjNtRKj/XLisPc3n4GXWkCAeROi5Q=;
	h=To:Subject:From:Date:From;
	b=c4do8w78ikOMymqph+Y6T4E1B8WYHE9d3gSjuFZD71svMFuCd5MofvRc7XDv54Ar7
	 xeLCye5LCS0OgW07Usljgmvk3EBHrY+n471+4/yhX7G4xRST6S6HPfOeUUPTgPncyY
	 CbS7xq/WpbH5gbu91wrnZODpdlG+vjpn4YcFIO9xlU1bMYCFHSNfsb9B2CzMBLDu66
	 eJv7PVtHfOkU1flbXdEBKl+V878NSj9rq1Rz4ok1dkRdk/NTyIGK4oDq9JtEtvoFRi
	 O6nbgA9zxE1bEZQaHLpDWS2gaSyQFSOBm1iNMA/8aDVndZ2vhJAayYTlJ3ouIycmuk
	 AYRIbHHk1wGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC19C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707879358.8059.6463583691516870709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39032df06d98c7717cce812d0f43fad463e292460e904160aad0ac0f7d8ac28a
Date: Mon, 12 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747078793
