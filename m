Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1792B33DEE0
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778784634; cv=none; b=kfeD7h7/YuZg7ptWFOvDm1jcMP2IUYj9Q6myfI8oJ9mFofJ5hl6zRSvGjnmNb/Lyv9EK1Cf7njqIe2J2tdEqw/2bZVLWRK2Xwu//OL2HT/4dXXPV8rx8caXuHjz0k8NsBjrLROz+SUpM/VEO9IpuDm2sfzlQpKOXV3e3GvENvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778784634; c=relaxed/simple;
	bh=wLjwUEy7DWEFa8k/bCh3MCkTjeCrvBpAk6ADA8J5t8c=;
	h=To:Subject:From:Message-Id:Date; b=tlXoOPMB4hWZ84lO6zEOkWEoqYRokD1LXmACys2JWAb3Kde4xPC3iRkIj/3ucP2+LpLW94Rgu3ZDznq0Ct0ZzQRbbPajESQGoWxqBCNVLF/SHulIy0taD62bukN9WnncEnl0Etl0khN/YUrzvZYMVa4DPPxTOai/5acyrpWssKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRT7jFuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRT7jFuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8C3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778784633;
	bh=wLjwUEy7DWEFa8k/bCh3MCkTjeCrvBpAk6ADA8J5t8c=;
	h=To:Subject:From:Date:From;
	b=lRT7jFuHlbpn+rzOLEwl16H3ZFcuxPXaToSaQtBe02Pf70eKwOKgA2HF7kpBMzfRF
	 1YuBhD3nJRwAP9YWg2OybiYxN5XPDhbfjxstkhKKk2Xt46D5piHP3CDQ0KZu/JFWLL
	 ipm5NOMquZxScFYVHHG59qG8StonxUnipeZ1+3siZRcZdk1Ylo4imcXok0qZBH6J3L
	 GHrQuo/LFWOYHzNO/w9umQspFqBu2lp1vkDsNs/yVTYltrBg9w8lUGdbYepgPkZ/yX
	 JNKT0wMngqXw3OUIrX58nj/1TM7cPmHDT1yLx1lbg/hS+VeBbnhY6ZYNkMjw/+M3qm
	 o+GaSkotXWcZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB79BCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878463369.18854.1199800313762659994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988f1dd21c1ecede13b362d635ab82e7e823410c1ccdbfc967b1866a489961d1
Date: Thu, 14 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778784633
