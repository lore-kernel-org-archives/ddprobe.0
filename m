Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4225837BE6D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774050894; cv=none; b=sMhggO7+KugMZgAoLI7X3+T8/5fXBRRhGuYGLQxEWFBzI9ihSC67Ph1O4szkTdHwMsBEL+4bv9utQibEZOsU5s6+cqse9OTjRyGhLGfwJCY7gWWqH6ziKjgPiy8qYpyqlQBOn3oxRzILkIRSBOUqBMb3bbGZtJSGoHwRKg5UwIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774050894; c=relaxed/simple;
	bh=GWuQlZ5SCB+SkqosED4XeYJQ78m8Is/THcR3dHnMU8o=;
	h=To:Subject:From:Message-Id:Date; b=fPCSt9mhdsRWRxUF/1Xdj7pHioepCmgE91o7EddczcA9qmg0JpieAAgUsYRDhs1nCKtaz7R4Kpnn8uwdxTlzBIuhnzK3E7d8FqQVapB6HS1ZjeeuqiA/xDw9vjfpFvgUwYkm7bK24VerDi42jIRAoMu0uose548XVOtia00wC/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3HS15JW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3HS15JW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C0BC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774050893;
	bh=GWuQlZ5SCB+SkqosED4XeYJQ78m8Is/THcR3dHnMU8o=;
	h=To:Subject:From:Date:From;
	b=W3HS15JWrRFLiyE3AHD7awQ0VHWKxcAEJvBn6pAD25DAYZSkmKuvMKAsFdyc0J/ij
	 EeHjKTSawwKQeAgbbAiXQdLFz8qquVSlfiD05h23/PcMB21lnioxb1P1Vr4q+yZMDC
	 ednMgreDO5vkuNn4RuOH/MbCv3UMMoiB/seVKhGoIn7JHMmvCem+TAIouznIMGEPr6
	 BRNjzJu4u0HGv+LzwyTr4Vy/XQzDff4xjiys/WJzaVYSyVK9deXMv43dkYU667KMGj
	 tQ28XthCEtBKzj+vFPmYohQU3bBGmAThrDl2uY8B1FplYgHuj7ngn/YNv+uWMvqUls
	 f9zfVVfBcKFeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5871099B56
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405089357.31725.10301764498644780452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3b04a1cd98ce0765c017f80648be3508a5893f3cd4c6889ce2fac5f64a4c46
Date: Fri, 20 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774050893
