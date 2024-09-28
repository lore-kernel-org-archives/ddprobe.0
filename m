Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C7C139
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727525754; cv=none; b=uJxTQEchgYvn5Njwfm8i3mFx8KlAylQfHFOjxa72IR9SW9J/669cK8luUf7DuNlX+uzGgs+2K249au2fzOCsYs3L4PWWL0c9ax/grKRz/ZLFhDwqLE0Ay5ycTlNeZOJa7IbZqKozFr1stHCoAHASf1aGfc5TM5pqocUah1GqvT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727525754; c=relaxed/simple;
	bh=/ZzsrpC4GUgfp1tk65nW8pdF2OlSvC9oYtSD8FmBEVw=;
	h=To:Subject:From:Message-Id:Date; b=cfPffPVR8fTWw62ARKThX3ejINSo4YGQ7In137U+VCRgWCQ2C12994txuLG2vhBKJBLSerFu6QdARt71zhUvQ3ZE1/l/acafOqblYWAyV31mK4lLYGwjMKR89+GTAPQmII82q1oOoV8xwALusTBEnp8pYO8eJlBiclhFo/GJQGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rk0L+iRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rk0L+iRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B48C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727525753;
	bh=/ZzsrpC4GUgfp1tk65nW8pdF2OlSvC9oYtSD8FmBEVw=;
	h=To:Subject:From:Date:From;
	b=Rk0L+iRWqZmAMszXib0EVKpIwTSn5ecdAjYycKnNynMyR4kBIQoaPl8eLIdHN1uk3
	 3wGcgWRfIBRZ8nFi2n9givHuj0FHPnZ3yQPicCHvx/XfcFUAhqHlqIhihc0i/f1Bfv
	 ccKZmrDv0n2Ipf0OPdTYWrhTSizjxB9XZeagKOAHuh9RphKvqEU9BrskTx+6MZPv1t
	 d4duaXAxwcKCaLpwSuxM5jcaZrqxss4HDH8Lq4HhhPj5b6hiE6scLg55u7HBgeW7br
	 uZWfDfbo0g4e6JXb60rFXNtdeYfxTqUueyjYvVtMz1whYxPdrPBJtGd5qCqx/84SrZ
	 mPAz58eSvECrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93982CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752575359.28366.12559871524267578260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb2c951a98d63b969f25738265926be183b5f7a809b19997f1c689955186847
Date: Sat, 28 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727525753
