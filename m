Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348AA2F5E
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760843994; cv=none; b=eCspNcXf4xz6qXcNcszrVFK5X2+3v7a27jSj0UOyxHdZTZ4Px5pr7nQwcvW+H/Bd6GawRzbRRZA5e5dVypvhtve1zucxZ3woHTeA9PY0m/fQx6DRGzvIvq+egJ5jTkEZ/P8LEtWqt1nTXJo9u3QjhCrfubdIbpmMZnXgSY027OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760843994; c=relaxed/simple;
	bh=UHW9IT2japKNSq+y3HNFdXXjgX+uZdAd0LBWd1LQdII=;
	h=To:Subject:From:Message-Id:Date; b=b5DLmzRfZ03WhporXj9d4w5sL37jQLQhZGOFEddkEIYNFQuPCRGOE3palLKLQbcO6Yzy31zJejEX+6ee3M5hfdy92bT0q3rPCgfV9m6B2q0Euov2AtWjDrmbGve21VSDIgCjvPz4Q4avetPHDqOkpPNaoEMjA3m42RCV/ZdgzPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWlxgUTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWlxgUTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A852FC4CEF9
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760843993;
	bh=UHW9IT2japKNSq+y3HNFdXXjgX+uZdAd0LBWd1LQdII=;
	h=To:Subject:From:Date:From;
	b=NWlxgUTuIvG/zubJGoRfi/8NHdGqXI2lbZX1XZzprOdstT56R/psZHBfdo69gJasC
	 VwqDweWMq0xQCgsh5M/O7IM1LuhTA1MLGQEhgRhgO280tjGQMltWBQcaL3E1B8qKgt
	 Zv1JK/xMEk0Ri2IbYFii5o6em1jZ4WJmIVJVR4fxxMjaatVtmVH42lQpmNqKzMqnna
	 HqcLqJc+2Gbcxu443xj97lkLBlEiCMBUcBufQkVTLUjkvF+SBhswNSj7jwGs+i1IRD
	 FDdPRmv8B5DQNuAyJ/JqS7OgkGGNsGYFToWMVduDqsqZ6/yTNHRrfnUUqJL906fLze
	 Z6kK7vPXBkiiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B95CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084399357.29498.14458887932922335204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806c28df3458f8923a0d44f4810bd652ed20d2d847ac5c97dfb6cd8781a184ad
Date: Sun, 19 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760843993
