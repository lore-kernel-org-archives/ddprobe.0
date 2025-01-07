Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3758A1AD3E0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736262354; cv=none; b=GehphpiizRncNgl0p5OtEEWzPJrZeCPPw1QI87ADppONMX+IR/s+w62wZxvJxFjtrS6uu7hX9n46Y4xVXIhzvzt3/s+2u7oFNGj113nuXPisU4gS0ICdQMEwfvbMArTgivkMg5zg4kZOfsyvT7K1xx1Z+h8GWAsy4r4H9T09Tco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736262354; c=relaxed/simple;
	bh=LGrpvR/QVfJ0cvqXfSzFx+EPFB/ojUOhtQsuacvSvnw=;
	h=To:Subject:From:Message-Id:Date; b=UeTz3gUz+LxgwaTbJlcsoBteaZhw5kBGACKzRWZmF874aW9MWbkXtrnKCLKONr2IK/3NaB2TJS9C8gXZqOfAG8JL/6YO7EO4Fx+OOy/RSu+JAz9+l/WgF9zrRpFDH7pbJnz+L7lEqW+XuomdWhW6mXNZGWcPmxqjst7BVFmFTQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geVlV87a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geVlV87a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4570C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736262353;
	bh=LGrpvR/QVfJ0cvqXfSzFx+EPFB/ojUOhtQsuacvSvnw=;
	h=To:Subject:From:Date:From;
	b=geVlV87aqK9ry1f6qJ6CAbFmSbLnURi1jlZIsYD1cpwhaKJQXme1wyIRnp1OSz+Vk
	 egZIjmaHIj7Avz+0ADT1pcV0jTo46RaxDiZhZtmDgJSc/3h5ZVNsveDhY6qi1CYpD2
	 1P1Ds5Bv5czwAbM9b9w/OMXpm5pH/8oY/JnolyINUBqgdCZzYOZEDi+y8nFrvl/JbH
	 8ork0SofutaNSA1sHaumxNO0uFMZ7PIgwAs9uGKo1mu2NKf2O9n765SFiOSbkN/f5e
	 9qVXV6ctgkwc+vCp8fddb/kCgOKFeTTla78UiwNS/NDaaoAS+4R5OqTPXkEOXZu/O3
	 Q2HJcTr29JxwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6BCE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626235362.2915.8000671413996110392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8d7a9e8c0d00f42075ae40bcc32b391c68066926915fe1b00119d08bcb38e6
Date: Tue, 07 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736262353
