Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3357E15B546
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743873594; cv=none; b=q101ww5l15gH9ZlrBLM0TjcmCh0MWF5iHboVRDjKKJAWHASbcdRkAEJA/SvNkj6Ziq7lAxn/T5ufW3XgaN2bIoWO4959fQFzUAZQ5YQlxiAZDhUJt/K+U2oPsLP+y1oe0IB8H5VNtMh909E+qdqpE4qvBOIeKMhIQLEOXwbaN30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743873594; c=relaxed/simple;
	bh=L7XpctDpHL04I01fnVAvzPG64dC+r+NMZSTOquMoc/E=;
	h=To:Subject:From:Message-Id:Date; b=H5GVlv/W1107GiVu4VEYNf7RLKDnzFZ58OlD24c4CKAC5Qlq8r3Zi4LfgBPZSGbKiDTng/swVFIN5REEstqJEGE2SukHrVgbfFWG/rm9YZm3wghxC8Dk7FJoPpodH4gb8cqNH4fFwptOuOPPGKriM8Uu8r/G0pPVH3U+C90vls0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5tu3tKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5tu3tKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD806C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743873593;
	bh=L7XpctDpHL04I01fnVAvzPG64dC+r+NMZSTOquMoc/E=;
	h=To:Subject:From:Date:From;
	b=L5tu3tKrlfvfLyE3vm7g0pjHWx4bgUwLLJZqp7wugMKGHvq+jHFsG7SYpyXbjrJOj
	 Vg/IbMzwTW9qniIpyNmX8Mwj9JkoRWi7/9vUL0nrSSNM8m40ooWo61NYu/gTDbbOpV
	 9YsS0ow98PD4n3lClvCAOZe5mkRAd3lqauCkab2V6tlO/DugjFRf0IhGxbVuqHFGWl
	 GpEjcTq3AYgLcU3NG0lJDln+s0N6WVsWRe6UvA76bUBHsu20wsXXkEq2al+JlDXglc
	 IfGnjLKR85Xhnde4kbKzGFMGms5P/1ZZNuZQt8QcCyfJDAEPqjyq05gn8TLDubJZZ7
	 upq4x9cbCQLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F6C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387359358.10481.15674790547985990882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be910b3c243339e143390fe1c0ad9d8bf5689a99037e415ada8f2c269f59c626
Date: Sat, 05 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743873593
