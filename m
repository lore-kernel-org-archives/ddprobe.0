Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4B6309DB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785136234; cv=none; b=TZBaQDY3sgu+ryuAHvdwg2c4wDR4IgL9olMwna9pVJqUpkmQVbvgh71wbaTZjOX5+0BSlMAJBmeuIPw2j9Hgj676p6BMocdfnwjhXSRsMxyAqDohaESu7Q8AP61pJkmU8WwSVOI2YcyuIypawPRB8MXiMywdFXX/xpL9B1kLT8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785136234; c=relaxed/simple;
	bh=GyiwZCvk0+Til1iHMYkDWuCiZAi4yPQYhL4M6U7AjRU=;
	h=To:Subject:From:Message-Id:Date; b=aCHzr8PspF9FUZgNL88R8W3jrHsn3wT64zoBwwAuuFBiasVniGG3eV3ogdwgz//90ek1KMo/8V4CCv20DVp2qtGMqsgFhpfnBd4cBrejFfFlT6BEJcW1D9NAwNWgEMwHes+lpABxJS+mHv/zFr1mq5LwAQCTuukir35TRQZaTXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEiY/Nmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEiY/Nmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0090C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785136233;
	bh=GyiwZCvk0+Til1iHMYkDWuCiZAi4yPQYhL4M6U7AjRU=;
	h=To:Subject:From:Date:From;
	b=BEiY/NmdyZ/sN5gvLVU2i9Nwj+P3SPjR10spsiuAflhdpQUbUuIYojoEb0j8Pj35x
	 QVRQDExCNJcvyKUES0E9rXUCa2FO7OwxfK6k7+mlfcien4KJx20XAcCsezadPuirbF
	 7xZ3nqsvlQhHCWimLukoEEzcCIItQ5xWZii2zT4DS/mW3867F8Vflu7AYKoCAfo65S
	 jcvFL8Z/xOUpfKU8odcETYx7v9rx0FKrL4/5mQW6h34DOSRkGw+fdaU17ZJm2vsdVs
	 E1EP8BmWBqr69aqe88/2dlBS3zTOSR4Ubo5VJPxyDUWOtLzhDKthRv8aEwrQbGF2n/
	 9xJViZx20khfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F0C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513623368.18615.10843565037540800673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7766735b9fea17433051f26f39bb698771307d2f368508323b36a0a47fbce6bd
Date: Mon, 27 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785136233
