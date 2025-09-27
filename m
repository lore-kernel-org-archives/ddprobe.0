Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD2F1B21BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759013394; cv=none; b=MA1ww+vhuz7ZSxN5mmUvpoGH0Ov3WqYFlunFEcj25yykJhZGPABh2MayGsuB+A0pftbP/wKRq6T11x/dZxWXqIYbfqSbxZRwTch20m9FmJWfX7U5xFqzGsJEwVsb0xOkgyCvWYnurRTCda1VGCHiGPzuVObchVyZC7RqM/j6OxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759013394; c=relaxed/simple;
	bh=v6KdbhR9G3l7RQbBzM4CKoAuHbePor8gSeetF1LiO/A=;
	h=To:Subject:From:Message-Id:Date; b=Bj5N8dJ53kuumNWFI4AcykPO0XDQMoxHjIshMfATIoamuSPAE6XGIAprj4NrKJu5WP1R+TIlHXX/l3iIGy0kEkfG88fVa/l+FmMUXMiEtWZi2MQ485ziMyMD1UUfoMEVOgsnr6ScxZjj5fzWxxqj9vs6/xrJ8srYDj4BHzKa6T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwQKcJOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwQKcJOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FDFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759013393;
	bh=v6KdbhR9G3l7RQbBzM4CKoAuHbePor8gSeetF1LiO/A=;
	h=To:Subject:From:Date:From;
	b=QwQKcJOQ2p61Gpy6N+QwEYRsVCF1IfEtWXf3nJal7rhka+k28YDo+TNNVwLb0gZFI
	 hesTi6BEF8glfRG8TRnYttjqD7lHMNiB12aP0aDy8pO90sxAXiW0RvIM7/gse89KlM
	 mK3YEx1xTgysUmtJIoNsp7fCkwrdj9NrQJxvwHouTxB/H6Gz2/cp6/a/BcpULwccRR
	 tNLg/yDA0GOGsNHgl/BEN5eEJF4a6p2Y89yEWdl3b6jdVZVNM/aFJ2Tzr7nT6TYqRd
	 oBast9REYxp1/exNdCXq5dPbBJTmuEC0wkIpOuzBX4c4UJJFnv5t76dQEFw5Gb0MTE
	 Hx62HwUOLveBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29AACAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901339357.6884.14881539354043451348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30711966c7056facb0b037e19b65a064e13e53dfa0696031536fbd339f06395c
Date: Sat, 27 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759013393
