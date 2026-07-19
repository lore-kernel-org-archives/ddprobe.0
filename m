Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9232D3EEB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784498314; cv=none; b=Uw1ZmaEbU6v5gl+JcMC5n87+Muql7vBkrhu/boVpKk4+KO1dIj8uaY6eCeg21poefkLIyev4Brkx2yHgyRzCrB+KUNQVRr9/floN5AuwL3VIyjYOZjXO/D7OAQRQRVYjUIzy5bQMCsrjjt9Tb7qWYIGWyA3VAnYS3dSqYSnLaY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784498314; c=relaxed/simple;
	bh=CCBZbfisX63B1PvyTMVIL37xt2V0Itd95wHTnwNHPec=;
	h=To:Subject:From:Message-Id:Date; b=sUuX6VyJEnnwqzGhmqbS6LkfIIu8/oPB2kqVY8DE6SPjAleQIaCqEztn+SzozrqkaeFlF3tPPOyFlsa3FT1NwmlPrPRPemfmmDdri+sC9L4VHiSzoHTPvH39Ylz/VAKHx48PaOP8b/Sd21gGS1IoXXtpqsOL7dQZd78BOAUPSHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXAAVnWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXAAVnWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC78C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784498313;
	bh=CCBZbfisX63B1PvyTMVIL37xt2V0Itd95wHTnwNHPec=;
	h=To:Subject:From:Date:From;
	b=SXAAVnWV82I0OROZUWbURvibjD5BQrfxSnM+ru0TP2uMMpuaKp4sBmvPGApVlz+rN
	 bmosGawfQTSutoTn2+X1xV7KvMFA5aAeuVlIHgZKuh8wjn6myYSso7cx9bhbt5OPfj
	 WqQkmgT7WUualS4gQJfZkr+cHUg4y9v9bBvceuqOshHX+b3T8UgKFnkbmHYu1enmIR
	 4bv7iEbvpXKTESUF9FvEXTBj0CGyhcfpXQ55i1BjToKIo9l4aHdlT7CYOyA46CMNc7
	 d7zrMVjiMI+hcHJLZQnXWj72OPv8uNws0k7nI2didqlnTPg9xFBEJ1NwXW+P+O4pFh
	 MQMhNqRm0w1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC62EC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449831369.16767.12128653847317233606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88e693504e44e33771aefcf882b3dbbd40579d93e5f39bae5f62b52e6b0828f
Date: Sun, 19 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784498313
