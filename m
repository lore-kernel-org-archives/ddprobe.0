Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA0B4431
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741753134; cv=none; b=cY7R+v177HvBVnQ2FcAuG07v6BwavMfwWrc9k8qXw5R/fun650SKvJEnESN/qBRLFi6zWTqTOyIgQIYOyzmtI5D/bXDNPNwJ6pDpBnhH0U1VI1Hmd/VO7+7DwwetYAx86Xa6CvYwYtg4oMdGWFihRfZhQPlFPoTYRNuRC+dtEBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741753134; c=relaxed/simple;
	bh=DZv+qnkMjVQQqEpYrTO8V8vDFkFqWVG6p+ltSFdu3U8=;
	h=To:Subject:From:Message-Id:Date; b=XLLAUyeVyqpuoxvCQ15+onZJIVebJorZS789/mxzD7YqZia+dPD2fd4pcva8V+pz0Scc1lWgiwC8sI5apRz6CbQt4c5QDRnpZMjZyRwelUv7G4JOM6hEUqlGxCdgl5cM1gWw1vWIxcK84qOr1PvmhqH/JLduqSpGerIt4K7ZtU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH9/v7IK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH9/v7IK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB56C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741753133;
	bh=DZv+qnkMjVQQqEpYrTO8V8vDFkFqWVG6p+ltSFdu3U8=;
	h=To:Subject:From:Date:From;
	b=tH9/v7IKl5IA0CUPT1Dju6nu+L54f0+BB/NakmKgLnZQSL+7B9mxxkxA4ROUl3kBd
	 q59woVNcdj14XlZxvhD4TpI0yftrCahbbL73bWNrY8/io6Q8hNTaw7ZRjcNQB+uIUy
	 2/pUB8tQXNKpMx5bj5xCvfXbN+33rscMjWF8YU0LdvA+p1mXQxxjpLDT3E9kfD9bjo
	 a/uiPriXjXmI4NueTjAyfpLbunioH+Q5/SApfsjP7rVGJfmXtvXlyqNlJiLFWO7AWq
	 cAOC9BQKJWzDyp8zR9b4E2vcm8HtzLM1dfa1QUvmDwj0DUC/ws+iMXsqGnbRzaEYOP
	 NUjwxCuy64Vjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8AC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175313360.30355.6617693039286699446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d5f24ccc685457e178c5091f2200660856749be8a631e18a06ea5af2b3fcb4
Date: Wed, 12 Mar 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741753133
