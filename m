Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234FE37D10A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777626454; cv=none; b=OjJFthwPMtdHhzt36vNMK5yrrFJ0echPSp10ElC0EDdJa9vIwOrWWHmZ2B/Z5XXvkrCiSxPDJklyd24NNrhCRX4lli5Pt+XN7QSMiJzMwkN5Hs0PMw7YUZKzuCeS9o8kGFw7+KkAnvRpfF+/vZ/tsgDF46QYHKtDwwUmWDH+rIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777626454; c=relaxed/simple;
	bh=Z244AyY5QFkBRpirVXWKyr3tmep8m0uVjyRK9kSMI0s=;
	h=To:Subject:From:Message-Id:Date; b=megMty1f0cZrfBKc6EJx28rYwst5HKyD7n1pTScXYGzd3j2QAPH1dvax9pnuEaO7p2Mma4CPhHrisxXOWyJ7kTLc0F3hu/6ZyAZNRTzb2scVUR4yhyVZODNyPI+JRpBhv3v703wlG8y075DI71X45dFO9wwGgJ7W6yWqKRhGT9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQdsijer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQdsijer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D10C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777626453;
	bh=Z244AyY5QFkBRpirVXWKyr3tmep8m0uVjyRK9kSMI0s=;
	h=To:Subject:From:Date:From;
	b=qQdsijerAWYh9QkZKq/raqYrEqKAgOnq/9TUi/Rrx8p5d0v7hlZcMEEubws9YlJzX
	 1E8rvNxhV+nZxzLbEyrVaa250meUntuQmMCC/Z2OS6WvwYaMfWjfkzv75rF8Z6BdIM
	 rbdHsgyc39cr7e0v9pZadOVPEpKwvJlQcdnIbTibS26nV8tEIw/4iA6oYJeTgTnhxO
	 BYVgfMzw4f/ABmyZewFbeqVJtX2/Dh/GuEW9j2I+Mp6Bl9LkNK+6WGS3STtkCQPsIx
	 b+jNKDvJY/LychzvkI3djM1tElluCt98TX0AzGCAxMDf3NLOQmwHY6mJ1NAb9xTmmK
	 uZdHk1IgtKw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99ABFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762645368.6235.2802012242125812166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789f0d0eee349a204446fc12e218efb194af97d65a65922dc4799732c5ba2c24
Date: Fri, 01 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777626453
