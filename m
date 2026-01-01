Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF374C92
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767252834; cv=none; b=QZsiCG/kNImFlMmgafENaADlFLfFT5lza4UwSjSHqk3eAQdykIViCwTkn3Bv5UZjl7/B2L2rhh1EprqbBzSx0cpET0nfOHlu7/zY6fnigJQk4WaIlPiMbYMrld7V3qMSPQNj6T6MHf8sb9uFv9ejynfMpDYtDQDrCKK3Ir06N7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767252834; c=relaxed/simple;
	bh=Pi0w3HxdKPAq6AtKbYv2zlT10qRamfXRJnj1DT0DQAs=;
	h=To:Subject:From:Message-Id:Date; b=PLJGUQBA9F51lthKEdpub70j9suL2qbbOExOjIQfyJuEVY3qSiOVWW+DrTFaI/isuguhkBiN1c7V3TsbIuig/bq4JzuhcCX0weaSIOHDx7xKWcB3gHXGi4dRzlRQBPdu14K4OZRm7t22kzrVEc0/AZfZ55iZPElnWWgH8f3hbyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnADA7uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnADA7uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767252833;
	bh=Pi0w3HxdKPAq6AtKbYv2zlT10qRamfXRJnj1DT0DQAs=;
	h=To:Subject:From:Date:From;
	b=LnADA7uY8i0QAFWBHYiAmNNZUDnF7C0guTNtYrrVQZx3qkmE9Gf1MC2fMo3sjEDw/
	 DteEIn4ZGsz8xDgdpF094qv6nu7XzAglcSSZ0pBL0uWiv67BjMSwvxjzc8+oyUK/nB
	 SY7xFzefkdNrM4OEK4pEHwQFUGjcx/XBk+lWjlHUSNo/IPul9VquGXT83UNjTWJCuJ
	 UjPCewl9fd+/cqAlYJ7jLJ8MYiQrmvLFH8KR4HqKmrwFOZql4r4Phm5KJR7KjOgYlA
	 6+JkIjksyyRuGF6zrIgUh4lhQRTRc7TyqgwHHBXNsa2gQ+vjaft/HidbgiM+SIbKKI
	 u9u4Qb3mfGnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CEEB56D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725283357.29341.2130752048029142864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03561d611c7a88cdf6732f54fb2a8b85baaabda1dd744091d1edb99edb223e7f
Date: Thu, 01 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767252833
