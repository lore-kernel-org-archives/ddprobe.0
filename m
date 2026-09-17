Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C5E3A7D91
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789686636; cv=none; b=eBqUCNhKOaliQkk7qUiQH30baZSBRRaaMQbGsBulOIToDtNKJxh11gkLSOSUSuVUyJqjJPYhZIFQHPWVltaKvad+N/7MaNvRDQwRKwxFAhdepPsY9ytpqTse8yW0LdWanAAum0hI5rgjiTocJkLfVUQaMhb0ppYT+HfMA6mQz4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789686636; c=relaxed/simple;
	bh=QMkyvQibeSj2e8/O+ypUypyMj6K7WSUU43P95iYBtZk=;
	h=To:Subject:From:Message-Id:Date; b=bx8scGfMFboIjGXnrFbagu8GI+PNfwxmCWMLOtZ3WNwE6+OT2jrYhbtjEqRGL9b3TpjMMOyPozXz49+Kqy3DknaJzXXQmy8Bxd2zV/vKnCyJFjzWd+xBEpXbNczeIERUlGU3rRS5ltuSfgcNcVfvabqbmhCggbYKaECUdUtIbbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4uYdrn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4uYdrn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A47C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789686633;
	bh=QMkyvQibeSj2e8/O+ypUypyMj6K7WSUU43P95iYBtZk=;
	h=To:Subject:From:Date:From;
	b=f4uYdrn3RTZnKTc6zjX4UTwTDuIeFevQtXVcRpJVPUQFSOHy0fuzURBHm+LHQRvJr
	 Jkcbv6cYshhfWcjj+thBUgwvle4WLmXoUJWUCe5RqevzDLxbvRF8fcAFmaBadV5RBG
	 1vB6ucghxhhp6sut/HHofjs+ByfZjC9OtKMufzAEXcAN/o2jmSI4QW/VRyIGR9MR0M
	 CkKbsZSTOQMCX9zD9Ac1Awnbk5ZtZ0n+jr98KB5/tTbaIizrkQ2XRdsaV8RUOHiCo/
	 qf5fzvFn/pxldqaRhrnYwoUTmy6/8RniugMeV9K5HsLyH17n5ucfHHCrjZWVhmNVl/
	 z4H0w5jE3e8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41CDC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968663371.4331.7472388004794229608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f159ed3d5f4b117574de19db884a587eb28a13da0906cee78b0e7e03e1e25d
Date: Thu, 17 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789686633
