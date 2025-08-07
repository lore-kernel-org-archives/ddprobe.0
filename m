Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A17C235041
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754551194; cv=none; b=feUyxuIgqh1xIvNb/VywdC0FinpX6q0G+6nRQfYuiQb8Y2ZBu4itNPYQZPcJkzbb/SLUyIWKveeM83LneCyrDmy7uuzHz8HOpwiln/pp9MyG1MPbjbv5o/Ujc/5yr1ZMt2GeYTjYhL1GLFkJg6U42FOSDjVIWL2EYLu0MuT7rPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754551194; c=relaxed/simple;
	bh=dsLGGgEC2s9hXeOVZyc8QnBAS40SeCtQ0vI5rO/G2Xg=;
	h=To:Subject:From:Message-Id:Date; b=pc2XdsmHTjjHNy4SlLHpvATcMow3XNTePAY4wBciAInZVoc5DBqLBP+FcCciwmyXj6MvXOOLcpQLFwMuVvGZ74fb6YxmzPcsH0FPi32sLuF4T4EwiHdsOS+N+p88Lu4RoO2DSJqS5TtebDM5mzHC1hhaDi/jXe3OYQtFWCUFFlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJW1oQCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJW1oQCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC95C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754551193;
	bh=dsLGGgEC2s9hXeOVZyc8QnBAS40SeCtQ0vI5rO/G2Xg=;
	h=To:Subject:From:Date:From;
	b=ZJW1oQCw2mK+2UhhW4CXyrYbEmpS6pE9kIsfFvx+aOrg61bWf2RHU0zormhGMPoX6
	 MiTI1nwYJKL6+ATI46HzFSNA9tmqJMpAPz0+u/PJrbYp5+0r/dQxXxsmmnwRs4XhGU
	 lCzEUm33Kg/BScQCditBxt3btvZuQFW5qBDSGdKkguJUKIMkaD1XODaxl/Phh+jJzT
	 jDtSe8G/i7C1jBLM5pb7Uc3Wxlk9xso91NIXHquW2qCFyGOesh5U1QlHm48nmwgrd1
	 JUsx2zEovGd9kjDzdlXKDnto7ja/aYMMfsnBxOuisgysYiEYkyCEwgNB6MfYW3oRfS
	 /p1eVphKYnlaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FEC87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455119358.14306.5700322621994576717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f80a7e4440e8738c1d83b017a0c829967f5c6f866656901573b7e81c2ae8c5
Date: Thu, 07 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754551193
