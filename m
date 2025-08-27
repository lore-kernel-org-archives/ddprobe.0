Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2377127935C
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756333195; cv=none; b=WgtOsB/NmZ6D3Si5iwrKmiyPDxMAhiJ5/53KuyWTnX0oPxQS6i7hTjL/D1dzP69Jcsj5/OuDddZ2B0LYm9k7MUeM1gXCSkf+0DMowKc7/HRDMPESWgRcUTvU2b6QOH3MtK7Xt2J0WyPTBdQpWihelpOnxbIQXP689w98EArBVZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756333195; c=relaxed/simple;
	bh=4IxRd3urETHQ+S1X9xOw4kfA0MBuXqn3sjI0JPs4dgw=;
	h=To:Subject:From:Message-Id:Date; b=iG59CoTi7EzPLGqt+J+IUwdRaFPNUliamoUi4lXoe2/C77ZaXSu4IjFfvHwGETDfPhiexpABqPFmzSLWC5hSBY9kpL3PP/Csan2tUonsxAHRwWDYgen3OtvlocsAZy16qpyy5zuUX5OeQ1vlDxDN2wP9pd8whSd4ZgUrL3xJ9eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCaLUVos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCaLUVos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756333193;
	bh=4IxRd3urETHQ+S1X9xOw4kfA0MBuXqn3sjI0JPs4dgw=;
	h=To:Subject:From:Date:From;
	b=TCaLUVosRf/3KcQQvdkFdN/vKKtr15GXIgCZe+apr5gewHYxNKn0B5jPdfs3Y5ky3
	 mHAzHw+uFQkIC3yCcCDcAoqgcO36BwezAkeRW9qji+2os//cPHGCGjcLAA/uVbNdKv
	 2kBG5KpOCfkVjpxu3/ru+8VYowsEcx63GUs58FU+6D2tW6U/+OsEKA9WhCe8v9jLxV
	 st7FboDtv9JL6olQY56orlBqAv+7qT6bkJny1XOCQ6pC4yyIqxFDHa/3m4BgaA0KtQ
	 z6iu2fL2Aef8QDOtwYiZG4ht3ppbwIeeU7wMBRAydrGDtyzskcQ1uRBDhlLKb2nGQQ
	 lJE62ra1Thkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DACA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633319357.26564.1732082742690902688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e8f785e2606513e9acfdc874e2f2f8cb4a02428b820a09cefbaf5094545cea
Date: Wed, 27 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756333193
