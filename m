Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5689A233923
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786187434; cv=none; b=Tc1QMj1V+mZj0IgERlcWDSRYPwPxEwRS4MHSBjc1rlzLAJ/PBLq/WcrMiem6v7uCYbJ4PJY13eOUDsnx4NynY/9scBv80H1e6iD6cWRqCBtbJkDUpKkS7OLiW/ve+aaYrcJVSsQJyIvpnDk/2RO/bzIRNzfnBR6Hw5X3vGIBb7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786187434; c=relaxed/simple;
	bh=HZI9AyAOwWn/CCOYS7pcO/zn46ahrgaAi5eR/Y1ChRE=;
	h=To:Subject:From:Message-Id:Date; b=AkXJE4OP+6p5W9JrhYhQ2N+UZzHQuC4+0USdKRbr5B6aS5nu1ORlphJvpW2aMsFupVIY/DVPEyG1rPWqpPcBeMyrt2+KaoVAGX0KzWMjys4msH3h5rYWldbk4guw6WSDivmMKY1ZWAR6oKFBZGG7aZ+1YsO6+7n+knwheN7wu6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsHZBJbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsHZBJbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46EFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786187433;
	bh=HZI9AyAOwWn/CCOYS7pcO/zn46ahrgaAi5eR/Y1ChRE=;
	h=To:Subject:From:Date:From;
	b=RsHZBJbzgAG9KS+ZWKABfQZrXQZCGzHS509b+bO6pyV/otvJMlumo6CwckP52dyhn
	 hirSagaZfJY0GKgYq7kzETTLKDp7vhM83/T2M4hJ1xnBatNQmnveWTZpvIFpXLHFQo
	 asgoRv75ROEivv7KsC6iactusDznJQsoZ7aVs7Q0JKwFhVIV/SVd/5JntYjkH0ffYo
	 Ug8jJ1j8BrCuGixlyBmZe97PE6X7b8YF00TEZ28by6Td8SmRRN4i6IvX6wBUHsMbW+
	 UPm+GUyJWtqGjdcNl9Zl7WRPrpC8RO3QDvhBEg3kt1DLFbEFvt2DHQMFEzGCwHibrL
	 7F5d/+cU9M99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0650C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618743368.14938.13679179763719139550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81646bd876b89a5ccd1f0e81167666fb6a80649219212b453dedbadab50b253c
Date: Sat, 08 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786187433
