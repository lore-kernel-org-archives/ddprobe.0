Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2361C3FE7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755150594; cv=none; b=dslA+toRxRwrpq/XMHp9KLjH3kfnC/8/ktaa9SRBqLCu9EVNIeGqMyUakOq46sSH81ixYFDFbORA0oKy7pHxSelstSUcfOAVgNqceMEdD2Nq2T9BVX8jgtowZIHQxJUZjy72puhvTXB5h83/LG/DRcKskgIW1CmcB1Uqegt7Hsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755150594; c=relaxed/simple;
	bh=1gs6ya97yBoYxOgMn7HyvYQ7h0bl/1LOaEVEH0ZiW90=;
	h=To:Subject:From:Message-Id:Date; b=VVv0ucPgUkJ0wNe8MojE8PEI2XLfb+RuZJBHXaTEOz83pB/wD7FAkggOqEqsYZ2BLWkw7Ry3v+LyoOeyr8/mPqpa4DE2qMgeOEnsUdd3a+C+z81cC73y0UmZ/aF9kKyAEaH49JWVrS0xmKllxPDb6TQzA1LeMRYhD7wXDoSjPYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGXkOXxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGXkOXxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA72C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755150593;
	bh=1gs6ya97yBoYxOgMn7HyvYQ7h0bl/1LOaEVEH0ZiW90=;
	h=To:Subject:From:Date:From;
	b=mGXkOXxwdG0XiAzZoNTeksQCkIpoB30GSZ8wT98VbTVVrwmdr+60PPJcM+EZinkAI
	 X8/fUnksUEv51ei4PFj4zR+KKjWFxiSAoo9QDeMlBARdYWY39ASi3BaK+3rTMO9MEO
	 SKwe5RSheiRbfiav2DKfrXc8JbEBzsKicx8PMD+QN21/5aTnrC26YIcT+xys9xvJDX
	 lHIGSgay0lhV6QIEFHqyZcKF3pVL44Ahc4Uy/6sytUG8bPSwK3VUgKjm7lQQSCfcOd
	 yhpFwl5QpUlydTSLxryw23ywYh3WgX0H68jXGkS9k9uivFZtnQRhdOZW7AGjAxBJB+
	 FfYpprWdwacXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1CCA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515059357.23052.7868818079150924543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a5348aed83fc2630d74a07e350f2e7648d522868b8ef581728b7dd80204f61
Date: Thu, 14 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755150593
