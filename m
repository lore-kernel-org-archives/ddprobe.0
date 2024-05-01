Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535BD130A4E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714597343; cv=none; b=jUXANFO1CoQ4/wHe79s9H9o5qpoU99pyT5MMJU3nKzAMxV6nGbQSRgIGAOWj0TFh3x13XcPjy23fCK0m7jzCp+Akb4NPkIshdCvCxlyPPLcr+c7jJaKfUfuCNul1414RXuD1qvHT+Po+wQJ6OPv1h3rUjzJ6slaXM8wnVOBvNEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714597343; c=relaxed/simple;
	bh=7JAeY4OO/WAAP5ZQXuhTdUz4YNYxl7d7kGUSMzG8znw=;
	h=To:Subject:From:Message-Id:Date; b=oY4Iw+TX2IkirWaojXqoVpsqUTWmcI+rTc8cWBqizMwXV2+kge53Bix2CLJ7aZ162kEJkon6VGBMfK/Y4TwoAKvsfHOHJlxp9m6HutBUFcEP4P2hZIeqhrbWW4iAVIQL1zlpwq2ZdMEpdPNS5/81JPxZqf8VrKCKGGG+Yb8Ta3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy7USbrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy7USbrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2E7C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714597342;
	bh=7JAeY4OO/WAAP5ZQXuhTdUz4YNYxl7d7kGUSMzG8znw=;
	h=To:Subject:From:Date:From;
	b=sy7USbrxgcRVuNLbA1MB57pi86A2WYV3fuw3U/VHAHarwVEHbbk8haiWUzYmz6dsh
	 uJ3VJAXkPUgdN3NAaYCmmlLJgI31L4Yg9GDub7piRqo02Us/mp7TvtbBk3bvVnzbnb
	 35SFfWC3iOgdwzVv1iJqHSFYGtkkjCzJMQ3RAgAfKSu0joSINBlmAQ9wsFD/Q/VZID
	 fThDfiNrDaeDofaua8JGbQIHBqSnydwt8kNgulR2QxvTU0JITz3zMGiF6PexvQmwCA
	 c7ineXAHiJD5pQcJabeh7Lqqb+pUwBoDg5vE7XKFMEXF7e0ewAEtBOBYU6PbS/hUxW
	 0/h8rPF48eUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A79C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459734280.27167.4005313212124863061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40a0790a66753112b2b0505116db3108ea46478089d998f72146314cfd45b9a
Date: Wed, 01 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714597342
