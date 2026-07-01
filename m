Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E176327BFA
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782905914; cv=none; b=Ja7B/j3R2o3ra2ECicXTPYPgBWFHBekqlQ9UZbGj9z1iqlwBxC8AOGJFRvUipdDJw5X/j87r4QmZwpzTe5kCdhLDRcn36FNXix3SeHvJzDdRDhiYWzXK3bRovr+oHxzBLsDHLw7XKBlelhVqoJ3K6WwilE958ocb/d8bBOffrT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782905914; c=relaxed/simple;
	bh=poHIQgTlLZRSzIqEUzhrlT/F1CA3B1oJvWWc/jk2OOc=;
	h=To:Subject:From:Message-Id:Date; b=BAOsBlX3gq0UmkUhpj+sGAc2zMxomHtOq5+w8HReVz8ibH/9BE8ZPQ2l2moZdcsql02PTvn6pYfCdqv/nL6iHGLghi8horQibEKdzKBoWyBtLPMezLQTH+w9TZ979mYc7K+9aZ4txLabLNuW42jEgjcK22oy/4hhqfDPmyH8+Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS1uhzOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS1uhzOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18F6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782905913;
	bh=poHIQgTlLZRSzIqEUzhrlT/F1CA3B1oJvWWc/jk2OOc=;
	h=To:Subject:From:Date:From;
	b=pS1uhzOBCDeZT1FV9Hah950IObb9lqh3ipE+3NtAPf8LZT6JzC0NuJUpOZNLCOH4r
	 muFXoDTHfZgZhV6Qg+loyCvRaNX38lb+DnGe1d3FZi3Zom7Fl9wARp3roz4G7qGm2i
	 wZmJEmwlSQ87ouDfdUUZYG1LsXFilSAztWTRQnmK98tT02iVuV98PWkmKkk0x0Dlyb
	 o3ollNfAV6Uhr7+ImbjO6fPOpq37dmNEEDipRAGAvMBDzIcwYjDZfM4Od+LLb20Y3e
	 IcoPaDdd0hUYp/JzitoxP0pQEahmbCR7PD7IjUyOBRI1Thz3swnUyLd3YPoyBp0gpW
	 mMRA8aj/SEgvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AFAC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290591368.11776.4855875001651937612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d94bd842e468aee03886cd7170b902cb99724dc2748d43da0410c529b4c5946
Date: Wed, 01 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782905913
