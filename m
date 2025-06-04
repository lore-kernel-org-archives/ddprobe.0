Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE219F101
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749028794; cv=none; b=NFQYKh3E2Rh6FDLspSq9Vwcha/UGFOFKKOor9ejmWOjbCzreJ5l0v4f9MMwkRncjswGg3SDXAj9tHSkllpJJqy/0xkRzCC5R39SgiavLoMr+2Fs9s/HoWkFlEwh13OScC+CVvZpVPcPneV4DeHEqnzljczwM1oi1p1qLkpv6UnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749028794; c=relaxed/simple;
	bh=v/Zcic9ImxlK8zjkOhXvJQySfRqkbRz5J8IKf74DLzM=;
	h=To:Subject:From:Message-Id:Date; b=fAlP/iA440PqosTwqwntQNDQGnIcdbKqsczvjt3AQD+2FuwLZCasqMAKwJpMotVv4zBwRZgCeoRLal+oZg/UoK99/9GZ5sgTKTjZ2mg2NLLt8FVss5y5uFOd6Qf5OpBb/V6oD5Qtzi+h0Gp8tog2rlmg/p9/3u55W1Z7vQoaBWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReOniSnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReOniSnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0594C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749028793;
	bh=v/Zcic9ImxlK8zjkOhXvJQySfRqkbRz5J8IKf74DLzM=;
	h=To:Subject:From:Date:From;
	b=ReOniSnOsBvmWnx9BoY86GbWEFbQteqFc0mDjqAV3opaXpApKGl2DhngoMG6mgqEy
	 0KyPRItfQBdzv6PZorUgmD7P7KEdwBHtzdq4r1VZcwlho23VHxC4qeZrVXnuVOp1wN
	 6sQfjnAlrno6oXblXAIrODLe8o0w+09KD3V5hGUB6LL6hBfhqZCW3g8zccy58Pe6xH
	 j6zvTGsy+fmbIYoOhpJjkUV2Hb0qmY9m9/33IuZx62j5owEBFUA03rw898WBXAwnOc
	 xvUzlK/FJ0rIy83LviDEpNUmXTKkwjNYEDdyO40Ub1KVzaO4o4ghO3tFmktS3B4Pe/
	 LGuEBxZpL+pfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902879358.4530.17059786476550403932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8148e2eef591827824a09d426f1accec134546de9b5975adf093bcad6b8a602a
Date: Wed, 04 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749028793
