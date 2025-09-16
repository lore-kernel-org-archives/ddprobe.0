Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CE0247281
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758043195; cv=none; b=gve2Y2G7igSRdMVKAWyHv0H0PKhnnlVtriO3o510dyYbT7ieeHXbwehgDfeuRCPD2l57fvDkQi4+b9Pbw2q4NgdSLiDaCi4vgBc4yfiPzyAAfU4KJ1YwUEsiUGl2VCdeCgDtj9I0dAxjXB9FfWWnVK+G6uDgIt15oDwBk2JS5oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758043195; c=relaxed/simple;
	bh=s7hCtcrAnZFva1hKfXw/Jw7F9gTuSHvfiOBjruyN+IE=;
	h=To:Subject:From:Message-Id:Date; b=pNlP62V+J40CnuNXlj5MvKbNRLcNrp2g3+8l27Dfokl1c1q1xbV4ByC64qMdJoTO/rC1nMjdth/dlrlv/91L5GK8MdXtY5rrgRr1Nj7ln7jKB1kWTwpXz9phiLh0PaM8qRIPuW9/D2GVIgsSN2oFMYW9J8OOT9s3JLQfpARwZ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm2+yAQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm2+yAQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A549BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758043193;
	bh=s7hCtcrAnZFva1hKfXw/Jw7F9gTuSHvfiOBjruyN+IE=;
	h=To:Subject:From:Date:From;
	b=cm2+yAQDoJBM6rGJAlXhM5p/RqJSdaWlUo/ZH1Odzq1sFmmcHttFQXULwFJtAlS/H
	 AkNB5Ll82Hw3czNKh9FLZ9GtgV1cFQfdwmwxsIDRi6ARNAlx08poqxAva8bIqr2wcH
	 QcV2pTf25A8QpTZ23DlAIMeSvuQltLWjQ2EtDfej0qArV0teG8XR+lgx5G1DyVlGKc
	 lHrGuvj/LU3JYAKvBVJ+CnZ/49xVNiYJAMDWxoNDEYy+pV23Vg9TZ7SMvaBp92Ffev
	 zgzugoyGK+YBPF7as4xt110t/6nUvAP4ggXNjXVdhZiENHdd/rJ/nXaWk7zRtiR8Yq
	 n6Fu0BSIjcTkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93364CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804319359.14580.8749607969082754182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455a409efe883745674d478f246012893cbd519d4d2b83ec5ccc7eaa4f571cc9
Date: Tue, 16 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758043193
