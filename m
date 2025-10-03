Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210A42264CF
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759524594; cv=none; b=HOp6J9Gk5zLdGW9myk3EW66eRxtdfhcDESuCa6oICdZ44ksL2qTFmKs2Zu70LAP3Z8+uF1tZ/DMMioj2or2PkMLBfZokUhtt+1NBWxTPAi4ioR3C6zpEKoqcgxCAppfmtLm7ukWulKVumsfPjkgUdFZzUgt22OfcdzWt0k1TzHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759524594; c=relaxed/simple;
	bh=+oOkni8ASL7eE4PTC39oz43AOshMc8qeHHSpGh6oDsI=;
	h=To:Subject:From:Message-Id:Date; b=a0XdNvfOt1W3sAoUSvsjRyIliz5Q0gnmujNNCXzO4Vb10WMi75U0CGF+hStii77/tK9tPVltfDql4sNNAKEL0xzGJyZKtkupUoaUTVsRjgwLU/UGjPgyDI7ztILLgm7IjF2MC0BnC6Vd6a3HZfPGa1PU9rTk17DOUfs9TjuFr0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIaOhBIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIaOhBIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3940C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759524593;
	bh=+oOkni8ASL7eE4PTC39oz43AOshMc8qeHHSpGh6oDsI=;
	h=To:Subject:From:Date:From;
	b=QIaOhBIUBATkI3FbZpt78HJ64TLUA1/4k+BwOVUrK6ZzjLN5cWTxJoW5fzGkCag94
	 XYrmHq3IWv37BSv9jeD8jptCBFIXe2JhlgCKBSSXGfYGks2SWelVNL/GA5ZdRwgpJR
	 +ASDDYgLyoK0VmeQ7bsX7XsHEwxEbmCo4CSKpPE3hhdNNzorMV1M4OGZlHZhbQ8JPW
	 xZjLM0ZmY2t97zGX/ZAv1FjBVPVxAhLeQg4rErWD/N5fLx/ZVA5kbHqtUIlJTuyx75
	 1nrowxYJvtsSg7K1zbF3EBedkFODxK1bO++mjtuQGH6SBg4vI0JAEhxQK0jqZi2F4u
	 iNyzHV/fO1P0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91990CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952459358.10531.8820459671786794965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc68a5a7782c1484ee5a875747cc7c3ef03808d929fefe176e1980cb2ad7321d
Date: Fri, 03 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759524593
