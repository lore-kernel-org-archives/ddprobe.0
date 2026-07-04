Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1A433E348
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783130914; cv=none; b=n4lmgRSHsww1ZKem6wKuNzPeb3qV5meZHJSg5C6IMuOMkWdSAGCts+qJSwF50VQsf3w/uRrDWJznY2QOgTvVkm/fSS5H5NbWYrUPB4+QQ70BSHs1+ZcvqPQz2Wjjg5ejHZgOOPQLXUofLT6xgADUouZeCSfsS859jUzSmlqyTQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783130914; c=relaxed/simple;
	bh=lLSFJmkSBZpam4HEgZhXB7xWhjjoPX4Fip3XWi/i0iU=;
	h=To:Subject:From:Message-Id:Date; b=kR3LeScApPdT8D1EfKaA9Qd1+u9xW/UqnOBnq3uoyPoNteToqFGrEaeJ7KZQMu9/nMgGYHQ6vvb//IKY1YoEHV+1clWraURBOS+PwjOycdxcOvj6EFSkfzBER5l9b/cdGfZhOGdXc1OWrFabAz11+H+9fIRV2z983mGmX1ZGgu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1LYKvE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1LYKvE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD67C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783130913;
	bh=lLSFJmkSBZpam4HEgZhXB7xWhjjoPX4Fip3XWi/i0iU=;
	h=To:Subject:From:Date:From;
	b=U1LYKvE4CiwRLGSntKnmI1Gs57TzGKVURQXGUn/qAvV4Rn/CmTP51sq6N0ehGfjox
	 z6ALfYOqTRLjKXOP043qKbSC8kglmhYrh4s3NtIyB0Yeju5DV1QTEOv/P9sCUmyUhc
	 AkMrx8zq0IIHp4GX2lwJoLV8/BM58ikRjymqVTV8D0U0Vrnfij99WCBVoYVdfVfTBe
	 B79yjmXV25P93Pqcf1SS0WJOjRBbB3wmVxzR20NXuxTYBINcSa1AlfsdemKOhOKB39
	 Y/WbaDQsUzBcPvtijbhGJIopdy7yGNJ1BLqPzQ/JMJYcoUjEZ/YqEnJp/qA6/Yzl6j
	 MClgq289KlYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA37C43602
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313091368.24675.17122987521864175303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b29d7d28d6402895298a63731bdc08d76078932382f6e2b4db4aced6f4afa46
Date: Sat, 04 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783130913
