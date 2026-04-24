Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239AA1E511
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776992854; cv=none; b=Glt12Z2HBmHbKxJ4ksTNklpZbVOaxjNE/R0p0cTRAKQc9mmbSlkSbgkVqXJsNFPeEjaBJatqG/OXhDfXVOERJbzh+5wFtYWgv0E8ZVLWrU4DD0breD3PItT+92V7TeYTZG/9jZHPvuiq12pq+UPTtOs9QqczrPGP+VRnFVg9m+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776992854; c=relaxed/simple;
	bh=8QM1S07uTfMMOLlvnj1Mt4JrvAxwGQXzXRV4yIfUiZk=;
	h=To:Subject:From:Message-Id:Date; b=Tf4wMGVb7SCNhlqAQjKGFg4RIA6wrMmUuctwAaZbtsWyzOlS67Jxq5DeaBY/mCe+V0eK+htxpogCZqWdvcRkQ2yojb3PehKOYEHnoqcsC0CmZi1zQqPHu53ZjNQfsmUjG61Wmzue665wTmKmyvm4I4ipIN1NuAtcI01lvTCrEvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIKIGNWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIKIGNWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD1FC2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776992853;
	bh=8QM1S07uTfMMOLlvnj1Mt4JrvAxwGQXzXRV4yIfUiZk=;
	h=To:Subject:From:Date:From;
	b=VIKIGNWSAVN5VzWXBLwQLe/tpsYid0lQCeTXXr/1FPFS7FArmZW+GAEyUAd96W6//
	 lePCGmdGGJYCURm0+eMHtSBLO7snsRMx2zft8DTkO8dOmBY6u+FbKac/sl31fINQvG
	 DGNPgBRLlHUoQ7U4L6LS2DiAUb22Z3GPsu/9dH7HnYm1FOx0bl9l1aQ1P1bOhcYSfl
	 TclS8GKDvSgpEmqhyU2ROiwC8A2bxldA9OYMgfJsxKMO7jRG9VKCuJv7r+JgwfTrVV
	 Q6zKjV1pKKcfOk1BzwvTXKxnC3ydddn5bJ7ggcJnlpHlYd9YT0xZIW14YEh8YO2jAL
	 ooLULjW9QlbdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC380FDEE58
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699285368.29846.7501722548695132059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c443b0473cb35078241dcc3357df8f0d310c6d2105fe0749b2e368021a9347bc
Date: Fri, 24 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776992853
