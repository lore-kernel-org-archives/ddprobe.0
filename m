Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281982DB781
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778047054; cv=none; b=b219RpHA7AJw/Mt5wzLG7xgIqJRWZ2ce9OL/GEhmL88wigshcwGPWZjp5oIu7R3hPqg3ae6J2v6Zg6WhKfEkDTbjwaUV63HJ4W0qeoV+aD2P2dBIOMOXuCDRJB1SeIX+laP9+MWZGVqFsA/Tb/bVWADpNDvIcOzHOcSZU0VErA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778047054; c=relaxed/simple;
	bh=j49QFIyq0/jiQyZztIReaqAoufhL8c4H7IMvm4aJH/U=;
	h=To:Subject:From:Message-Id:Date; b=chw4mv1/mnKWdOVlHFbu/f66wBKVzl/kex2O1MMHSlVmMpCZ+pcYdw378fAN7r4KQvp5oC1mo94tNDP7N3Z0MIyaABj/UfMtRAjWt3QEbhAWGe09GWep0fBmuixxgad5il/deirJ+XWjZeN5WnwU6aFXamJDKMVB0yv+sN33Fo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGJdPJuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGJdPJuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6024C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778047053;
	bh=j49QFIyq0/jiQyZztIReaqAoufhL8c4H7IMvm4aJH/U=;
	h=To:Subject:From:Date:From;
	b=EGJdPJuBwdDwk12nCbIBk2AMgAeG0gIn8p9b6k2KpFGgb9KMYmeWTXgiSUToirXGc
	 cmmMqGP6qaliI7YiJYkSUsFk7sThMj08S2KfiyBeMHNP4OmeegU4KGOpBnsGU+cCFS
	 423A9SkFCXR2d/bwF0kd6SvYaSYZ0VkMw9SjGiU+SjhKM6Gp7dSUAO+fWBlefTBDRy
	 HoNxPdEYIgTAw/t/33WEeelEyfrJGlNl0HZyuFjzQNm56cEz78bNsZjPfXyswnSj7B
	 UQWxOC2t6cztNKhDRa9hm7HWmaAGQmTvbeqpXySJRieMCrFSBMFtUoEswTLpc9K5Hl
	 cjIwl3//aYiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F82CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804705368.9408.6497432519165731584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73579c488f9d21d4a4661d1b38c78480b5f8779739b8e71376c51d37cc99eaed
Date: Wed, 06 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778047053
