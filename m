Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F41D2210ED
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734725754; cv=none; b=qFM4zag6ZGwqH+d4gdOcPAdKr/qxNTODqexytASckMfH1jdM2fcnqzYP9Rgfp+er13ICnXTTIufBYdVL/Nl/chlmzh7HKmIziegjhWyzi5dJaVNTGvuuldiBc5Ik4vlqQrsM3jdSXn6J3ek6jQQ3aQqAQJKx9+FPCQaocMkn3gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734725754; c=relaxed/simple;
	bh=+pJpXg4v21QP0WewmfZMzyAEdwLJ04lATLeWR8AxPro=;
	h=To:Subject:From:Message-Id:Date; b=mVH+/FFnLLeh75NP/g5Bh+6uVldgwM5BTFbDAvbgQpJybNIiLN1LhPFjlXdyyiJKzNHzwOYbiB7ywbXlGmyAdgpPQ+ee2pBoXDQWR8NzAuQtLpC3S4IAth7qFLwP1d99m/jb/QjsswuLC59J1dlhpBCUF3zpD8zU7pLJIXICLb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph++qwA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph++qwA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC06BC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734725753;
	bh=+pJpXg4v21QP0WewmfZMzyAEdwLJ04lATLeWR8AxPro=;
	h=To:Subject:From:Date:From;
	b=Ph++qwA2gfwJZlgpAfVqX4UHwQLcBwL7zXZA3DL5py/vcOqhRItotqlYeB3rqo9z6
	 /5SYkQzOw92AEVolcfElGnWSBPF2qTPMHVt345BG4xwFxAeGDeXTTDg4p35Nyyhj1+
	 SvRfvVWJ9/lBUfVle8tvNuFvHYo7oZRQuQs4h+pvkBgwR3WNvlE/tHkr164xWANQv9
	 RUy2B4IaiZTDHjKQ5x3QVXUTZUUbbALDRfF1Mg6vXQh1VVjuS6DWu2U3KlR5Lx4rIx
	 8ngx2tFisDd81MrJRZzEHsB4+dWRBfDb/DkIihbD+UYOT9Abh3FSLwKjHETNLhTo+K
	 D7MMNSnu+ywZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A79E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472575365.2525.13153596956552554712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9877732e63522f95d9fb76201a947386bf35480e7f01c17605f159cab38a1da2
Date: Fri, 20 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734725753
