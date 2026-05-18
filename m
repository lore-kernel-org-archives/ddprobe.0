Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D18833A9CB
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779115234; cv=none; b=ZN3BjUgLTjO5tjC5Nb6R8w1xEib9qXATdw3FVxcq/rW5nEmb43Ex+6BBp6mMlRFmCPPhG8o6KA1Q3GTFMvX4zm2ZJ5tDYVJ/LuapMMqCaEdze7SjfqLNUrNBArRi7FlBuxShsqx/muINgHwxQffARtS5Z+b3pDKmaJYtfdbrAKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779115234; c=relaxed/simple;
	bh=tK0ZOKAbYfljHFy6YPWDObXyRuQD+c/GxLUNUvLaG1I=;
	h=To:Subject:From:Message-Id:Date; b=VgIQJ7V2gVVkCwRS69CmzBM8E2nu49uNwoxmizLb7LoY5k7rQf90S4Ei4IbC6z9Wo97eD/zjU74x+VpZ3ZGXT3zAXIyVU6tLAL7Iksm+Ov50ev8CGqaGLLkRmrfW8n1ntWww/42Icrgp4gVq0WyzDijaAhkTMUzA3z9Gl0VGHpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ2hCdYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ2hCdYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6D2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779115233;
	bh=tK0ZOKAbYfljHFy6YPWDObXyRuQD+c/GxLUNUvLaG1I=;
	h=To:Subject:From:Date:From;
	b=BJ2hCdYOGHTioB6v+6q1zdxXI5lj2K28LjYcmphNxN4bY55R9cotPbTTsLOFP8q7E
	 Bu7B5pjj7Z9H7EBtjxGrRIsD6DJA1ijihFRFB0qr4D1DdZ5LqPtRAfbx+mG0CcglHp
	 ecoX3zPjA/7++O1fChPCa1WzjE03N+7fFme+zA8hdbgTJtXvZ/HFdmyW9rduPPWAGy
	 x6evaaTZ/jfo0tVjX7bByCVeIP3cD8YIvXRmpWg7H3oajyOynkIjygTO5M77rSyNN4
	 e1YkjhX5dng0Ck+0sNKZr0psfHp+v9TJq8I6IPC34L2ya6DWH7K1dOBih3g0JT6A6E
	 pLYKgO8hQwgGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C3CD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911523370.26103.4957501634372637359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fb87efbaff88a9e254f3f80ea8c77cf91fea54ed22fd08629a77c2d69f3e63
Date: Mon, 18 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779115233
