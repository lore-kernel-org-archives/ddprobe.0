Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA033F8B7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780347874; cv=none; b=CFfRkKouJLGxDTVWHbSrsB1IAwCPN58cAH12QvwreLMkPGHwyXES2LxGhHqFQfOiTH+oxb46tXMNoM5uHD9Y/Rpjuu9iuWFc7j7Ycqr0Bd6ZPN94ERkBqdRhia3pl8uwCFbpHXCQrX9gyZIyC9PIUpHaQyf2yntjoYsEgle9BMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780347874; c=relaxed/simple;
	bh=I88yNXYR+MvfoXW8ThcbwwUaIfy7ABxprbZm4iJxitY=;
	h=To:Subject:From:Message-Id:Date; b=NjpYCO7e7mA6kOoy62/IpAcQcWnwIkMHVxGtv+dU7szXSVwiDpBYUPVerfQuS/90YaR8khrk6S35SyRFIJe8D9GCrKifweJvliW551IzFYY69Ke4/kkAES+iCxZwt+gKYJppeke1RzrESqBMlQsWEK9qyibHd13h+aSE/TtBxgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEMzPfKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEMzPfKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60C0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780347873;
	bh=I88yNXYR+MvfoXW8ThcbwwUaIfy7ABxprbZm4iJxitY=;
	h=To:Subject:From:Date:From;
	b=LEMzPfKFnV51yN0GhwTypRv/6+poLBCylo1UpbAJICxEzUG86QX+L1y/h9apLwGGv
	 z81L8O/2kMGoysWjlQeQnWDGZ+EEkgVfkU3n+Ts/i4DOYvJF6ZPuA3w5cAP6TcoOk6
	 lWvmUiU4bzg1vX5Of+p3Y/KVi74Z768h/P2jRFCLZgYgTEPUzo2i/V745E4FmIF5N2
	 PXvWeA65qPJCkgxjqIKkYiwRpwfwXmKqVLtvPyu89b+uIEgiI/Akk0MWVXyuav39Dy
	 /lqvcQNUWe0TUfqagQxiysaNPdsrBpoRwr9fb8f3Ja/q1XztApXmmwpB91XYbaEJXd
	 6ORR/cljqOBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD61CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034787369.9213.6263994643714130624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e0fd1316d1fc506960834c4d6113e6f41b1363101c1bdf4bcb71999eae667a
Date: Mon, 01 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780347873
