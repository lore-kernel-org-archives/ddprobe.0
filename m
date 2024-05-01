Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E242A96
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714594343; cv=none; b=dep3p0IKqcoPhlNN/v+j5WI4oVfJYsB/FkDB9psXgQcfFjWhWQ8PX+vRlFHZOSbukCe3itbgSY1HqjMx93IRrch49JFqejtsSAm7TBD5fkScJHbUeQ9JCN2PxtZrhNm/jbsjVr1k1X4ANLSSJB/DP1BgUMR6YYz0b2OhRFCR9m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714594343; c=relaxed/simple;
	bh=gGwBwODCdCDGhRZo6KabuNNxL1op0MKINmXc4tMTYSY=;
	h=To:Subject:From:Message-Id:Date; b=VjWY2BvjmmO5HqixD8CALedxosM+K6PzsfRFT62S4bcTUOK+jU4r46wxH3JGw8ku+nQiyA2Epdo1ZmgjDRAO/XbLxOxp1lzHpsIijq2642iRx7mXkTyOMbfIDtpTaSgDNbZShKaOfbj9r/4Bg3F7YisA6ZqYpSSr4vjdDdA0Jxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVtcyWxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVtcyWxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEB2C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714594342;
	bh=gGwBwODCdCDGhRZo6KabuNNxL1op0MKINmXc4tMTYSY=;
	h=To:Subject:From:Date:From;
	b=VVtcyWxtuW0i/JBxOt/pVeAarQ1f98kQUQmer2s9b28kcOz5KOKxhMzCiE5IR7kt0
	 4v3yRFCp0HD3Ej8aLwzFiTTVd0vjZ8MTZmaPdQ7qd3FTsn4FqmLy5LR5c9hTtGVkKa
	 VTdUp3fqydg/y784DLflgAAAZgh/X5arJlpmBspTKmt8e5J1P49qBs5j4utuLy7Th0
	 3/R+3NSfkKhG6ePeLkp28efmRdpLlGXIRC1G17+oXoGrjWrerE6v0yhybggEmtLLsr
	 8iGPMejQWwBL01wnX4CSsKqkxCapx1Ho+WOvL8SyMzMkbeJ8vxF2kxy88mT4AhHCHv
	 HRutg09QdVUPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6375C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459434277.2518.10852991153537104518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78bbab166712869ad2f1757ef05cb904d2673ea4b85c08ae3216c14f3c11f28
Date: Wed, 01 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714594342
