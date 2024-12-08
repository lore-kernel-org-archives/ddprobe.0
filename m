Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479721DA23
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733645754; cv=none; b=CAWzBoj9iKYP00jZhj2PgQbdlgpKMZzcUQMWNm/2YLPcShqJo13ir9IKr4hSupmNEjxHv4kMh0VeckHf2uD5P4Y8Udk7iFM4erLe+EV0bJTf3JtlHvkIszjaTqS8a5I7rJKJ5yD0s5Abthy6xmRVkoeBq7z/MxjX0KGXvLs3RfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733645754; c=relaxed/simple;
	bh=I+IKtmvn6Og0QWLsCbUXLLqQ0pYF9DdPV5TbuXVTd0g=;
	h=To:Subject:From:Message-Id:Date; b=n5M0RsJnqIxersgS+NDB4XnO786k+qA/fqBtxqqLkL6gq7iE9Js4j4ngdelPRgmpoX0U7oDGk7zAPgO4eClY5OWTwnP1GfaudpVyXifI+mVI084QjJEqVzAzwGPG6Qwbrr45prEzJ/ts1KTsLug/pih8pTdk34mWdv1wgW3fYM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJTu7VwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJTu7VwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63A6C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733645753;
	bh=I+IKtmvn6Og0QWLsCbUXLLqQ0pYF9DdPV5TbuXVTd0g=;
	h=To:Subject:From:Date:From;
	b=FJTu7VwDhNfF0+nLU4aV9zdFH91uZhTz1EnAYD1s5zULilCEJj0BEohlbOGXxx8a0
	 bLSbRGi0zeCHxSkgxy/RZre8JnS042UNyIpKa5fFdpdv852KAhplu4ANGm+17nuqYz
	 W7yx+Vdjvkhi0WRNVSeTnqo4Nj5+zlpRR6qBcam15s7OsmWMOFtcTgkx2ZV2/6S6LT
	 KWMaZnQHWUYm/cYBx1rxEDW3DoJn6YGJgtv6//0sKo2sfD9EY08LStQDVvwlIFMoiB
	 ET7B3WPUNConhKPZhFEYV36mPUhWEx6XmFLll6CSn4YexW3RpFieM/oLqaVcmRqAek
	 /obOlDGaAanqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A88FE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364575359.7568.4611116603577239714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac4e8c7681bcdc02d774b08ed5844c08c8ceca8ad17ca513a261c968ac8aaab
Date: Sun, 08 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733645753
