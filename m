Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A551BC41
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754833794; cv=none; b=UAKXqm45MARmX1dPfdhPeaguvxgd4ZBbYNxxUAGpLCMPiHgM7WL9iiLjAe8OliCpHI51/bMD6Zz4tBbBbyKXP0PCpoo/Og8cYgPai2z//7Lv5RzvXBE1wSGac9q6LjfjrqluSGEnoIlR/UXn/n0YF3tI4eaNRV2//gNR80F3jHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754833794; c=relaxed/simple;
	bh=jUIzhd7tn8AOm032rVKeKAOz2J83ntiyPbx5kmEmQMY=;
	h=To:Subject:From:Message-Id:Date; b=BzgWnvWDK7ke+d2ZcYdyUZfzXw1lY4jm32o65HcmPV8h/WjJWvxLEiBjuqwI/CZxeIXlF0txYrmc55nYrEv40t+pYCrdu3R/GUw97GnV7CZtWb8NxiKD9uM6nGdIg5sp+VGOatXKOjWpm2uYg9WIzTeQkygG2kwn1brhjgbOoYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IU512kBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IU512kBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC919C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754833793;
	bh=jUIzhd7tn8AOm032rVKeKAOz2J83ntiyPbx5kmEmQMY=;
	h=To:Subject:From:Date:From;
	b=IU512kBjjchvtHjp60xFVoan3h6ZqcPBmiCqwXp3dU7jSy7rwdLfxPLJlxg8YEAOO
	 jZfQvpZvINrTHjbWSuqhQVf1+TPSEg0RV3K51wJBgYsrnC8BPtqUj7Zu/RKCuoKsSL
	 KNbahysjKNdDIyuM+GJhi2DQid08FvF6/refgkPaw7iFR5bchMhsxPHtbrYn/OCKTz
	 ZKojApQB8fUS0MrJNmeKx7yyRcpL/eoIJX/L6CJK4dPRVjW6G3UgLeW21RMyr4O1gY
	 h7thVpw1SsPAnqvvieeFtFlEJU0UVCPrn2aRFlIvRBCL48dwTq/nwMBhI6TAyXVHr8
	 X8rjwR9ZoGJLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A612C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483379359.22573.12084277321019901644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c5f4fbfcdc39549e57009439816d4404b77b5e57b24de8e674a809a5e85ea5
Date: Sun, 10 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754833793
