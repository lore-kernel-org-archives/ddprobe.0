Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211FE2FFFA6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770514434; cv=none; b=YeiMCzUWfWQyimqbM3QrZB5c4OIZu7q6PKcgYA8Q+Da4mfFRp1bcBj0LdQOAy2xGfJFHC2UbbeIqDmcbotDYunhtRMQYiXN25NlZl3OVoat5piVj9YyngkQtRd/adUlSOb/F1JkWXm0fas09mX5OhsSKAKUamT13PfYs0noOU8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770514434; c=relaxed/simple;
	bh=HT4pKb5f7gx31tDQsyxB5D/CX5NeRr3cK8hArV2fn6w=;
	h=To:Subject:From:Message-Id:Date; b=vFTTpWiPgWOxwTjLBKcrAIU6Hd1ALBuuK7hHfKJA30Z2u2nxFTNNasYMomzeSCIyCgQCmxqN8mRDhFMTsOkj+jS/Sh1xlVpQ30sdj1U8uYStcfEaaHkBdVL/yhZhRF0hRvbcxeToL5sdPHiHpR6KK1fzRCjWJHZ0/3P0exT+deA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQ1kHIxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQ1kHIxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB862C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770514433;
	bh=HT4pKb5f7gx31tDQsyxB5D/CX5NeRr3cK8hArV2fn6w=;
	h=To:Subject:From:Date:From;
	b=cQ1kHIxA/bMEM4RRIWVKNczpsQbOgESkxq9EQWA4qTJgX0cUjtz7Qsr9TJHxsSDM/
	 2t3f9W+J+D82kDslz3IFiiBpGlpzpwrpKxxuSyPuWKfmLRZ03hd8uFm8ZVWDJUeS1T
	 sWzXPfyaX29qQa27fpBhmGOxoGuMQuRvY8ySudAijUQoFDnHISGOdBTtKzEMLzJU2T
	 dyoZ9Vmg4q939AvZTajES1vFnA5DSthdtuOWc4jK85FyBtHQGB41w5rRqpc+lkGjRx
	 U6zSTIlRK2eG6Vgfs6eDhnpy17EAYuAt96ljKHPCyYhIyedSJPTX2wCUo0AGhCvXaQ
	 YV7GIYPOLg4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97878EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051443358.31623.2085156854758519492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412dac401a243926268b526eac9efc77fa75f093f214a791e98fa5dd47e8c612
Date: Sun, 08 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770514433
