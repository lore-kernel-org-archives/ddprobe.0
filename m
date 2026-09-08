Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6785537D104
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788846634; cv=none; b=bqe0P42LXALPGFv1MB6E23oqoJMazH5US2s8OLzIfU7ZMl/s8SP8NpaDZa0ec7STBAb8oziTV7IF1Dy751iAZepBvqpS5wZrn5gXADhLwUABrmfJCcKB4z/6xBScs302b6xYeJQdgkL/roZuPGPO6PFc2xsjxNp8vQhhsTPldrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788846634; c=relaxed/simple;
	bh=Nx75Fh+P4HfV2AU9PlNM48I8kgMECMDia2fjacWVPus=;
	h=To:Subject:From:Message-Id:Date; b=Oh9Gs/PthOgl9g0K5W+dltzXdMeDC0zEqGlCf7SVsHPu3XF2ffGOpl6ULN4L7yeAEeq7pn8eOWhDo4PKN5ycXyaGzC5wZ14fHRuctK/L/0dolj3SYtyxYP6hmLSnpESicwEJtxE7HJPGUwOf9zXa04Hc7q/9IcFVaVFSkv4lpkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix/YI4yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix/YI4yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F93C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788846633;
	bh=Nx75Fh+P4HfV2AU9PlNM48I8kgMECMDia2fjacWVPus=;
	h=To:Subject:From:Date:From;
	b=ix/YI4yomg7Fci9TxPaiImf3H1qD7KvVikmp8RJWGkkXFrlz75JxCcBfY2rSNrqKK
	 Mfb51rJdCT4n5Qu4DmQFeYNtpktMZasZefANOgbUjBUY+Fgqlix9EU8R9Xi1nDQs7j
	 iTqPm37We8qc/CQni5Dwa/TETBtCSnNL2losFdpr8dDfs30UWh/tr0iF0j/62GgSrU
	 YR2NxvjELsbY71Z0fY89/UjWPsy/H6Yjvx3VdXTshjpIf2MoA6/x3EN5N3eylTE1t1
	 382g0hUiVlZZLBZeNPoKco5GCRU7xdVexYGs4GPDY4RR0+xyFpY3IBC3UUkAr5svP2
	 cSYn134WGjYlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F80C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884663372.741.15377574081980872386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db11b3c80a09cd6c73f8d8e02e79959e0d70a541dab997c91a71b4aedfeb08a3
Date: Tue, 08 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788846633
