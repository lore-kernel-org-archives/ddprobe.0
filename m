Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2481B85DD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726374354; cv=none; b=gml8faItqBmN5wwsUbiTkHvyX363GRAgEk62Up4VgTX9rENziUpeDpvEHw7Uvt/hgadsOFG925ysN1gyn8aChwaEkBT0NV/aEVZKi3d4mG04AxSRWfacyqIFXdbrayKp22Vb/6yYKPLVwz8MJI72/xb8fr+bwwFw+ugodKta32I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726374354; c=relaxed/simple;
	bh=UCza3ttoFrkpvFdtPAKRbhIjfVcYQjFkSuvFOuI28WE=;
	h=To:Subject:From:Message-Id:Date; b=DCEzDywug5tKEDSIbCcg92J1msBhXRR1jD35BmiqEm/N+BkGEfIAoG0dwcd4Q34LejNv+rVOm8PyPnZC834vQrdZGvVO7n3Lt47Z0jmtze9NuQ377aErUpmkJ8JTiKWmB0NisUBwGrS8JxMf0D+gGF5A4J94Esuem48Rm848aU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trsIMrnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trsIMrnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1C0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726374353;
	bh=UCza3ttoFrkpvFdtPAKRbhIjfVcYQjFkSuvFOuI28WE=;
	h=To:Subject:From:Date:From;
	b=trsIMrnmpSKUpCUUcDSU6qLAev0upTDTDMm2dvisbC6D84HgOrO7+Mzt8pZ8RbQyy
	 yh4hKoDwW/qepduoUwEfGYk4Viz7GFCOEfFd1E/SqhYD7ubYbHB6O4wGUF16gwcukG
	 fsS2g2t8SIh6Da//8c5fM/9qu/GhHozAIXi+Lr81gdEk0UNiMtllXDsoiFAQmE0iiy
	 ZHxSZ9LQ5PFiL5u9gvZ+rjwpy72HYclZTB9Wn+5+syDC7dqCEjASvW3O0Yz5+oZPOz
	 FFUh4B1UG9pR6XMDq9id7tM2IFWzr/0D6q6UH2mFH6THoakGxLbKLkg2rmezlWuW2l
	 P8mqT9BWpwAng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31B0C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172637435361.7798.12769522113329908677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7111d0da27b4220b16e37cdf345f0e2faaee9b4d384366b7aa91c75615ec9928
Date: Sun, 15 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726374353
