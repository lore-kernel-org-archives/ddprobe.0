Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC9643D4F9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769054034; cv=none; b=pWdc9loyX8EkQmpeuRiWWgq6dw9LNbXSzLF5+LRk5NL2jEbtAzl07vUv2nMDLCIZvJP1IAzEcbXPOuSmdOL03kcJ++cUCqznzCMUdTxsyldh5/mvHXdGdslEIwpJXC+i2bfBhnFD/PM+WU7ElWCjgmfZEwleR1foHWlVHKjkrPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769054034; c=relaxed/simple;
	bh=asq8epUSF/eDtoJ5kjzq6FzOp5Lts/TU/fa0vkeJ5Mc=;
	h=To:Subject:From:Message-Id:Date; b=uSuTBZrwfpdqa2uQ9NW35byqo0zUqocJTpVL4U/6cY/NSb2fzt/lqXpAQXwnW91CShlOPm2veDnGQ0xZw7h1aQO1TIA3WRsN1OXxWXkQVLxSXHXUy+0coCg+7gsTzB/2I4dpHmZWY5s6pPSeX/lghhLkA2AO/VthyoP14HExsqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk2ESnY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk2ESnY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99094C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769054033;
	bh=asq8epUSF/eDtoJ5kjzq6FzOp5Lts/TU/fa0vkeJ5Mc=;
	h=To:Subject:From:Date:From;
	b=Rk2ESnY6632zuAxBVHrbYP6HfOIgU4F31JCQ3g0bIFCTyL4o8JHk7gt/DIBF/omOJ
	 lrg1UWAFZVk1n8aA4kCMkkCfdIVsx9vVIMNKokZSHx3Hgg5OfC88XeB1TVu9yKa/Gd
	 g37K68bRq4z9QGWgpaGYCzh6cp2fGJxY1ELs/cEkyiuXzgcPmbTntTcxFxVg9xE3Oi
	 tBLGucjwKcIDbl9t4MAXHwSjzOQqnJ6cnkXhtMHp5/EDRgnDN/Nrwq/PawPy8oURkD
	 Z2LxGm/X8vW+/EkbP1EIWOPJfFQorbBF7fZssxxmnM0vs1Z+AUE0Rfgby/dH7aVTmX
	 bYyvUtlxFad1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DDD625E7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905403357.18748.17369933302428423455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85079189aa4e381d68b1387f68c119082e8cf16eed6908ef2413df1689da8838
Date: Thu, 22 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769054033
