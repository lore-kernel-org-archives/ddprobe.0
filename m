Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A0D23BD02
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786671634; cv=none; b=Mogq5k7p5eASptXi3VjbFM022x1mEQ55VcLvTd+8HofA9smMD6w8VALxqfLfxxL/hTjFiCkWVkN+/h0y/JqKqf3r08yBku90FMTekZfeSO0O4zmhQmhYAa/JjIt/hNAUYjMYkenni1mb2LNyUTo8uLmpu+yOORTW1a81AqkFfKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786671634; c=relaxed/simple;
	bh=bIlHtWagtLT/YKzU8OX38gIsE82uSY6NlCAZFhwm6gs=;
	h=To:Subject:From:Message-Id:Date; b=NAYDQLYsdutjhUQchz50sfc8/jGhhJRXd0AoqiyYrnitAg0Mn1b5fcwUGP0UG9javF6JuxbchvzmuTFNUvHc8JICibncnv+JJL8LWawKXTS4psYK8jfjxzqCvhGKztMmIqw07Q7V3O2KPbMRtUOSd/NKc6U+dEOnWa+/sQkpm78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASv3pNLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASv3pNLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3390C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786671633;
	bh=bIlHtWagtLT/YKzU8OX38gIsE82uSY6NlCAZFhwm6gs=;
	h=To:Subject:From:Date:From;
	b=ASv3pNLv5u1xiLle4qVjkb1f/e1SQMcYJbNCRz+Wuto7Wsb7P83IGPpQDoNnIajjv
	 ybkQaO47X9lkYxN4/FQYuv3HatFkDAaTCFOJp6d/ZOIhAtGaSkbg5kh7dwn9IPA7op
	 RhmVjEFUagblvSNyNev7W3Jjh3j31yC3ZKyfLQ2Xy5qbKMIXNWNyzlMOE2qEHkQWQ7
	 h3DzUI0h2auVWHwxNA8CR9HlHG0Na+Qnh8/TZXzRfUopTPYqtHwINEq4zrr81eD/Ja
	 cDc3smxIRdHmg3Z+Bisp9ZPZ5qVEG7hf+/aJSOzJwC48ymte1UBf/hSqznkmdZxll/
	 KYyhylGoi/xrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2C2C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667163368.9091.14855627414266129054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8068ef2451177d31e1c61354a3e6da27c307e4b4e6619490f12f2c0fbe771b
Date: Fri, 14 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786671633
