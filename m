Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7EB47ACE0
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790154035; cv=none; b=Qdnz2sKEJVpetUSpsl5pc9TCyQvInGm4xfTKh/hi8wLiJhWFtcwY+/vuLrUi+8YV6jteK5vXy+8Xg2l6VMxf26lBJB3+pA4xnRQAVP8rvvMbvBw7AuvN3GHgqce8tZRU4Hw00i0vJ1N993pwyKG5wgcRlwcybhzBDcmty8NinC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790154035; c=relaxed/simple;
	bh=uvZQfCnLpjuSxDgbVgpeY+k4HEbTxNQ/txBqZuh1Ang=;
	h=To:Subject:From:Message-Id:Date; b=CcspTODp/WPPVygC6As5BpVkar5bb5FEvnwfWmucCTL/vlrQnXLuCtOT2NyzXQvr7tuobzsuEyadWzp9KzbWUVxu63lFhaLDDWSabxcTaCTXJSbj3XEzftYvNJh+AnQiNEzrtt7gjItwxa2jrwQRan4q89oTKZq6uAlh5s45GZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRqgXVyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRqgXVyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECABDC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790154034;
	bh=uvZQfCnLpjuSxDgbVgpeY+k4HEbTxNQ/txBqZuh1Ang=;
	h=To:Subject:From:Date:From;
	b=fRqgXVyioK9jAm9lyvdgpflgoiVu3UH395dorUqEFaWOpZLXGm6AtE0w3VzHggKEc
	 f12wQyRbOQj3tg+Bl0OWCiiEXGDLCSgXNcCOVlziSxkHlx147ejMNJcsFJO/319V/v
	 P5l0ky8gSFQZiG6wh1Ww0ffFXQRUd9BSDM0CAPWMbmGY3krXftfdU8BxYWrlhGOxn+
	 7FcTcHbPnWTcvyGCmntHzeodzhIzTnpyzrJnaqWJT9oM4NwZFKjW7jRFDgTM+5zfJo
	 LdPrkXJyAlpipAcswBqbhP5lQdF8ffCxiS5CjqhUXg2hKRM4X+YaJs7CsumUX9F1B7
	 twZCJkssj51YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCA4C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015403376.30936.15650470619306028988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0539b8504c43adb9af10d1587a239f3b51cec700e69b94e6f610f124972fa47a
Date: Wed, 23 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790154033
