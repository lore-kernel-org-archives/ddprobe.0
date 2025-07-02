Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A192F7CFF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751482193; cv=none; b=kD2A+Gxr0iBC2tFGke70zHiLaF19UeSziXmnuI5mW6Yj6/ihSeuBczscs2p/xQW/PIIT3FeaUovyN/jKqAy0oqsVDcGIFyDMJBHokODt0dX+zaB6rKD0n+mj9XeRZEOgHsanpn2aSWHM5xoMPRwGZQzZNSOVZeJmHhQRAagkmcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751482193; c=relaxed/simple;
	bh=JBayt7JVmrPAqAoygj41utcTZxhcrEulaSCYl5JQUMI=;
	h=To:Subject:From:Message-Id:Date; b=WlidYoCXTsoKRgrTNd/7j1gjsxy4sJYR8EueYfbq7yWhk1hg7Ja6iYaMaTdPlIikwsJf72V40z/zeCHbRTCfo6xd6qZTsOKjnFiawoXeWSuLpWf41ab2CHT9SB5hc/SDUEyZrV8KimW+jUgks/ycLOtNqYLrBJHJopYPMspMsuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGdxt55k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGdxt55k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31AAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751482193;
	bh=JBayt7JVmrPAqAoygj41utcTZxhcrEulaSCYl5JQUMI=;
	h=To:Subject:From:Date:From;
	b=AGdxt55kS/au0csTkXkSjMnrFfHdGageaQ6W4fb7LmRrnrO6lgse7hY1NeKcjKC4w
	 xOyu9SMBgqq3bNZAe4eKRRCuib/dZNaFY8X2GVOUp6786dMTupgmN3oBWBdblx/mmF
	 tsWzUNa9EmdAsSsl9ndZ+WSN7VpfxPM1jYpYwlD2FNsw/cZ/pox3X7rrzuvYz9km05
	 hFCk5EaMT9c3TF7hTMAuhckxCD0KXg6gx34J8rQYaE3IXEzUup7RvoTjjGcN3vQp78
	 blzhHH9NznefXxVkl9kk/GQ3fYm6GA5jap7g6SOW2sHteA6cSbhaUUbBSjMWQmaQqO
	 LM4prIL4NeWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90777C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148219358.29256.18063904609352501825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5641906605e8780d0a192da0391dc61d37180f7d94b99af67b207ed0804feac7
Date: Wed, 02 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751482193
