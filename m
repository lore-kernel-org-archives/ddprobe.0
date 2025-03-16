Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6531EA32
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742132394; cv=none; b=eyo/WN8gDRAHi3Ki0HSieEFC9VJfq+XH+GFNmcbH7DJhgMZam2Eupy4wrIWQsDMREwxLgyav0k6rkIhWoSTTMYh9mhGfw1T7qfSSD4L102U/PUfyg3Wjc1FYv4YCUL6lcRlCQAeR2e6SV/bG4E3fX0uLM4w+QWAooJLI2qyggTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742132394; c=relaxed/simple;
	bh=1OTezmeB5rvcuhK/JLqw36jxU93etU89nF18qnU1YO8=;
	h=To:Subject:From:Message-Id:Date; b=nHEKL5qXA0F0qS0xWgdhaiWcVhVaVjeV5FLh5CqaCu4qo6vepsCHEVgtfrrQLzSyGIgvPGD5skMJ8Ad2L+y7IVhGfKRU3UUdXcbuAyrt8C3JXGyCO5tLBMdNYCsoe9kMb+T86sJyAl02iMOfNkptoahPwdsVouW2yiRc1Snc950=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrtwcuON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrtwcuON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44ABC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742132393;
	bh=1OTezmeB5rvcuhK/JLqw36jxU93etU89nF18qnU1YO8=;
	h=To:Subject:From:Date:From;
	b=JrtwcuONcphnZeAGBeWeFbJoCh1LCdKa4fEXqWefjduLp2BjXCfWP3d9MxNBrvnWE
	 o25gmXgMmTSg9ZU/XK73sfT5/lGYuRAbWcYMK5Tvw927Th2lXXlcKT/jX1kLPz8pMV
	 WzjlMUu5qegxqZgE/6usmQhQFO9oNTZ60a9lqQ0DhUW7J1FFfg7G3AfuyV/VEKrSek
	 TC/LjOOJgJVKMe87flVOz7BX9m7aQiNw/NusOHKyRut9mIu8prQFLBYKEBbK2H3UOk
	 a1YY9qE5SVjiBFrN7rJ2ntjrkxaAycLlRBGbDoklM2+VDPKmMVP9m+PRa1HatFWyaQ
	 8gAA/UrsWrH3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ADFC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213239364.21312.825001554458304444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27942f243e48a4deedcfb157ba4fe9562e5b8fe4aacf6eebf242712ff66b64ff
Date: Sun, 16 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742132393
