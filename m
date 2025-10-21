Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C48336EE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761052194; cv=none; b=KbzrCwBbvAN9E3BYXMZkLHEdvWx5dQiJ3raI9PizTn7ML66/xm7m/mkok67OLg0Q1zLYQy8KyFvRWoB13L9uorB+bjjBqagBNW9BZijIUNdW+F/5PoIu2J56FFRxgYzmENbzraoT7TJRs7onh0EZd5+LpgO8ZNCUGu8B4MiAhhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761052194; c=relaxed/simple;
	bh=PLQW5j1vHB8BFrL1suvMbO8ZJyAK+dWyjg2j4XlRB4Q=;
	h=To:Subject:From:Message-Id:Date; b=ZtwnbYuVDdOBLEj21Ov/z8QYJAiVfCPWYvl5BUu3o/C2d3BTZvOUIxHQQwprf2tYRwHxkzBjg/KISqDqr0THE4Vbu8ok0dJmoFB0rylzg4cLzuXJhyy4J5kGaZVsMbhOAvBJnXgBZCCCHLpLjN9OJHrXq6R7t7LdjFyMfDUu/00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKcKsgNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKcKsgNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F798C4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761052193;
	bh=PLQW5j1vHB8BFrL1suvMbO8ZJyAK+dWyjg2j4XlRB4Q=;
	h=To:Subject:From:Date:From;
	b=BKcKsgNatHXWHH4qKjG5vLZVLlOKgRghU0/8yNfX/DDZboUnThqo05Z1RYy8qzivs
	 bD7eNaU9YM/EsFhztaw+KE5NAYi03sahz2zubYtoCr1woEzH36c+NkV9i2ZxAvefsx
	 yzbQKtfJREjEN26rKl9fa5p3ZhxSwKzHc7bQJEdFpMba/KY/RR//BV0jdViQdcdLrE
	 1Zt0SNcovNpEEwcPV+woSXlh+cJzd0wz+E/Q9onEXuPwv0AR60s+3Qykvkj7Q4went
	 rp6WTIHZI4nSW5yr6ODp3TNjaCoLVz5jaXciCtKj3ORliTb6GYuxGm+svJChf8dAG2
	 L+lYhhBVm8Obw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEECCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105219358.10648.1722596587629056680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15805c6b2a6ee9fa7938a07430283cc4ca2566bb478506bb78ce043b8d5566d5
Date: Tue, 21 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761052193
