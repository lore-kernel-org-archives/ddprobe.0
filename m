Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FCD37F8D1
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775168734; cv=none; b=e0mAQ0DYfUjmJWhnfrF3uphvuYy3pNJoaxc7kGAPB8lfabT6Si/rZtaF1TRSy0GpLtDKl0dddzOCKfjD7slFqchITjpUP1yh7l6Px2AYgGsysj00Z4M3W3c05GTGILw3j+hyr/RWw6wCHqlJCPwnq7+oEsT0XkEJ0mrxzV+TE/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775168734; c=relaxed/simple;
	bh=8jf7pbgG8BP4KkBCir9FBzxKEoxB9gYEZ2bds0Rst9Y=;
	h=To:Subject:From:Message-Id:Date; b=WzM0QWdn6znfPt+ojItPmJv+r2Q00EKyjb9OvCS4uPmyCXqeTu0R2pmgi5sZlrOUXXvVmBjG/yXx9Qls15WeCbHI4XxxK827sZhiF0vpHI2o3aUNk1S6yrjv3x7sA9SDI0uwg/qiPb621nPq1Nrn5AqLkY+Y4YcHKH0d65vFgXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZydWvs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZydWvs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B920CC19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775168733;
	bh=8jf7pbgG8BP4KkBCir9FBzxKEoxB9gYEZ2bds0Rst9Y=;
	h=To:Subject:From:Date:From;
	b=HZydWvs6FB7x5WAYOu6nd4IlnoKvAQov+Pc9ePxbGpseEmZFWsTp+6OuELLPoGIUk
	 v+lXkNucDQSRwcTkLJMFDihrEe1lXZx2LfgQaMyvUIPdSNQeRRZoHCaRFNMh9NLV2b
	 zc9sxvRtdNwlwy8Mei7Ontt7Z66ujSAgVIXPy+ndm+tcP4PYPI55Cd+n/zgoL/Sgc3
	 IX/WsEVbAeNp2nJ0zENtvQ9GJwdi2BP3iq9ubNXFBbWFPX6YCJq6pbHyAURzxpSg3a
	 syOlQZPNQUyLTk5x0jdr2UF/PEJLYiGC4XES/7oAD9cLeXeZJNbv2hasgAoJcqrEaz
	 B0xarMuW0gt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8AD6AAE7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516873368.2051.17906443441190672529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee03488cb7b5c0aad5ec128b4a6ae5db8bb948cd5fd492528b32c4ed8c07596f
Date: Thu, 02 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775168733
