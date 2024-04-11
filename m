Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463987E9
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712860163; cv=none; b=ayub5fv/JG0wW8KMsaVRLmIluTkVA9Y/Rn3Ht8LegEIfXDBf/UHF9KnKcqlMKU1GtZfpHrWc7XBFlh6H1dRJWWSaM9M/qmCUqY/pROr8LLVqO8dx6v+z8/AjbpSCnG0g3z9krt7Eh7/b0PmHO1QBuhl4UjMriY3pzLQiG4yAYpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712860163; c=relaxed/simple;
	bh=K23zT5gVEaIK97H5NJT5UHhXgP3f+7g6o0ZfAwwF+Ho=;
	h=To:Subject:From:Message-Id:Date; b=Fna2x1AzZmKpoEIO2mGJzGfFj7vU5S8efDNEbwO3qHXOJZxmZdTVWTEGVg0FydLl+Bx/2T+Zo5Z6RR3hXtFkWwyhakyZU718jdwhjxM7xiQZeQaCvuPCW+xip9haOw6o6PvpnAKY6pMwZxPelPAYg1o2gLNofrmtgZCd0HTGDQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEjyWN8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEjyWN8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B0C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712860162;
	bh=K23zT5gVEaIK97H5NJT5UHhXgP3f+7g6o0ZfAwwF+Ho=;
	h=To:Subject:From:Date:From;
	b=oEjyWN8nZ8NiBY/9IGAdIK3ZmQKCnKraKYffAJ0L4Xmssmg2eMkq+B1sMrQ1i38Cr
	 bcXX8Mr7N08yI+1fQrutk1kT2zIr3y0D7NBlrquINOKTaiFvkXMaFjNKwmMq7ZPzT+
	 1xoenpqUegX+yMgHSzdLB59lnZQ2PTnG/yjBRuRmPQVZT9s1Q5Aiw3r76JeajeMze3
	 6koROZonfdsxs6hAA2v1vljdiJRNekWyMev6pGzL+Ax5g/pBQU3j8vX8bEUUa8UB7v
	 SVarPEZ6k6QGfpX2KqrrY9KBhCrYu+X2kormkpZQR8PXS3Of9FMQ3gTTT12Km4xTU/
	 aJebCk0PYzLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3B2C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286016276.31114.10439712383041959439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770dd0d992b154bf3f6997ce72b84a57415c22011bf1181a4eb6f4e77eaf7682
Date: Thu, 11 Apr 2024 18:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712860162
