Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E972320A34
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782186994; cv=none; b=ezVCjnTxyB1Ya5DOA/4+hOh4ZejgCEO00ZGCVII7Ev+Qk5fjGp5FyqacRkUYFS9MlS7uGxJ1NsvXcUKHhwyFn3Go0/h+W7XwKXyXL4dLKkmZgJrZcn8hegLw0jYEKN3CKOdg66ygCRb2KVFNOjYrPvwWPbSx+kML4fWy8jtmn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782186994; c=relaxed/simple;
	bh=ckYUdCkg85PKxxyxr1Inc7OktmH2HyNWEhFpfoNVWL8=;
	h=To:Subject:From:Message-Id:Date; b=WDdGvBbbyOEF0mJ2whzhPxYeJoDoYIAxATQ89EFE7jp0PBkgXwQit3mCSF5qZkNscumSsDISIeKuxLdoWeUquchIDBkIRowskr5xRDqYUqEc5C67PfNuHSaAo9FrVmkaEFjfeijRnggYrlwaMJRiMXDVkNtfAF+r3ywrzJCytDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJWFe9LL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJWFe9LL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6753C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782186993;
	bh=ckYUdCkg85PKxxyxr1Inc7OktmH2HyNWEhFpfoNVWL8=;
	h=To:Subject:From:Date:From;
	b=SJWFe9LL7WNoHZ7uTL0fmakB+c28J8bzKWUsvAW+jYBQqctl5YiIc+KdMHF5pDZlr
	 9vJkzXPCVanBiJb+a3iYH0uMd+h8Yrpy7WqWd1OCtbDQLMb7qz3bXXyyyNizW4/++O
	 aUQfo6IiyrD+r3cQY4V3dqg9AnLQsVE0jJIx5/2X1tvMwGgHsSq3VDeeJFlirrVY2x
	 JTCHkDGTONiXoGwn/fcrvE1bhHuITjyWXnhOQMQD2mH9xHjakSsDeJSwC/0hAksR+l
	 jqYhSMH5b+4vld7IueqSohiv9Iwwn2a+bFWbt1B7hTOs+2oPsJmdAYTtc7icr2qO5v
	 Do38ZW00L+kyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9F2CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218699369.15933.17943410908947899070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22474251159849a753b323517f2a08f53861be8558cc69744e89ff0036e931f5
Date: Tue, 23 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782186993
