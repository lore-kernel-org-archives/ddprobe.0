Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088662550D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750752594; cv=none; b=vC38LjzCPdepTNCsWeMXzrJTl6Mmt20cnduYvm4txsPZiYEEengAMULAD6jaC8NX0EZJvK5r3IwmMarKcMUkERLV/SlZo9lN36FrH9D/JNqObJwKnDRr4lmyq9B6Md4x9uvHal/cHvhJkTr7vzX+MLmg1AVryDzKE2XUN4JR4Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750752594; c=relaxed/simple;
	bh=+aBQLr7T00FxdvG5MzVZDq002zl111TdtzQDUpjV+hs=;
	h=To:Subject:From:Message-Id:Date; b=iSQBX+6gl3FprwuD/xX93LCI4owWUlBm8kczohfmyKvFYvlEBf8jui+JJB25bl1H0z63VEcoRBnCb07UBcJ0gBqwGluWUMPLnzrqBczle7RfctlHgXTB+MZ0/N75EAOMg2ROzraG9tU13ISdGUy9pFZsryOo1+24WQxzhF2mjjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5DX/X7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5DX/X7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750752593;
	bh=+aBQLr7T00FxdvG5MzVZDq002zl111TdtzQDUpjV+hs=;
	h=To:Subject:From:Date:From;
	b=Z5DX/X7gMZUOH1nTWCy3ccwjw3CU1qJ2hAt6hEmgD3wxXHVRI4OLDu4+ofDhyU/NZ
	 IVkQqU89Q2ySK5rNd40tJEaOty/BLdcKGwUu25xMUP31KqbSguVaUW3N/I905xUtk1
	 V10xcjSmjZONHulSHPz7qL9DZ13DwKZIapa7jLPnd6AJf6zXAj8buq6MdHD+IjEq6L
	 NBJECqe+0s902yqyp9azTOosu1miqbrmdrt4Tyh9w6nAG5H3WAdWkatPP7kJc6qfAB
	 gdyxJoa4lnUCqb8Qb3KVPxUxtoGKKLp1dvBKiy/cUjrQjVua1wXv37AKoDPSyj75/G
	 oDx6HGwUoEASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B8C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075259358.16986.12016293036661454405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bea53918409114513751e22a32156859110970ead9cf5e95fe020e65bfd2bf
Date: Tue, 24 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750752593
