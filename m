Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3654AF155
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789721434; cv=none; b=Gon1Z4771Ml4bdj/uSN87AuuWQhOuFgQuThpORCcbIzTFqj6T+v+TOD8JmBRvdKm/yf1Sh3nleM1zlbep3f9boPN7bm7ZysbPTmxBMWHkW9wGHxZYNXnSxoQVV0FqJegjTOjhfQdKxk5JoiXyOh1BYlBBMJmn7BVQFmNz3nNanI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789721434; c=relaxed/simple;
	bh=Z5OS9K4JG9nFKDAr0hu4XQC7v43IKShMN/J5s+6cdlI=;
	h=To:Subject:From:Message-Id:Date; b=JnKq0S9+2DTWOYwv50h+7frjyGbmKXyPbLELhIzghM/YK/qBp/K5+XlOck0gq10hltCTuPd4zAWkl21BN2kJX3yGh4qUhkpgBobhKn2MfrGyIuFvblgAyeRjDIqJc4gLbmEO7kaE+LZDLpQn1g+eyZN3+EXKo9gNBjVpt6ChVbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BByCCZXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BByCCZXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0770C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789721433;
	bh=Z5OS9K4JG9nFKDAr0hu4XQC7v43IKShMN/J5s+6cdlI=;
	h=To:Subject:From:Date:From;
	b=BByCCZXOzLrER+A80ei/Phwq5S7oboIR1AK2YFfYIrnrNbc+eCYEGQq8UB6dZ7HOY
	 uU2Tvk35oj5U/32Br6G6KgM9V9I/b76x25jmic9ClLELDdmjM90t0k7gAMPPTBpHrM
	 wnqYhpo9hhLp0GssujkbttyIoPKFlYfoSkWnXC2JeQ6WOAV2DvvKagAa+d1IEmfgE6
	 gzhLED8xUumb8KNpudTqiLRTH/dc5QP4gW9wcx2MJAMGM0QjxCJDB4a6R6WSUUDtDn
	 bhe46RvEy5e7QFC7/dU7qkh70I+O4dmB9x8mHKUNNGNv/gkGChHsr9316cInpxa6jz
	 CWdHA5Jzhidog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD8C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972143369.10235.15174025318623736265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c125447dfa3ef77c78373c51a1f987cef3061317f11a215e81a6aeb2a91f8339
Date: Fri, 18 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789721433
