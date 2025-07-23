Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4F2EF2A7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753284594; cv=none; b=Fuc6fqVvnDFAS2ScoR/ULrc04hIJZOq5iXVWegMMiZnP4qQdWBimogSy3jFqonELmovT32On1a55eBefZ2wrFzCjwlEao2nlBkAgFmnBQwkKeB+gQZhCmpKu7oPcGLuofHdQqBkEqxRnenTjJDJsUZJPe9BJignwwpiqeDaI5to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753284594; c=relaxed/simple;
	bh=Kwe4VhcaO0TNZroIsDN9Zv1IKsK9HTdOqrhLRyXCsm4=;
	h=To:Subject:From:Message-Id:Date; b=MVIS9gZtUtzeZTK4xkk0u28HzZBD4SLNRoPHdJdlVzKlCjSWTvEbCglR17A+AEFl4UIpzIEctaSG7j6hQp18dbxBRv+/YvpqUrqbw4ob0pGVljBikJV1PbhPbAu7n4xEi8s8Qsdkkmxegy0FXFm66FyYDoorP7JpInHMT7XDV6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc7K+uRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc7K+uRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED26C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753284593;
	bh=Kwe4VhcaO0TNZroIsDN9Zv1IKsK9HTdOqrhLRyXCsm4=;
	h=To:Subject:From:Date:From;
	b=rc7K+uRxeuS3HGxAm00HgA9ay1ki4+WpuT/We0U4EyoWG6igQm2bI0hNKAwU2l2An
	 F/JSgLsQ6iCe8gSDWnMC5DCXkbZaAs5EpHkTM/m7ZYIrZCBJqu/U5O4Yzd42jePpAI
	 RcRqxH6ruZibMguNWzkDIGS78ONpvXkeHgMHBAoJ+UlIsGUrJHcly69dqwQ2DKLc/b
	 AuK9YpppHyPH6Qx47RMdS1751sxzsZ49SabpXWQ2shO6dKDKKOCX1YcbVDz4Nq2wOW
	 Gk++XHbye4HPdVHrQe3cjySSjgO9KNjttaYEWMAXbWD+LIcz7jEKwh6YVg3haVYfK7
	 RVYycqGKRzO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EEC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328459358.6399.2029945086745100247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b549d6928722aab497e078f5157347925470052379ae26e2a16b273a5580ed73
Date: Wed, 23 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753284593
