Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266733054E0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759149595; cv=none; b=PPe2PKniEaAi/WM7mVQYB8iveD70XHezGSlH9k5p8ouWQNJyjMpK2BG/y5tBIU9hD2M2Ybzz6+1oPmjvw9xtkCeJaCPVOq/xEJhk9YDoHAgwM/B9SCQU/hiP020QbUH2LojZ7DaKWgUIV1u78PI0hNBJBR/bpwClp+WoJN6dFHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759149595; c=relaxed/simple;
	bh=QaBSEWO1A7xEEP90UJEenj3eS5nqgHYXL46Ux+mW+Kw=;
	h=To:Subject:From:Message-Id:Date; b=rOJ9O7TmHHyY0QIlEUZBE3HhSGhmtdcJbEXnglPzNabcJYIU7S/GNJ2xIzmlciXh16Uzkk7I++D/xGCCZGeQZ/Pwy1sE2L2b8ZFvmVzCzT7ThE8R2PPvxuFswOf+QyCGVN4QXSDWCDo0+i5bNDHRv3H/Ie/BbhF5DYZJztY4/3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJQnerHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJQnerHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D11C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759149593;
	bh=QaBSEWO1A7xEEP90UJEenj3eS5nqgHYXL46Ux+mW+Kw=;
	h=To:Subject:From:Date:From;
	b=JJQnerHV8YVQe2r6Pfun/Ke6TqLLt0pZg/JyiaKQdnDHX+iM5ciEmrcutAukK3HwA
	 wR0m+irCHM2xTFK/14ahzjzuICYUF79b5klqlp9X5cA8GrsOxPctvFomGaEWIqyCGo
	 vDaiU0v3mW2pFhrOQbgwIsvlMTtJlvN3rvGXJsRVqrnZqaVtY/mdo2RUQU/rlU5ViD
	 F9T8TAAclaHxc2tUZ+p6XMCgxNbYmvU182kPI6KWfDid9JjF/WQEHCMVWafmopWvn8
	 nhv+lhy02KUgH/NHNJnS88BnsNFTsrdDx3e8jlDeRa5aCmN2iAUgU1RKryhYXbXWG0
	 AAR+l9pN5dqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9457DCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914959359.1014.14851157229520192464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06f2d00749ebb07daf904d01eb4f23928baf26be7279c408771174f3d45e800
Date: Mon, 29 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759149593
