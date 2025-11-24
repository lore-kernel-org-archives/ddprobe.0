Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F73CA5A
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763943714; cv=none; b=hpY106tjJPsPL5V1VqofAwJu0WbGvaaRZcHQ7/Fn3Lcb6c0KFPv5thzKwPQKpMkyt7qad7/HrFQGME9XCCe3PjcHcBNyNluOmzPwjuBNV0y4OaBE5XMfWBQpv4D7h6xO3+IxYflq1EARcHUkNu15+o7hGhxBJynEEiRAhjiGP9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763943714; c=relaxed/simple;
	bh=GhDdAcVXOcvwPCkS1GhBTtW9wxJM2hY/nEuO6jLeex4=;
	h=To:Subject:From:Message-Id:Date; b=b88MkTXzSlJsiTLmG+6Y+o4Glz5Uez/3hkpH1+Cv6rm3+huZqfTKOy6GQLxXUnYaKsVDiLS35QyJsHhcFMDkRBU48RyBl4dWjdMjhOVN3lsCKtmAYRPttCUHL3KXoM9BkVYBuxNqsY4f/FVeF5KMZDENd80vqSmi+fHqsSFColg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUgQSCeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUgQSCeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CCCC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763943713;
	bh=GhDdAcVXOcvwPCkS1GhBTtW9wxJM2hY/nEuO6jLeex4=;
	h=To:Subject:From:Date:From;
	b=KUgQSCeR7R2Uki1SIShXvjDJd5qhvQnXwYR9txZfqWcNfnPPVFG7qCVPHSJwSgwR/
	 g5ouMi9EXLQtI30MQ61QpLgkJWSOfsq+Lwqeyq8AEjrYzBEvoaL3GoO4xTe/7PqqCE
	 TQoU61eAe3a1RW2DsyJ0+YD9INN4IFVx5Cs0SEeWF3uUeZwN/RA7GJ17+ieqL8U/OE
	 MgdCpZjMkK9G/a2Pg/Ge2dFUWeVJfPhwebrf6MFTMSxk8/4GW/NCJEse3ycneP1iGf
	 Zo9rPtcQTQwJFnV4Vy0A+vK4uGJcCO+Mq23KxIgLBAC32lw0pEtxCJhr4/XL/pSjle
	 6BkSSj15octlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F48CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394371358.28491.4068716364166016607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b98db8f22669b2741643d72ad3fd6708975a9e8f26350e43df4f4fe3e6eca5
Date: Mon, 24 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763943713
