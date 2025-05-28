Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F983EA63
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748394595; cv=none; b=nWZo3dUFNcTewHc8i2mR0/uwTRJG6aQeYvrSSNjOApQYrGexzlik5LlXWPfNuQFqlbbTmraZOmxNc2zcvTU4nk4F1pLRjnqeQdjoGVzhCHhJBD10xeB8e04c6jVNKJ81e+17sawuqk0H8Wh1H4k4+8Cri7Y48Ct/9CF409P1RHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748394595; c=relaxed/simple;
	bh=fpLaS8k/ht/JZLWhdx1ADTYuxyVIz8mQkoDiL5mF/ZU=;
	h=To:Subject:From:Message-Id:Date; b=WJShl3bQXnOAXGdv4Gbg9M4mbltlSLoSQbQEj2Hk+V87n6RLAyVu5+lDhzpl3dgJbhk39iTuU4P/NJyxzCfny1CVuLAJtXMZOY2ANy9Ntl20TDkZB3Ah8ycnFTUrm2HAOfYnccl9Z/sUA0KKnqXlC9JGeh21V7zGwR5ZCrkv1Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOu7KOoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOu7KOoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4396C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748394593;
	bh=fpLaS8k/ht/JZLWhdx1ADTYuxyVIz8mQkoDiL5mF/ZU=;
	h=To:Subject:From:Date:From;
	b=EOu7KOoJlBO1sDPpeWG4OvhKNriCY0ZOyKFv1yKgVMdtkrd/AfdIUvDHHw26OIYMA
	 xAPisaj5qKpknqD8s5YSZ6/GNN/qyPTvL5fjG0n2/eNi3V0mtsyzzEosOnBVP+s8MS
	 1ZlvLbANWswlpIHwzk9ej8s31xoZgD86fRfEjfac9XDedmQ5kiUJqpyrSlWn4pCHO8
	 l3EVlpJydBcgxh17D36N9CPyt8AfA9cxKGogQEDCWSqmAam4RlQ4W5MaYhteCgupx6
	 o+8XKAcydCTGMxYrDmamDdvEJAwCe1sVOiePVb599jFTzZefBGk80zeNhp03YjDEwu
	 kKvKg+ZE+b6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D1C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839459357.24529.6282804396478399216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ace64a9d2eb480a664ec70fd7f6701d539d388a78b9aea3d929050f75f3c05
Date: Wed, 28 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748394593
