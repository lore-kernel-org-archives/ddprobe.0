Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764632AAD6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777894; cv=none; b=i5uSEpMj7pgWKFGRt6ENadKQiqX25U6eX/AO4bvtfEq6PwqPpM/szhPOCVVV/9ofo3HgCw8liANR9T2i0PoETkzjKoUBnbGTCSAA6e2MvO1Vzs13ejmmMOeaNInP+iw1cjxHBbqDExw9SUGzzMZj7tdiR3tBAKKOsm04Z3/J4zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777894; c=relaxed/simple;
	bh=taYmQ+PcHDjFrPYn7e8bqnoPF3QbDVzf+kTq9oNhdE4=;
	h=To:Subject:From:Message-Id:Date; b=Knrmnm9JJxJflQqgWaT8Kfa/nq6t9SMdTzLN+nZyC1F7/CoUUR2w977dQO8AGzbhfzvC+NDuVXBmL8QY+ld1cZl9qAcj7mHVb198dczV2SC7eOE36llfl5yATYbSSryhL0o1NPo3OW2f4XvVRlFVavzqvDDYeSBX/ewQWvJYz7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWyH5ZuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWyH5ZuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773777893;
	bh=taYmQ+PcHDjFrPYn7e8bqnoPF3QbDVzf+kTq9oNhdE4=;
	h=To:Subject:From:Date:From;
	b=JWyH5ZuGrtr/94lucyPXrfXcM0Jpz3fJKmKA0s9mhN0jg0mAjZ045sgihCgn7z4MY
	 6O1fy7ePUE50uQ4/4aQbF01mnqzhrP6tAO0XsFBdb7wJMh2/2hjlTmNCKaQ+5WrNBD
	 INujFyqze4eEvvk4hAcepxkmpPX06cw1a6QnUaPKLI93gQOfSKVxWADeFWjHAnucQW
	 O+IECXYQ+KveL6ycrBsKWowotq2AnpfrZvvtGlaQuwto2fYpXPFLJZErcA8qS2zUa1
	 fegrxGn6ZFnXxu4a+NzRyAVRoLEmHlxXhKsiEqzRqGPW0MeFUSHWv8x//SzM6sv7gq
	 ucbTV1eywSZAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235FFEDA1A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377789357.32242.6173993692172236216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e94cccd6542ef012ff6a1b5d5f3096a1a192cdd89ab10bea5fb6bd11a84944
Date: Tue, 17 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773777893
