Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEFC476CD2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785328235; cv=none; b=qU2Z9edKnj+UqstNZgyqD8M0MyzJn0xBd7ONmjIyy6d36/J7Tq8/Lq21rvsVX/0BCavtXVol1IKuehU1BbEu5VIQCHQH/EET3x5/pd5Vf9tXJXiNbitLFJJZElgF3Y/YPsSioOKx09TBYEi1v2NFExQVi4dIst2tvDcgY4Zj+0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785328235; c=relaxed/simple;
	bh=ZRpkE8C4RDBsuMzlC2+CGj/md0qwpRhTH0pQz/bnhHE=;
	h=To:Subject:From:Message-Id:Date; b=VBwIrrm8Ol+GA/nKsHOgL1I0JDowNCRw5O6wmV3PtTjClmhHRA+41KJOnJiOBBu9RsU0FsaAAJ/cJTNyx8mq6j21UJJdE5ALZMuXA8BXDLsZffnwFa3iKG2FR4CEU3Ei7yvjmYZylPrTogdCTTtgGSQ1XQeU18Nx3aV6LbmQCvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKcPtJIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKcPtJIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC5DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785328233;
	bh=ZRpkE8C4RDBsuMzlC2+CGj/md0qwpRhTH0pQz/bnhHE=;
	h=To:Subject:From:Date:From;
	b=JKcPtJIucR7NA1VWwoBp/u9rWugF0Rf72WPd+brUZp7cldZsEXlSj3JwCciFU0SkV
	 7xOh6Ua96tehC3ex2RBlZsCHaFLYLHsA2UMpE/9TDEZVrk0IPUyHiroEn5vzDM/NNg
	 VvtycVpIMaxjph3fPQumWAZacuCNn0TS5XI4pSk5txgUqwNXBAstWUjlLHNYbQYJ0z
	 noSrK02kDruu4W+JHrbE0rW+Fiw9aB4dGTZ2e27r2zbIIfK/X3eSoFln6K1ZJJF6Ov
	 ajfQMsf5K+VdQH+jlwMOBWpmHcdDaTtv8fO7mIBCAMrgduZJN5jEIr8LDJa4VOtBid
	 DXHOi08KC2HrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A881EC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532823368.11218.2645914573347518798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1f7587851efbb51f001e428b999776dcdeb2c0cc5548e9c7497f5e20e5efd4
Date: Wed, 29 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785328233
