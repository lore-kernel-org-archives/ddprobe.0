Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F8191F94
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770785694; cv=none; b=ggcMRvD7TcrqN5g9UTZPNYcfhHKPyFDYLXBGFMoV6L5ykiZAMhirAMWmcvtf/yfEQ9wD0kQvnqonmZxNk/9bEy3GV/2sC4AIMWR+Ylku0/RLH5bGhdxO16pZqJVBQGTZ63tG0IVJbmRw/4v38OK/7TX0uG2GtTxAf4SFfaMtfcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770785694; c=relaxed/simple;
	bh=1VtU7IYVgJg8WjpydSSdomWR6UiYpoFjp6hWdfVAloE=;
	h=To:Subject:From:Message-Id:Date; b=i8uDE2ohQTavB4TziShTB/GDVIpJP1eO0F0HKQhQmfYYU4GRSlJ29EbulZ8k7YBUlaOYjSMLCxA0C/H7JcwHt9MSHZ0blJEygKeuvKqI86I7+fdiUik5sp/HacKSI98C3j4i9fNLGDJwcByo2D8Zhj1WHgIUVUHp4ziGnToqY0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCshHmbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCshHmbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE297C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770785693;
	bh=1VtU7IYVgJg8WjpydSSdomWR6UiYpoFjp6hWdfVAloE=;
	h=To:Subject:From:Date:From;
	b=eCshHmbvINvveQ5xq0EDN9bHjhZJbPSOPceXJDuHm89dsWtntEziP7yA59siOoTG4
	 6LqxJ1ms+z+LgnCmz2mDp0C4EbSujSfnZ2QjYX5KpitrxDVom942z1pLdAEscRXyM+
	 CSU8rSB7fBrr8/K169pO+GI1rHaGa2RaJyD0w8iwza+SgsywfQzhlmn5y1hbisLJ4x
	 Fcq18DhVc5lXgtOoYnkJSxgzG4zXkURXZx0abDUNrF2+tmPyFRH4K+PYkGwBg2Czul
	 B2VmaUfvWy+O9CkHqw4jbQD53/QhjTuouQgWoFnxHuxo7z/LDavtRCY7uzhi2joe27
	 msvv5rUytjDUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F5EB5961
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078569359.647.17724710923559972536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffae321e30a88ac07c07634113a3467fc1466282a7a566876942ce7d5dbfa04
Date: Wed, 11 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770785693
