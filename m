Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CF710E4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747725595; cv=none; b=b0hbRsrcDmmulr2+whuKtifWy+F/KOviou2Nf+JX5jxZoGQERzynl+ZakM2EcWUlQ2m1BDi0+Cu7wFTIRz9W/em2yayb4xA0pXVdSmWK/3a3FlBqOo1NQKZF5y7L0XgOYm6dzaEabcDtiv1mqp7UGPVBBl7Xm6H+ojFwp+q/Puk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747725595; c=relaxed/simple;
	bh=MkgYyxHeCKz1XAv9oaOOgTW03LlZmC9kQQIIEsJd21g=;
	h=To:Subject:From:Message-Id:Date; b=BKXTD7t2mo56SfjMDJZ/gOyhceipTS0pjq8+UhVsKl/3Du3b0OsMBSOuQZCj+McM4RfISeAPzd7t3zlBznaT5SvMkfFsqRK0mwH5cy4jViPlBjuYtgZhb1kQwfSZKPyBAp4uGzRMY/z6XkXD1QgCwRf1/GQzGP6jVru5RlaiNls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnm7VbCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnm7VbCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F124C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747725594;
	bh=MkgYyxHeCKz1XAv9oaOOgTW03LlZmC9kQQIIEsJd21g=;
	h=To:Subject:From:Date:From;
	b=Cnm7VbCQ5cTL27RlG0PjcK7DmuqtyFHmPRMA4jmeK/lJaRun2zsKRlkH3ARe2m/sc
	 hqUf2uRp6vYVMwLstpMR4ScNHSLvwphsj42LYSFzJauJyyAA6lOuNhD1jZftNtPJO5
	 W9volYzFnU1rBDzw2J9pC8aWga0DSCb6oq1Z9eiQJhUXl8QHgDofpaFaT5esMcdmQs
	 ONm0+nAwVF5rPL1xTOgRMPL0rgF0B2B/CWqr74dhNrUElr5oN30NCZIkNwBjI5Ty+t
	 yl56Jqj9Uc9NtVtNI0n6pvXPZzw+/MwaZWj5vzjN3KnYqmuzgUqXaapqKYhc2y6xC2
	 c4kWz76cirgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F974C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772559357.7539.5228756683338403142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a6b3b04d8c936a3a719414994e1b685501ecd4eeb31e24e594cfe1474bc400
Date: Tue, 20 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747725593
