Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EB5376481
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783981114; cv=none; b=PwmccKf6QO6PebcvF0GciyzG5HNDgUwmkaNZz1/g+5LdpQgTEXIUmop2IppAvXrmVQ1beL/wSar+uefQNrmV5JH/O5PyEhuAx95PTMKcOJDI8lQbVfQ9xiMZARAUg+64TAOwllaAF/NJpWhZkVSmAcRtcIezzlxqSspM6b8S0/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783981114; c=relaxed/simple;
	bh=zZOJwlSN+cLQ4JOsW7U/D8cxpUI4t594weiU/2RRlY4=;
	h=To:Subject:From:Message-Id:Date; b=rXJLLgRQfStgC5hdgm/jItCnqIpa69KgszMfRlyGPeJAxzQzgENBvf0YG7eGYq9ozE8Z4RSgj57kMvW2t621Mn0mmCoGcLUju+48Fx+kLAWsk5xfJOH8gOGMgqfpF93ts9CHgNm0dzMM2goLNt4OcwqRI3y4sB77rA7yPBsbXp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urJ0kryl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urJ0kryl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DF0C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783981113;
	bh=zZOJwlSN+cLQ4JOsW7U/D8cxpUI4t594weiU/2RRlY4=;
	h=To:Subject:From:Date:From;
	b=urJ0krylJ/b6HjZFeY+rn6axHS/niXQavTBihJXy+6JRXlMm5gFqPZWRSSi4bb/Tq
	 IiAIQ2P6QlupKo0mSiPDPakPu/wEm39rIfzHPis30RFx8/05YOPTxrlHYwLWI6xBC0
	 /0xYb7VqFxS0lvDZEgJX7jNs/dCqZvltOmZg0+MNcfSiQmxCzH3aj3nVz36wnq6oQm
	 WceEmFmKxqofCfz1DcRX3jl8xk355e+xr+aWe+E/LCQKZUZ9NI5/1ckRQEZArITOAl
	 0IRoL7RA6O5WHsdJPELMO26h6q0OA+vLpHYkTmmLqizojdyEI+6t8XOKMJl0Aqr2q1
	 8+a/BVdK7oVDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BBCC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398111368.4954.13695800634775908359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61becf4a2f648d19a0b253fa7adcd4df7235c0c848f052da7e7d773920bd8b02
Date: Mon, 13 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783981113
