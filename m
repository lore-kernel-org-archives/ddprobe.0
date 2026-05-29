Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE734676D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780062754; cv=none; b=lRnIM49QlFrlXho+wecvGEgHVXAfO3ZMlMdMIDc8D+ujP844bbbQw8sYtiixV5M5FXHVdUO5jl0kT2siFLrO3husPpCEAS5L0nh9FfcVlbjFnC+PIcDWuTLLVGhFJ/Chl7ITSKC8kTU5A1tIZY7N3T+oLgA8905Sq7ckrWqMP4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780062754; c=relaxed/simple;
	bh=wnob9DBCOQQoHJiGemsuyLBVZFj1bFYI+HOzLQk+qkY=;
	h=To:Subject:From:Message-Id:Date; b=POLTIzGEZwLOwiN1dqfbwy9sX302H8AcoDcuShL+t5WGw4ICrlamAXuWL2JP/4aNYqz/hNtaFFMtBNgEttCacjorAqOlTLvzFMTSNapXUTuzFq7icX4HMSlQVFxwltBbNygXXKo/PQ9til5JJi2pG60EjD9qI+Ce/BLzi4YCTDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+ug/CWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+ug/CWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9473C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780062753;
	bh=wnob9DBCOQQoHJiGemsuyLBVZFj1bFYI+HOzLQk+qkY=;
	h=To:Subject:From:Date:From;
	b=c+ug/CWFLDKxlJTxhInaBJ3ud2yPkM1VqZQy8d0j+Zh1xvCzjnGiE2IDRCJ4f4Owt
	 nl+EP0UJg4UOrmGkFK8zH+ZOzkIL9H1LaKQ+j02rU4BKvUoEPm/mYpWNsSmH+y/Skb
	 kmoj8gTaQZJEI8nZE2XTVn7x8JBs4wjhcCDKeisC93ezj0+gap5d0MozciHURi+DzL
	 HyHlaNCsZuG5zqzL6L0lc9Z3wZAfIwhbtlN3b97phd0xgUFu5usLTfeOnI64ozoYh6
	 SWZYiSrYWyy2WOAGz489bArY68eUyI+a7C0eJZprwhYBby6r6GeoYy/uO9kwkN+4F1
	 tOqR2/mFP060Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBEACD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006275370.32083.14871222475363216519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb7805c78074cf5163c5e63e29bc2f5e9554dfa1abc1f9c2952e38c86c9261a
Date: Fri, 29 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780062753
