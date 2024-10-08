Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF092594
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728368154; cv=none; b=u/DzihqEgzy26uBdmxCnbxSmuE6xKgnG3V3lAQLcY8CN5UZMtvSU/OUJuiLDv91e2ixrDIYPAar+dEb4KFr0WTtsa/sqXSDvtxaETV7pDsNqUbLP4mUrM8Kkky81oV66bimTSE5Q5sbznc8kk+IVKKjatZdUZrLsaIDjwaKj6Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728368154; c=relaxed/simple;
	bh=ph5tykg7qy1JgenmwgyHJnQk8VlHlLyyoU3jZjrtfng=;
	h=To:Subject:From:Message-Id:Date; b=HvevJRiSUckFRI5ZeskVCHNDip6wLR3Jo8lMhVCc2Pn0OBRtAuVtD8Il8e4ODFC+UIMy6hdUIDlF2id7JLtNdu+ccQG1zd8YT6M6dH6qJ2EiPw/N3WMFKLMWRkK9neYiLVwNTj71PHIpJpdaDpd6ONnQ4Ndcft0AO84m2+Gp1Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWEln9lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWEln9lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0109C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728368153;
	bh=ph5tykg7qy1JgenmwgyHJnQk8VlHlLyyoU3jZjrtfng=;
	h=To:Subject:From:Date:From;
	b=SWEln9lrO6TiqVo1n/OHUVdorHwQ6r6z1yJVrMjVkThZh4E71clhPHnwfZa16HKLT
	 +ySLBk1hrcbudeeYUZL0mHouM+UTqoQ2j31i5nn6UOI+svom6rRO2jIW7+viAy3Jb8
	 VN/QplNmagFU/iNA0NMED9WJRQrd6EOg9uFh0SAdgmaaXDa2a/mj53ANXHkgJe9I06
	 YiQiNVDq3guEc1x3gKXWc4rIU5lPo8Rb30dmPnKPSUIKI2smfncytlcMsCXpo41KSR
	 kRlDDveqf+afiZ/XkTt8ODdgmZ/rOSFaX746cnG2i333VA6eFLUXoYeAHvU6SoE2YJ
	 o9TPfeHQqe8Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98611CED26E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836815361.635.8690792690711102401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d0f5951c8fa8fda3abe185c46ffd32bd597afaaa1118527826eca43535722b
Date: Tue, 08 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728368153
