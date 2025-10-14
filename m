Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D22246BDE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760469594; cv=none; b=FI9sleoDKalIJvNFyWmwhq17kE47i3VOH+VvWxcRsGvcFNTMDNf+wLsTbUJ4gTHiWOaruXxP8hUwZmAxCeYBbPn6yJNADyGFWPrq8+U2mJ5EESSwk82hFqtUnT2YFP5JCsGUcEDZBKihlnifrg2s+AmqH3p3iAy2LG3MPCxNp/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760469594; c=relaxed/simple;
	bh=BEA7tK+PxTAFqKoOki8C0SAGE9z7dV4fEGMgxKRoSbk=;
	h=To:Subject:From:Message-Id:Date; b=JdYw1y7W5YY29rDmlZkDABLM7bUe1u7lp6z0fSL2OL8GBd/BE0LIzPmdtK+fcTr6f+m7kYrHhbxMXTfRmB6QlBsqvHKdRomM99zS64oYQJ8xVsfn5aduQEhSQOxPVUD3zHcttTooXrcBFW6KSXZfEuxV7J0XPCIf65b6Jn8xtBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsRW9//Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsRW9//Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760469593;
	bh=BEA7tK+PxTAFqKoOki8C0SAGE9z7dV4fEGMgxKRoSbk=;
	h=To:Subject:From:Date:From;
	b=AsRW9//QSAKbRUTsYkO8a2ka8B5yAIwxtHjarOFswRky0S8CnVsxph6jNyoOx59I1
	 +QIePzzTq/fSnZ3kNisD2XA5TOEsDg29AtUV1wHOIWpZHzjY4JkPZnE6Unn8dRMFR/
	 IU/gbS2Yvhe4zPDAFgS9M8Cl7vOw5cMfZmkKd07ZmhjkWblpI3blgFieQjcHA1oM9o
	 hPBf37IAq+mqXv9gQRnykFoTW90kBPOJSPozODmKBlJtpaJK7YxW0R4n+Na9zKPzR9
	 Z2McT7vMPM3fMOqQJoAihtUzK55D6wJoIiK1EOLqEQoDDYXL4vaMPefMFs3H5gHetP
	 q7KFnoS5Xs5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDDCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046959358.27734.4493373410638993016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e47e26b5334652b28782c9d89e6057a1edd00e6ef3adf9e1b943f8e8c65c9a4
Date: Tue, 14 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760469593
