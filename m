Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8102D3A7C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784488114; cv=none; b=mFkCAwZZRDk7lCt0WrwTcqmWcv1wmxiO5lxSrn+NJCZQaOplUJMNcN69rOaW8CUKnYoa9N3ul3NtBZLdDmpTcRTYQ0UQlZqA3v7t51hyMVT0b3awf+ZZZxUS7vDa2+b1eL2GVSmaAvF6O01pkYn3/9MZiaEVniZavOCMCsNVxxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784488114; c=relaxed/simple;
	bh=q6SApfPrdGmo127m6hPCMMcav3pA5XtO8dnFJa5UO7U=;
	h=To:Subject:From:Message-Id:Date; b=hdmmRkzkJ5gBcDPI01Dp2wXrOR6zu5XiLEW2gPPmuNsUrPIB82Lmp0Aeq+z1NGqxkvDOxcMZdCM35MFF9wQYp2VOQx3qDG6HqcfZy13URq7ZaCJ5xgOdhX+FyeIRyJQzvTkV1S61gqqUqWWrtfmXc5K85paXEIhgTnPgkoYaIoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGfrXwoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGfrXwoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA178C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784488113;
	bh=q6SApfPrdGmo127m6hPCMMcav3pA5XtO8dnFJa5UO7U=;
	h=To:Subject:From:Date:From;
	b=YGfrXwoBq2cSJQauI7jsEf73rzIX0wXzOIVoQFFyHf2MmaieXOI5Jkj9IKK1PSKNi
	 Vx498L/7/SmrcmnJjpsRch+Cdx+DRsHzqbVr2XlXan+buKe5CqhkCCv9fhsjpOAIML
	 H6mItzJ+jkJuI6x8jntmOP8Ht20sFoBmlrLTM9a0io3olYMe6sStvOmmIs6/463KUf
	 YWQ2wF4PYQPzm64VrFLjxXgvtIbO/7jKdqzM0eNIfBvS7MpYo8YWQQ/o8p/ec5Zu7f
	 0IyiuU+VVaFUhN44NF3Bc345yBfOAhSPzdhEuKQSJu27Jibe5xt8PFFCGilHpps7P0
	 v2rVXJDmYWouw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2114C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448811370.9713.18406486340997223850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5503601fa4f794d91a17ec86814af374240864b96fa867c8e0c1d693a855c5
Date: Sun, 19 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784488113
