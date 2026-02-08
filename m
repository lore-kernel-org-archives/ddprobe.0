Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DC3163
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770511434; cv=none; b=Lve2SVdBpdui3i1T6/IyAy+YGNYE1M5r46Hm+d7zOouhrs+GRjkhHIH37XcqVRlBfQkZRqFx7mTqYzHEMfuxG0JIpli0aJmGad6AX7WVKracqBd1LSW/QoqGqJ1dgSFT8JeCKh8j1tsL/WNKqJVxb9ntA049jZnPXNPQPiF8nts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770511434; c=relaxed/simple;
	bh=OjKqiSxyLnULHb/C6i8h/vRIux3EBZ6xrV0oNqL4MTA=;
	h=To:Subject:From:Message-Id:Date; b=tUWfdUlBpUe/LVrabtonKiQkepqTX9N4rk9Fb14uZGfL2XlDtJlbHYsGXjyoagqc5okGnqCIIiRGRxKMr9ywfJ7+p3YAo+kMxhHFhDyJ5YGSPRGfEPgyaCg1SSZFrREWWGT9dYGf6vg/eFrgxXeeuM77CegcEZegu5smXw+1cIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diC73ara; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diC73ara"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B868BC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770511433;
	bh=OjKqiSxyLnULHb/C6i8h/vRIux3EBZ6xrV0oNqL4MTA=;
	h=To:Subject:From:Date:From;
	b=diC73araPgKhOz2IChKmNUGtapwWhhC/rEeClT3fGDXoiFa54chbRQOb0mf3sbpSZ
	 iVywylzYaglvF4/I0gz1LcoX83LLw+qCo2y0RKnMmJRsmIoa5W+ZkCF/Jy3u4U5BCh
	 r/RhvwLOSDmvoeMqhBw6qkfLR1ABeAN7ipMEanFSE4g/Bl9D7ioyfUrpJNO4+wymiV
	 9xDL3tMOrDa3QPl05eNdu4sa72qcFv+tRyG+wSTd4jMlJYUpOzG7uYTvFdV9t3LkGA
	 NDzAGfKiBSt0mFfwgmZGnlmK0v5l6ooOc9jKn68Z3dUYaOzOd+NDih/JjGbyX9zoAr
	 OzmT0MFinh00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0908EE0AF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051143359.8071.14183353307542707237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a3863fa88b5ecc381d1fffca3ff599cdb8d7843ef41274e5afbe4c93702709
Date: Sun, 08 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770511433
