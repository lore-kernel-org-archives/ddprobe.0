Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE1E12B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742474996; cv=none; b=hYJLr9DrsfOq3ZFi4LIGknThXGTHRWjYblgUxjXS2029nXhv32bj+UMM0V/31iOfXUzHQgyW1Hsx56X2Vq3XH7oCapZQBVL3g0kwBqjUhiFXagOaFCERrYllGSqqcYVo5tZWPDhJ8u84lCsh2impo5eyVjJz6zjOPX7LEWSyg28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742474996; c=relaxed/simple;
	bh=oMciB0oaKYuWQx7jz+8G8RYKG0wdh98xTWOYOJsV2Jk=;
	h=To:Subject:From:Message-Id:Date; b=f4kFhBUyFxD6oETQiRrucwq/e7TG6eLDI4DbtV4wopSKnTzsamMKvTfN01m318Wp/knbue4bNm9wTPH4Al2XBZKxl9u2T3e80bOo0PDu+ORENEGM4/6MDGBM52npy+cvKTki1UL2t9sSyg3JriGwwxd8hmjEK6pxZbYwZD8VTbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxSL6uEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxSL6uEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44ACC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742474993;
	bh=oMciB0oaKYuWQx7jz+8G8RYKG0wdh98xTWOYOJsV2Jk=;
	h=To:Subject:From:Date:From;
	b=gxSL6uElhXlV0Cr8qP7BVZc35cjmrW3/9LiZDmD8ji0ooxiPZtr9W+pzJm5kVXojm
	 7kiE8UkfqoeuG4LiJizShH8NeNCpudfVpGLxtkc36GSI/wIlhykaY5e8+Ne7G2B1d7
	 NvFkewCCIpeXsdztrFvaDsOU6RdvOySo4EuUAYfFaRt/H7bo32XM38xlhrFdzQ+Ufw
	 GYq6bb1dbNZA5ArMb9CJ7spW3CqWRrYg3lFoHjUSPZ+razQJb3u39yQ+FA2VfKXZUo
	 ehkOLAGl5j4x4er16LRH2AEdKmgyTo5RG3saSTeAsUVGe072QC9PK/JyrvYGzKjrnI
	 EU80Ae2rT86Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E00C36000
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247499367.24707.5643296544641667728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c631559dc32ef5d71b6d5f8809ed051909b869500344e7304d0ed5c8bcd445
Date: Thu, 20 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742474993
