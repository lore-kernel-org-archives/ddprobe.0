Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DA98BFC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720731443; cv=none; b=SIhqdalxQ3MkJDgfsnas6m6Cx+c4JDLwiwUJB/M/RGc60ysb9YTINin/6PMwhXbyHE/VmoOihyu5TxjqbOhjI9W7ClVR02o14/fflUV8Ja3MNu7vX0VHYzoZJ3HT0Nz8jw/ODlIpoKnUh8zHWzMpfx2vh+U0UgqWkTcJCviyixI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720731443; c=relaxed/simple;
	bh=p/Y7f8sa2/GBB5yb2wDc4XStLW6GAACTuRuFwzuXVgk=;
	h=To:Subject:From:Message-Id:Date; b=AAx44gBDhCbKlaQxTDI6BWRx5vyzyF04BjVBwVjZSW40cJ34FG7m+BOimlsUGn/S2KekaQ4f2zoLOEQHCD8k0iXgwqaid+iryXUJc4hxl7KsI6h5v9Dj0zw8EcgstUhnGX+NrHM44yLRGuD8oJGDzd2Fm0yN2F01g7IkpwaoBlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVW7xnP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVW7xnP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23B4C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720731442;
	bh=p/Y7f8sa2/GBB5yb2wDc4XStLW6GAACTuRuFwzuXVgk=;
	h=To:Subject:From:Date:From;
	b=pVW7xnP/fORU1ThRp1kuewOZJuqxO0dQPXKdkdsbzXG8f20+9nRhtBP2G1ViZVuq0
	 bE8WII87p1Lv6mAa2ltbuSdrmZftKJEXtfquxiveOcxjSCoDTeA+GWGe5wrMyoD9Yw
	 xrGpWl8SRSnBxTVDIZTwSSNi4izZkC+uKqCjOiakDoTsn0/WdDsnnXE7MMD0CKp0rI
	 RFkoJg2WuRLZlu+LiuIpw+pQeWihVC0hmVSR0EYk650LuZLHjULYRyD0ZZMwkPW9i7
	 SXNtN/mvcv9BA6eNy+BILLtrxCQ34hVpU44hLA+DktzQoFMiB/ltIogCs5IMf4tD9A
	 3a37gk4kQPdyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE15DC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073144283.11205.15712266558189665575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05fee382e5993c2c830ddde39dfb919f7328be1220c37f0818abd17fdf129361
Date: Thu, 11 Jul 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720731442
