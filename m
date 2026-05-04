Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456568460
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777868854; cv=none; b=ISqnUzmgRUC2SS6GrHgqLW5hTvceJ9At7egVKTErp0CZZDHRcAE38nfTAU9HTOOhIO/1dnkJnyaqzVNnBB9pGnzM0rstrA7dKl6pZJR1O5Z6LjuEni1sv4cWZXYFw9GiZ+jmu5tYXZ6mSCKYRW7fy+lRWvpedkNDeKDDNBxhjkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777868854; c=relaxed/simple;
	bh=RKjMu6PGq7ysbQERe+PG1rQ1QVEJdHN/JzJLKnOw/IE=;
	h=To:Subject:From:Message-Id:Date; b=JzTK7of5wqeBlf5wksn8iaeMrJoitbJ1wkoOSqO4BZiwor9XeO/Tp0qJKM1jvaZkFmZNoIoDc5Y7uy8mkd6FvxL7x3k3SQLbBaruwo4s4Vrus8hntK70h3isZ5fKxOyaxP4o9nzdQtT6O5+Q/2ZDS2YZQrm6P/fhk6Xeug9bwwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrUs/CeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrUs/CeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6617C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777868853;
	bh=RKjMu6PGq7ysbQERe+PG1rQ1QVEJdHN/JzJLKnOw/IE=;
	h=To:Subject:From:Date:From;
	b=ZrUs/CeRk+TCYiTwgYv0Fh/pnB1NcMaBXcVtz2BMl05LajjGSPWr2zbFh7vKFh/B1
	 UTkpo1QhIVzJgkfIBsW49HArOU/VdC9gDsi1yBa7g88Xzpiqlw4q6Ti1i3b8ppWYQC
	 mdvHl1z33N/d5Nq0IzIXGqrtneDcN9ctjkLtdqGFjrglZFuhOvguRckADSHKtr7hyZ
	 P6X706XEiz4jIYg18Af9tfOUhQCZP/nAUmRPLn5EepwoczjT4qplBLG4cDzK+sACPH
	 U3auH/K5dzV9T5Su3EgJoESH2neQPDT8zVTd+FLLj84qJvWqxT0lSdY98zqI6YiBQ3
	 fx5k5rsgCsgyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99EBCD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786885368.19854.9466311696107980892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc19fbf0224c604f154b7baf7a25e3d6df33c75f508a7e32f2484baf0854e8c8
Date: Mon, 04 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777868853
