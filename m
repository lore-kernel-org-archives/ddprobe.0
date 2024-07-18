Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E675804
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721339154; cv=none; b=o+B52ow7+HyWKhazggdRLNEdH1H5o/Hy8RfDvBb4RkiGH+lN+ukMip2r8EEv9rv/grXVLEKnJ6HjXybvrPubujkx5xZo6/biXUKVF1bYUOmYqqg8fPUxhrmgMv3PqLIbeNfKvw9l/RADBs+f6IlskIuPGqGzL3GU2ZKS0CRn1ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721339154; c=relaxed/simple;
	bh=+NTBP6sXvaTR7wYQAVNs0snsfiRLn1G2Jqa+wFu7gFs=;
	h=To:Subject:From:Message-Id:Date; b=dgn4hZVdv91MxSzdA/58FS2bq8iiYS9aHbpsv4fkYq5fFlFn5o9IHiwokwXdo2a2zKljvbXLOMlyHPMOQQzYeBb3cNcnF5Dx9s4IZ0yvjRbwOpg3VLMw17QtC4oTg/nQ+SUwk0JK7TBloT2DjJ+Kt7cBEls4WXBORZCMNaXzXPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5YdAtn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5YdAtn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE643C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721339153;
	bh=+NTBP6sXvaTR7wYQAVNs0snsfiRLn1G2Jqa+wFu7gFs=;
	h=To:Subject:From:Date:From;
	b=C5YdAtn0tEOGEv1Ht4yJoWNTiFeG74Cmha3veW1ArGd3Se4g3HaSqmONeQKj9Z9+6
	 qaMI5crVqfrx4DU8vXjMXLrBAw94cIeUcJwHt3TdW86qiz7IZyLY3rliuYvMdelFm3
	 T5XvRlc/WOjFY8ItndkiTR6woUnKIcCadGTOB8O/c8apFb7xE4qvaLWMrQg4J9vX4S
	 iNgdTR1tzFr00C+Tde3xAsRmtFTROtc8Ws2mRYsk0pKUlPLeE698RBPdZNNpvyqXpF
	 R2aUvPVjMFyNYKZPhoWgKZdTrEiZyITLreRquYa1C9vBaynUMxaB+ONICLHBfp9Ugv
	 M/RRKsD6aTwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B47BC3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133915362.27963.15092570143799967641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bc82442604c65b56f70b53d96eb4fbdf80898d2aa14e7cfc0b1f6facde3f01
Date: Thu, 18 Jul 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721339153
