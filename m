Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBA624678E
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751908194; cv=none; b=C4izi31XryXBF5fOC8B4YGBd2RaZVK7Kx3tyim3srEV6p5AwBKGqjAj0tszrY8iV+iN/rwQwNT2Cwj0qE2CoEAwW4UljiO6Yp8SOcB9xo8/qZcTpdAi1fGuC8Dlq0yEoRmmQkwQEEbVO1Col+W+MtER7biEHvzhRguPlfWBYLCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751908194; c=relaxed/simple;
	bh=Y7bVShoiOhExeyY+5cG69FJ3SBOdm3IJ0y8u4DemvRE=;
	h=To:Subject:From:Message-Id:Date; b=KIhpJ/J8oMWCjRt6TWAQN0KtI7aJcZLxWHB8E45FTNTRgqFOBJ0MiokMEgJXvIVQJDGTfQttsd14IZSn917R6Ql3+vLQZ/wrc9Wne3N1BaatjQ2E5lvxQvV77c4GnS3gTjZBkVcNgXlVXH7F+uQRzBdIudQ4ebUh95F25orWGuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+quIm67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+quIm67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43ACC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751908193;
	bh=Y7bVShoiOhExeyY+5cG69FJ3SBOdm3IJ0y8u4DemvRE=;
	h=To:Subject:From:Date:From;
	b=C+quIm67b93RCNIv37Jc3qEOFZebiL8JZcV8tZkPhdqt6C4R8ETY23PHyyuC0C4pq
	 AnVWLyYrPlCVOHOoqClYqMLl0rI7HUXdVuZ+PD+2IWh1uNOzJ/t6JT4rqnL6JkCo/e
	 b/CBlZwyFS6Y+p86u14vZ+g+urjwP1/uTRd8WG8RQSn8cDzhS3Fi21Aj+Il+g1iX1X
	 iUX0qPDaTI566AEkHZfQ+FfUZfcxiq9zTO8KgGyp6DA+JBj1vnwU0nzdnUgdjd097J
	 1Lt77F16/q5FJ0GbPBp6o2o6K68JxnoP3xzVNc4G4Ol/Y6TOJps5ySCQyq7ZcTsduo
	 GUXbuDUiIqKMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2512C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190819365.30907.13724078524536390040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecaeaaf0ec6009599086da667d5b346436b772b2f744852e69e7fd314b67f37
Date: Mon, 07 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751908193
