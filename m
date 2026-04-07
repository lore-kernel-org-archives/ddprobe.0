Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6C93B6C01
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775567134; cv=none; b=j20zZ43ZHbYo1AnlVqTGnzc1YaPVtM6xUjuw6gnNbppFUGZjBM+giFT+Trf291o2JldjiAQXPYZKUhlmFdz4naF/rSIQwBx7Pehx7mIsj5+vOR/IT47O+Hv5AflIrBKz5oWMiI3VufY6MYs52Lns9qnpvBC34RqUPhpjt82ocVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775567134; c=relaxed/simple;
	bh=p1EySLsoFF2xgIYT/tDGikvTNVtNdWT14WWiDGjub6s=;
	h=To:Subject:From:Message-Id:Date; b=TCUGV7PMMpn58esFv+zL82+BbDTRWVb/voI1G18NCXuESYDhL1vleZQMCZqvE6CtDfDyFhBaq8Ph2lSOBlzcdvSx3G/mKcX7+vtgujLSaloyOBMYWdppHtYhV0NC+bXuaYolg9frj7GoA5/8dcMlGhcCWi0sNt8KPT3HV8Qdaig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bolwq0+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bolwq0+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFF9C2BCB1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775567133;
	bh=p1EySLsoFF2xgIYT/tDGikvTNVtNdWT14WWiDGjub6s=;
	h=To:Subject:From:Date:From;
	b=Bolwq0+inRp/Qy7jVC9+tI/IJiyz8rNAzT72l8vmo77imor512p16ycfrvv5Qo5l6
	 HfaSYRcL2TMLznb9WMzdUClbWsFZ6FKlBKehu6KvdOnMjjbFoG+W9MVoqRqiX50fN2
	 I+VFa4sCpIhwbfvm3AkE4AiZwcz3SiLo64h9XwapSitIgLpskbd6T+twXU/2yEPYFC
	 JIXpYEr4HskVUhKLaaM5wgeYSj5JVHWsp1zAT4ZuWlsGWlU81tjw7nQcvQZGJ2KDFz
	 nTiOJJOAKcqM36sGJ+we+GLLJYr+vRUMwAODkv40CCqfVWQ+125nhlsuJZg3451oFx
	 nU0JeNLYPSzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85FFEEF2E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556713369.15738.2687381766113309467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdffcc8a11bda2cf79eeb2aaccf0e4bfc2817015b62cfafc9346b50aa797f5f4
Date: Tue, 07 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775567133
