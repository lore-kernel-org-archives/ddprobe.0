Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B46532FA18
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775808454; cv=none; b=mSNwzqe3G/3CNwTKjfGZJgkM8FZkU8z+YwLU1yMMswFf7IPwwW5tnebLdZ5lWaIc55c1oSf5tqOuUPeLVSTRY6YTR3CFF8dxMjHVCK8jLoIL/8Vg9JlcUhzg6nCzGSVcp5lEaC6HVKcJSOb6wdwKlNw3GYpHkHz3CfPs8N06L5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775808454; c=relaxed/simple;
	bh=petYCveERgM+VHO9mUI0zb5IxRSNKdLKZdw4q3n1Dkg=;
	h=To:Subject:From:Message-Id:Date; b=Hv2E3Mng+FGoQkmxeZibFM3CR2aDjzuCwoN2MjSKaakkK5oDM+1OISPBvzvrCeWHyNXshwALrYD9FeQrDqSfD32HbKHixA7AHU4xObhcADUWP2Tv1lRIhIHuF21RGaTHLzlMWKRdZ7bFaL2BsncmArv7GMdlKncb35Hc0E28VqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuSYctN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuSYctN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89C4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775808453;
	bh=petYCveERgM+VHO9mUI0zb5IxRSNKdLKZdw4q3n1Dkg=;
	h=To:Subject:From:Date:From;
	b=FuSYctN4Oxv+GPApGRItV642s+s2JxZuKqTS5y/PGdmSqkRHOnqFiI+ZSBMnEXm5I
	 v3kA64kafsWhapUNU52O2WLE2EVzPh2gtvlHhPRFWFFAB5bsk+g5aFvQmpZrqOSF94
	 BRG48TUzYZn5Ka/dTPWZ20GXqQm93kBTbkHHVvXyNd7YiD5JtLmH5ad2KlsbM4zhR5
	 31fQXaAobOELjrLeYKhi3oOTIedCXXnOuyj6/WMdDXnRSlSr8UnIyLYZlqujnvev7X
	 JCnhpodnb5Cdoi+/HPmjY4Ma+ea0OjJYfFJPKg+udYG/c21KEs1njnAI8xAhI/wUKJ
	 UmimXERIqEBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9869E9904A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580845368.17037.6699784103999425271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe86ad52f3583dac281e934dcae2b2e65f5ccd3ab22815713b7c6e01f73862f
Date: Fri, 10 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775808453
