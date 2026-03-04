Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86D2770A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772640894; cv=none; b=EoMCBoOW+bysRg3Ucx25lXzB5m9RlddvzgLZhDGaBCpylKF27hcJQezziT3mk72B80VlmXWiXr33DQL0gkYgXShMMW/l3qhdpKcGduFMCs9LuvHmgIxa89tSqK/jdFXLZxyQ19E4nnTo4xThdGZrZlLuZmSNzLHkNTjLqzAb/3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772640894; c=relaxed/simple;
	bh=M58yoE/+APIq7ax/QM7iFZTS8OTkqTd9C1UFZDeoSdA=;
	h=To:Subject:From:Message-Id:Date; b=FPS6me/WC0or2qkSXAZZAvyB3hFB5Qyg3bj1zuQfZ4thrm1AX0GbFLog7NrlESvUZiLnQlLwbT0oiSaoNBRZmbnRabMO2dXNcJuU+nSjZkSEciUOhgCSomlXORp8xkzQFN1rVJfooxAr0ENVa6MU6cfoUpIZDWtpcQR/X33Bpao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsgOwfd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsgOwfd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE64C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772640893;
	bh=M58yoE/+APIq7ax/QM7iFZTS8OTkqTd9C1UFZDeoSdA=;
	h=To:Subject:From:Date:From;
	b=OsgOwfd5uiTz2hlfxpUWbDRQY4ldOHFj3DfmEoDBxxkh5Nl2FBEl8DM6N7vmo2ppS
	 eX5GQ1XMKYBTvRiXd5LxnjVv0Kt6mQxL9bwKi32/1eem9/TrwZFXvyJRuryTtuftqX
	 4PuNJeeACE0ES1b//qxsJZu4evNGczt+ojCNuN4EBQFDRRQi91fH4gCHKZh0L1HDZC
	 WUYYBQQ9zq6X/s+qR1QbY5+PhUP4Qm06HSLJ5GksyRl0A2PK3MwtAjPv5Ze9gG33jp
	 5T61h3bzEtES/aNDof5WaafAa1mnowQscxi/kxDrVyfCXukCVsBYKFOwJ81jzUWgo3
	 m4TO6XM8tuTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6145EF9002
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264089366.29453.18315874780753930688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c33944cf1bc40dd2d6efcfbc631992eb5a5ee035e332b7a8164d600d443dd3
Date: Wed, 04 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772640893
