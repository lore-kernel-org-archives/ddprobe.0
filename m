Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482892C86D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784414314; cv=none; b=YwRe7bH6n5MNbNJMgzH9b6tYVhT/H97JdeTvPreTB/eLHUNOuB/Hc6bezptj8D6Qy7dFaElEQG2FgGO+jKTKYO12ofyKkqBmja0DiTG3yT5bgrhc/1tJ7jY4bdM6deTSPSQbhczLgd6ViHb1R7z8FaiqRnuVK2B+BmAg9Gw+sRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784414314; c=relaxed/simple;
	bh=Uw93JtnuI0m7Olv40y1kOoUYpmKOESG2T1oy6EXzfx0=;
	h=To:Subject:From:Message-Id:Date; b=swxWahbt91zxxBEr2mmO1upu/nDZ/j47ibHNjXSjBMhak34jGU+YA3yKvTmrVQqQfNWyOj6eRnXYgPIXhYk/9GBpjb92Saudo8vbm397yi7ZnQLQPzJwc+T6drQ3bb+Nlr//hfnZXH63RBDDSKQ32ZV2emHKCs36dWKHfpeTMJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBcdM9I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBcdM9I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01EAC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784414313;
	bh=Uw93JtnuI0m7Olv40y1kOoUYpmKOESG2T1oy6EXzfx0=;
	h=To:Subject:From:Date:From;
	b=NBcdM9I67PaEn6/w8kKuVek24GEznRgKjNY/r5z6rRp2faJI8cC8ilnWmt+s9ZD1+
	 A+JbPTy1CVq01sCuWWklAUlKAA1iIzhBxItqO3N4/64njuwxo1VkE4CXzr88y2iLqW
	 vKfUefptRbMZPT7QKaTfSQkTJWYiIPuvafaK0RFFD7izVww687nk4MfTBzRBfCs0h8
	 WhcEKHusjSyTnhVmxw6Ha6IO2812rGcchcGrVy0kcY/lcV6lMlhkZrcvk7KGi705eK
	 xKonSC7MG0MF+dhBDtkPr6ASq03imtgNThQNEXo3RhXys/HfbBKrk5FrOHTkqfueam
	 iEGzxG8BvCuUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A8C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441431369.29580.16068398301990572248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee5978b868cd06ffccc21ca67a435e57decd905494ded504202f8ccadcf2b09
Date: Sat, 18 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784414313
