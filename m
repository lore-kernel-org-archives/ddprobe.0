Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C6617F7
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743014994; cv=none; b=TJtoq+FD3QgKcPRT39AeJZKmRvqzLiMJenl4T5uME0hs6jvoe/TNvixn7BeE/Ws4lqS5YW6eSntiNw7yJwziSlK7m7OA3Sklh3rUgw4A6LuHe7Y/F4iXpi+J8gJ0mONx3vKWb93QI+Z3KOajhEQVNTDVrsmVA+Tw6vmf3R8itHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743014994; c=relaxed/simple;
	bh=7t2S0DkWobKiUUNPVZqSrJwKsXwXrduFqL0miRfAk0o=;
	h=To:Subject:From:Message-Id:Date; b=A6ePap6ysahyCp5bBZ6RxRUgubvs0f1sQKZhnfdaXcDgllWerwbx5UpQZQhjmz3Y9gHk788X2EfeChQtlTUB7zGMq4RMMinWX9Fk+qzJv45qyFG5jMn1x6Uq5COQbrA1zwiq3yeoS8iC5yuUermVIn2yGpQGYaDrZOw+a+Nram0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAI2L3mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAI2L3mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB416C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743014993;
	bh=7t2S0DkWobKiUUNPVZqSrJwKsXwXrduFqL0miRfAk0o=;
	h=To:Subject:From:Date:From;
	b=GAI2L3mgScO7VRqBiuCa7z21Uf1hs5pXfNnB4kK143nuiruZL14CrJf1DUZt63g1N
	 bFe+/ai++hllnRoSL+tBg5MYxXZuR2ZuugYc/KqTiYPtbQ3M3rNG+cp50oLj1DSJTn
	 vxHzosc5KEv0vKkQtWEESm9Ypr6HBGMrm7I0Z2zOjHQIe9WmZ3LeJh2oOctts/lwie
	 P6CTyoB/gwlTtCaPJK+MsFnZVneYF5Nl+r2rj18yThG+YMXmTy5Ri9t+Vzj66LjVrR
	 gPnND8tOAGu6M7Ji3F2Teq34o0VUSo27YxFewx0OAjEe+tIkYJqhuMswX//qbrt8sf
	 QwtpUeUOGefCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1BBC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301499359.11684.16314156499275930888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06479ebc4d958ca732809969d64dffd386eec2271bf00b95cf13c6f325ffce18
Date: Wed, 26 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743014993
