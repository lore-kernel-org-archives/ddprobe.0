Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A635129A78
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734256554; cv=none; b=IP0vaWEo+4fqMS4wVW8V7YzUtUfnzWDteVLiMENglPWB/w43irjB9PYuGN/ZG/ZEL2hu7MtQb0OeZbqFd9YoDsuq/rckF2gnUM7nOCsubDVEZ1VHSkotcOUV7slwUOLDOpXyFFjy0CT3v1e1ikbEN8JdSzXRGufgd8Eiufhzjrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734256554; c=relaxed/simple;
	bh=IRprkKHupO7OuJLQ1mrE9/+i9OmlNGXTDZVNp/d6BSs=;
	h=To:Subject:From:Message-Id:Date; b=I6PToD7Pr7UMztw5iO+mAHWLCmHjdi8QPDtEfoxOMxsGh+YmUwSs1BAqiUa9ibnFOhKH0jTamx6dwgf6oCR0cLJAlEHHbWZoB/XGDif7OISajQcTITwm1NtpgfBM5dMBU8hgslmd416lju36awBY0m9BVn0j/xDrM1akVBnxoD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXRibx95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXRibx95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A9C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734256553;
	bh=IRprkKHupO7OuJLQ1mrE9/+i9OmlNGXTDZVNp/d6BSs=;
	h=To:Subject:From:Date:From;
	b=YXRibx95kRTI7cevpsk0K+vnXxEk/ifB3EFWI9pDB2VdQVaCJyT4mJoase++yX52Z
	 F2ZMFDVI/1gjBP+Ellgo837xp4uLF7vGs4O6+zMhrg2e/vp5BuwlDFUSzqHa0rVTUm
	 RduTWJVhbaN3sXmckFL18xWlovqxJpbjNd8vtyRhIep+XvG/h21SRe+AHbtnjuLWjA
	 VZoahB27LsTAp25bFnzCKnR3W+EYi6IgEB7Iw0TjsqiFsq0rj2P0Wk/i0UmTQMdQDC
	 +Kqq3Nz3dQYz/5z+rRjpXReEjMPB/jUpF/Q9JCgDePqVug3TW+3DPZGIRUr68EIFrX
	 G6FB2eInxsGUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF5E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173425655358.28255.1499410267759597679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffecfd47c17977a59055f97da1ae222021d199dadfee475778e784bc837974d7
Date: Sun, 15 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734256553
