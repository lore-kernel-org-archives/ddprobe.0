Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5352DF6F6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756119594; cv=none; b=SbWA7l5idWG6k4KdkDusKKBK6hze8IGx6CfWhfCJv4VAmuPVUzhCCeTc0wPYwD1dB18UybI+3zUycRVqCycF8tmyl+fRihNcW/tYqfQfkQRjqrVYcQ+mVJP09jvsKFvmAzaz0WPnbZlbZ08Zojdmu2tga2iXT1aMeWSrMBbAsww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756119594; c=relaxed/simple;
	bh=dtWPCDnFskZOWY35EVrWUkjHZOpH//afdeKJCAwWJ9E=;
	h=To:Subject:From:Message-Id:Date; b=CUjlF8e7CY+FFKGVcxgtS7G8xKGP9AQ/1VFAxcgql4DPzJTwX2exXx3kpyuZuI4w+GYsYzK5H4i0e93gHJMYiUXKxAqHGEDLINPGqzh/eavvw5P0Aw1OOaacKH02GhOQiajwNMraZsNievq26aK7KIi4HANGfXDYEugurEnk12o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeY2VuC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeY2VuC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAC4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756119593;
	bh=dtWPCDnFskZOWY35EVrWUkjHZOpH//afdeKJCAwWJ9E=;
	h=To:Subject:From:Date:From;
	b=ZeY2VuC+/Mjr9rTZdRbByHoL+OnjGs0eDtJzxAlWPJp/Xl+69flr+YGoqmXrdYLsI
	 ANIQXCw8ZwbIT4G4Cik8yViGHFdctECFTlh/Nkr62TNOQkvoUtGWDXxE2VUQPAMdwu
	 QVEo/tJpoJpV+KlzeS1t5+yGqAa/dZUcdz26UMlyW345NyAWCT3yJASvWAYxMa/ScV
	 9sV306OqRq7P9uvV0PDKJ3Awm3EgbZDE8HI/gZoQPuwk7jWmlbpwUhBSpl13hWItFM
	 p/hOpicMqYn2ihXu9u0LXgvh02ZDHh80aWwY5tbUaudtlTNqKY7qkIIP1hdmtqEyqk
	 Rc8OELNmmQ+5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE53CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611959357.29436.8405542045928660033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a75e720959ee9780b8e8522ba29dbc7f6c711419ce6fd11315165efc22a2283
Date: Mon, 25 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756119593
