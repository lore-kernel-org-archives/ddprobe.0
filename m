Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D34154C17
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747321194; cv=none; b=gscitqCzdQSWk2aDrL+tK4kpA5J9X6f4nJ6+YJlzq7+Ib1ZmfIZs2CroiTvsCh8B3Yo03YqiUCRliErNLkn3LPoQSmtvXcLQ1BpGIj9Y4Yex9MrMRBEPPBPoXnvtes1bHxP+jo9C70o20TdqJtohgZGicKnhETrHFxnhxRZTkFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747321194; c=relaxed/simple;
	bh=InIlx5v1VUzQGjBelEIGNAmKMV93hwaCIFWanNXSzic=;
	h=To:Subject:From:Message-Id:Date; b=TZ5emj6RGhrpmpMxJilJi2pdy7fbBpYqFpnsiatcz3KZIMG9VM0CbRdM93lZZuGXHpuppFSAH3Gy7LScH3TCXON8Z1Th7rReVgCffUDeaio4pduOyabtvQLdHNlfIshaL8xUCgvLuSxkTTWVpeLsIzzPmlD4KHu9k8OIfKKVpuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoL0uobX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoL0uobX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747321193;
	bh=InIlx5v1VUzQGjBelEIGNAmKMV93hwaCIFWanNXSzic=;
	h=To:Subject:From:Date:From;
	b=IoL0uobX6xybKpmB0cNUwYm13j83+s07BZxSW9o3zcXOLVnY7vUDTkhJRQvmlEwdC
	 dwqP/Dq1bWIt56mBP50iXUxgTKwKeuYfy/yHj6waEHh+3tBMnCEw3A+u/6yw08DC+Q
	 m0/Z/eQW6T8wujm9HFQ0Ro1QU0USkdXrgT2ur6RP3He/W1gq6h7oLs+V354C4iYlvE
	 wkB3Gp3j36UkBZh0V6sowR+k2txszUlPqC7YPddGy1NaIqyvZta9Ey2Re2z4Rvyqzf
	 uUEW7r88VEefU4spbY0XcOsGmzUgfj3Hiouvr+EYTCE4jzQ5//CDxphkcBBfjX6YD4
	 7eht3qAABNrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F13C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732119358.3113.7207161950093852596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedb198f4c4111a5c75f1a6ab64d7d5f6b95f8f1b94cdd3501aa08a3a173345a
Date: Thu, 15 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747321193
