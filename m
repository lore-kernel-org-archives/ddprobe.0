Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E936574BE1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774589694; cv=none; b=sZsF1EwgXB/sw15FiWrZGI41WzAjALJROwo2gEc/KTAESAHA3dA+aZm+1fvnjn88tURPIWkqAkkHFlfsqBf8F1F+Ind05zGeF9B7E94cufAnjHKvzsWnWYG8lt0xL164WYzj7uAoIvjFocgv837woXm6Esm4GWCNNgJYQnXc3EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774589694; c=relaxed/simple;
	bh=5ERQxK3jkiiBk+VcNi/6pE+6AxHpWqIzM/N/vMVVQk8=;
	h=To:Subject:From:Message-Id:Date; b=Rez3wlKYsvNEeexTBwP/7DgJwNSKX7dIwLJnlik7jl5LcXNa4vMkM+dpppQOTmXKoloVHrkBMSWSKBj0rIDoxsgSyprZRdX4YpAre0+LiwCEwKIJtD9GsC9Y+xRZrIWch4qWQjKkLtWI8bVkR+yMuGWNa7IOYSEogLK9hezniq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUIl656A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUIl656A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774589693;
	bh=5ERQxK3jkiiBk+VcNi/6pE+6AxHpWqIzM/N/vMVVQk8=;
	h=To:Subject:From:Date:From;
	b=bUIl656AvtKXqWWi3XZw86eNIoEOj0Ko5DixxkkjT/igMUS/2JNjAG3fA0R6tqv+t
	 2D1wkL5ZtsOM/NeY782W4J9PtVnig4trVm+PWJrKG2zmPfguOg87zzOZrXmEiWYEAz
	 /RCJtwECcw3bx60Jrgkz/qV+BFLJ4k77C5Ni85+BHsWSZEvt6YDAoiQyCTlie1/lgV
	 n7Oy8WsSfW0omzLQvVhqFBrge63p9soAKl/L1Gt4rBRYgdHT+EtmBWp+61FGbd2txV
	 Mtgdl5XmwHwWGVpyxzdBhNgDJcv6d5+Y4gaGoxWhOenDdKUNtd6ezn3edz1AILiwST
	 SSrVreZkaP2Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE110BA426
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458969359.16530.18110854222961623762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab6766f6d8b37506510763b33789936b1a60db84257a8fbdfe74ce5ea469678
Date: Fri, 27 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774589693
