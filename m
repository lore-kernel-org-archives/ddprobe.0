Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25756FC0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730174754; cv=none; b=RhRl3dn1Cl+Th4FVMAboedbit/sWTvLToyq7hkA8pSpllcNPgqO2ihDM72h5Q3H1DCXGVv1NNq9ldkJDmd9Lx0eAfmfWXR5iTPQ3lEtngulK6x1TUY+xGkznm+4abr8wUzwijmJB+sLH6WI42PSgrOS8W+iPQMRF4l+xhBWWIPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730174754; c=relaxed/simple;
	bh=Hy6NOZc+dGPJ34rPCfb5JjWQJGmbH8PRmvx36ysojOc=;
	h=To:Subject:From:Message-Id:Date; b=Xo7ziPUn46ig80RgZkn/uY0c/qz9pPcgAkitKaoGcl7IhSTPezzoIwSXe7+qK6GTT9wb4RgcbZTsH/Mb0lOaxqIIfoESkQhSVmwlwTboFw7YLATjAghCUXzxFrkadpfGEN12Bkg2AdF0VDcCkD0WgJTEkXGYoEs6nL+I9Lgo6O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPd1yfgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPd1yfgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FCDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730174753;
	bh=Hy6NOZc+dGPJ34rPCfb5JjWQJGmbH8PRmvx36ysojOc=;
	h=To:Subject:From:Date:From;
	b=IPd1yfgDql6/0P1aE2Frk82ERQ0lAp6wkshkDfNkwxy469feyZxd4mG+Ol96bxfua
	 u6/6PcGQspzLORQB7aHd6umNcFEHGC6E6+WQmFbKjxiUptkHWvSfCF/bRhTH7I51Lo
	 7mnaQIFo2wTkyLNWmjqzUdzcafbfVaQfkfU4uh/CASO3hGiYzmnmKKk+Wpvy6GJGby
	 d0IL4WfYmq4rbml+eWt1KnTwF7sEPBbsiAOi980seeYSMKAvyz98n+GsX98giaybU5
	 3i3ecN5albi9gpE2fTiVtN6W28/aRPnm5QMv/fyPhTiV4LQLQeai0H8Ryp+qSzQ59z
	 VZanlHX2ua/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27D9D5B874
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173017475364.10161.2355205036236551152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5ed5aad78c83c83e21f1378acd86b0a19d140b0268c4c14d1dc397ff6e22cb
Date: Tue, 29 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730174753
