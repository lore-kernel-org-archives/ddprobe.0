Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3789E2EBB8B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765441974; cv=none; b=nesvW4fguEDw2u3m5r/NGiSDzFGNLGY2XGME27DnBGucMyAY1ZPfSPJuhOZ0A/1KF6DqHXj3pl40gXqjzptGZDZHCVxOiMTxTte3HuDjgDNrGOcg7No4p1p/Dj26vOIf0aAeJPZpiDaKdL0aY+bFjEcgWbU5vWZN1L7fUmyKdf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765441974; c=relaxed/simple;
	bh=VwSNifQ6jNEkaeLFBYxVdg3yYRUwJ4CnZzRsnD9PoX8=;
	h=To:Subject:From:Message-Id:Date; b=Yo8LGpWd/aY84JdOEvX1mo56TDqCJ15CiU4DPiroli8H85jBjsAo1haeHicuSAYDW7K7WlEAyMMx3wtk2ud56CA9GLqgC2nQ6l/vJUyfM5BUh2qfDbTWN6HfJHN5E01ZI3+LkLH5doRhEiKU8cDVhGdrZFRgLVXjome/2Hra6l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYfPmuPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYfPmuPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0831C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765441973;
	bh=VwSNifQ6jNEkaeLFBYxVdg3yYRUwJ4CnZzRsnD9PoX8=;
	h=To:Subject:From:Date:From;
	b=RYfPmuPxze8PZtyE5f95GkIKEnlhZ1A7npsIBEAXLJzJmF1bacC33LZE3Px2R7cxa
	 GQMVe/abqmJLVtjCYon/uusQRDJrLT7G+MM/r2PJM7K904KEgcrPstjvs+PX0qWNY/
	 lv/ciXSW7A465rvEKRfVa4wT2BeypRYfqUjLPhke3znwVsS9X5uwBr8LjCOYFSq2nA
	 EYT0LICl2pdw6Z2uHU2HoCETReYqlCDuFQbyoc64by9qVWIr4XQhlZMyDihpt4T3w8
	 69aAFhkjghdKLzJcmcaurekHHaWQwYIyXF8VmD1+73SKBo4jS35GOGzlnmoQBAwFAt
	 yUvhzXLUu6lyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A977D3E786
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544197361.9189.7078209768853405906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5363a6eac19bf8bb2e0092fcb193ae4e6f08bf56494290847ce2a93eaae01c3f
Date: Thu, 11 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765441973
