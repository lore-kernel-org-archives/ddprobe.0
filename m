Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3C51FAC23
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755370194; cv=none; b=imM4pIh3J4Kc5Ca+K2zEpE632OhjroUYKAvfoWK/Xc9UKdWM4e4lvvMU9nC/MwDsPwbBn81nbIAV0F6Iv4tnD9dLh8EGYZnS2JcVGIYHwMDuMQF4YtCeLbQvXFguCF9UZocVgAwn5AyQHcUL6HWBYpNbNsnHBYGaeyctjJbKTvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755370194; c=relaxed/simple;
	bh=Ozr+u8EXbCUKtsMVOVf8St8wBWuYTHGRxhatMNnSl44=;
	h=To:Subject:From:Message-Id:Date; b=GDFs1hCFPgNcd84AJoPAddBzDkQg/uFbqpqkvcHOLhfUZev665EiR3e73B/fIRZVRqTFY7/VMV8xTBloX+EnpP4cIH3dvnEbNOOrPj5odib9M/U5tHmPpuKhTPNJQoWct+xh6r00MgRcuDMYBbsj8cSPVqpvMMhfbs/RPUJULFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgKqocjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgKqocjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755370193;
	bh=Ozr+u8EXbCUKtsMVOVf8St8wBWuYTHGRxhatMNnSl44=;
	h=To:Subject:From:Date:From;
	b=OgKqocjndTaghAZdKvY8kXbVV3VED47kI72cYrq3gDJt8odHt+ik9Uf3dRad7iAB1
	 Sg4cbZLHztetO6T8yf/ROXw2f6iMNq3I+Ckc26Xpl0OQ0BBdVWsmlHwgHRZpFSxHhS
	 k9ucS/ZR0pHAYJEw3X4MhIf3Va+3iC7bTlzse69Mv7jqQbDT2SV4F3SMbnIwrzP0mI
	 p0UW45mbkBpG10P+ooKSJnv/kxm1L8DxzPvlzSDbsIYplNsY8PV0srQiibtiPGnS2c
	 T8qUoOu169PguIwLxpzBTW+2fKaN5UBOEWFBkO65Tvy5TEmFqt1wtvDs2X6V5CYdGz
	 d56MRD9lLS3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD7CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537019357.4419.12074482305856146995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cf89107d56d6c027596376c2186e860e98eccd2291a3f90776f1a5f52e14f8
Date: Sat, 16 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755370193
