Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556CD41C6A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780276474; cv=none; b=ege/swHLTOH+OQONv0MM6uZi/JKqkJHunps9xMB6LsA4LjR0h55BTz2EH0+FGe4LoywDax9hk0hHm0jFHnyP46mSTLhVfYHDTu678RpM+pCzL2GDYtdUFMtLsiC1pMiXTKczQAuiqLlgFoS1oY0IAkl76lP9CPkcgkFrVxBanqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780276474; c=relaxed/simple;
	bh=U1rdDDqSdr9A7UtsM0DHIWk/tUoQJhIw+Med6IQZ1+o=;
	h=To:Subject:From:Message-Id:Date; b=LUwkkhtHfVF7qpIbGVQaSuwzccQ4qT+ZllckrhZA7j3AAnJXSVd4nZ+izzN6VSIZLu3ITqDccQEmWHmDW23vPqk3v56wt4jbqmOI9djUXHktvBqx+0k/9uoJVQIHMgBJLYZnoetmodmPgFfmjhNQewz0M0EI3rUz4IlRKb0IpmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SB/2UXRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SB/2UXRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8352C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780276473;
	bh=U1rdDDqSdr9A7UtsM0DHIWk/tUoQJhIw+Med6IQZ1+o=;
	h=To:Subject:From:Date:From;
	b=SB/2UXRpODQC6tggnQtX3NR+2t2JnJuTVh1YeCjaReoaERPiU2qwDyUAQdySHTeaN
	 87nJQcrg9rXEJa7tQsBx5162CVt1jaYMb/zKijR9NrlaVuKO63dZex2jZH+QuRdyw6
	 2O6/sE//b/6S4cA1pf55Ba5soR7jj3q+BrWBfmjQrOdVqBjid+kBU2tcAZhsgyKro4
	 Xak5IyUyPh4bGD41IgqMeYm3DKbDQx+ZH0wQ8ESpCcpCW0y3sI1y5q6eNPE6saoAoy
	 yqf7vc2bQVnUhhUBrOo+s1KxXZ6DxOyOqbj0fYzAu+MIHSz2PjSRogasbrnr1+wtg2
	 47NIcF9knc1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B731DCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027647370.4747.1999200801628472302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b06707e8b6aa181295fd1da966d577ae8d77c4695ab3acde4370818028db4e0
Date: Mon, 01 Jun 2026 01:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780276473
