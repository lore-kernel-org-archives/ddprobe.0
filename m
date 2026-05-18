Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150453DDDD4
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779087634; cv=none; b=Y3m31B5p8TYi8Mc/jBGRKuEC1kZey2qI/WLGR//VyXEcUeH//jHqTbPttdCuh7UlhpFB+Q3TVp554AnwgX+vN4gNYAfRW870zYCk1d/ATautej1En6WAq4Pm8DbCGlRAeQZgijKEUBS032eC73qVQ1381s8Jml8UY7z3p/yN60s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779087634; c=relaxed/simple;
	bh=Y2hYHrNSKSFBd8KWV8VNKF/1a6VzJMnhYuxZSSxWFZo=;
	h=To:Subject:From:Message-Id:Date; b=UnZy1k8c3V7rxdhEFNgpNd117HQwbM3F8i13KnFTEFiUYblwM9v90mHvp7bt+WxNolybR0FYp1sA/kw4wJM/YXUEY+o4Ym/FhZ028QuPYTjfLOUDVyc/X5mieKeM4ecD1+jxo1dbzVS30V6xAWtpTFlNTQGyDW4XSPIEFQSFJ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsSbYPk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsSbYPk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA192C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779087633;
	bh=Y2hYHrNSKSFBd8KWV8VNKF/1a6VzJMnhYuxZSSxWFZo=;
	h=To:Subject:From:Date:From;
	b=SsSbYPk1YUyqXczPZV2YrKS1w3fny0lLSeN33j/Sw7k0nRDGX07SDjiAc3HvCRE50
	 AqSbYGQypP40pkGKIyqtDu5xCuaWheWPojhosZB4xtBQrNJ/EoYCx16dVPz7OQimlO
	 hv9YtG8YW17evM0n4BNPHu6LUssn00YrWTFI3UVpAEa32HGLe+l87zy2UExOHg6gwJ
	 9Ok5xEQjP+VnvUuMRUds5gNxYjy/eETVj4HpJt+RL4kX0qJECM6Biq+xX9YvsV+kEX
	 sUtuqCgAy2oZmcqaLF+pSkZSLbsat0EdLdztd9g1vzKd5zCBG3+OU8VJL8aiiDa5HU
	 Yf7JJyUUUKhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6FCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908763369.5013.2800891556402034217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2bbb9d89505543f287ada7ca9afe2e4f156528539d56fc09e71f87ea89f3fd
Date: Mon, 18 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779087633
